-- Criado por Thalles Vitor --
-- Sistema de Passe --

-- Informacoes do Cliente
  local passReceiveInfos_OPCODE = 216 -- opcode do pass (receber informacoes)
  local passSendCollect_OPCODE = 218 -- opcode do pass (enviar recolhimento de recompensa)
  local passBuyLevel_OPCODE = 219 -- opcode do pass (enviar comprar de level)
  local passBuyPass_OPCODE = 220 -- opcode do pass (enviar a compra de pass)
  local passSendPass_PLAYER = 221 -- opcode do pass (enviar passe de presente)
---

-- Informacoes do Servidor
  local passReceive_OPCODE = 230 -- receber o passe no cliente
  local passCollect_OPCODE = 231 -- receber o resgate de recompensa no cliente
  local passDestroyInfo_OPCODE = 241 -- receber a destruicao de infos antigas
--

local pass = g_ui.displayUI("playerpass")
local passRanking = pass:getChildById("passRanking")
local list_items = pass:getChildById("list_items")
local collectBtn = pass:getChildById("collectBtn")
local passTime = pass:getChildById("passTime")
local level = pass:getChildById("level")
local exp = pass:getChildById("exp")
local passBtn = nil

-- Others
local buyPassLevelWindow = nil

function init()
  connect(g_game, {
    onGameStart = naoexibir,
    onGameEnd = naoexibir,
  })

  passBtn = modules.client_topmenu.addRightGameToggleButton('passeDeBatalha', tr('Passe de Batalha'), 'images/home/icons/other_icons/pass', exibir)
  passBtn:setWidth(32)
  passBtn:setOn(false)

  pass:hide()
end

function terminate()
  disconnect(g_game, {
    onGameStart = naoexibir,
    onGameEnd = naoexibir,
  })

  if buyPassLevelWindow then
    buyPassLevelWindow:destroy()
    buyPassLevelWindow=nil
  end

  -- Unregister
  ProtocolGame.unregisterExtendedOpcode(passReceive_OPCODE)
  ProtocolGame.unregisterExtendedOpcode(passCollect_OPCODE)
  ProtocolGame.unregisterExtendedOpcode(passDestroyInfo_OPCODE)

  passBtn:setOn(false)
  pass:hide()
end

function exibir()
  if not g_game.isOnline() then
    return
  end

  if passBtn:isOn() then
    passBtn:setOn(false)
    pass:hide()

    modules.game_playerpassmissions.naoexibir()
  else
    -- Send the opcode to receive the pass infos
    g_game.getProtocolGame():sendExtendedOpcode(passReceiveInfos_OPCODE)

    modules.game_playerpassmissions.naoexibir()
  end
end

function naoexibir()
  if buyPassLevelWindow then
    buyPassLevelWindow:destroy()
    buyPassLevelWindow=nil
  end

  pass:hide()
  passBtn:setOn(false)
end

ProtocolGame.registerExtendedOpcode(passReceive_OPCODE, function(protocol, opcode, buffer) -- receive pass
  local param = buffer:split("@")
  local items_id = tonumber(param[1])
  local count = tonumber(param[2])
  local tempoString = tostring(param[3])
  local resgatado = tostring(param[4])
  local points = tonumber(param[5])
  local levell = tonumber(param[6])
  local passType = tostring(param[7])

  pass:show()
  passBtn:setOn(true)
  
  level:setText(levell)
  level:setTooltip("Seu nível de passe é: " .. levell .. ".")

  exp:setPercent(points)
  exp:setText(points .. "%")
  exp:setTooltip("Sua porcentagem do nível de passe é: " .. points .. "%")

  local item_list = g_ui.createWidget("Item", list_items)
  item_list:setSize("62 62")
  item_list:setImageSource("images/home/slot.png")
  item_list:setTooltip(tostring(count))
  item_list:setItemCount(count)
  item_list:setItemId(items_id)
  item_list:setMarginLeft(5)
  item_list:setMarginTop(15)

  passTime:setText(tempoString)
  if resgatado == "unlocked" then
    item_list:setIcon("images/home/collected.png")
  else
    item_list:setIcon("")
  end

  if passType == "Basic" then
    passRanking:setImageSource("images/home/pass_basic")
  else
    passRanking:setImageSource("images/home/pass_elite")
  end
end)

ProtocolGame.registerExtendedOpcode(passCollect_OPCODE, function(protocol, opcode, buffer)
  local param = buffer:split("@")
  local tipo = tostring(param[1])

  if tipo == "collect" then
    collectBtn:show()
    collectBtn.onClick = function() g_game.getProtocolGame():sendExtendedOpcode(passSendCollect_OPCODE) end
  else
    collectBtn:hide()
    collectBtn.onClick = function() end
  end
end)

ProtocolGame.registerExtendedOpcode(passDestroyInfo_OPCODE, function(protocol, opcode, buffer)
  local param = buffer:split("@")
  local tipo = tostring(param[1])

  if tipo == "rewards" then
    list_items:destroyChildren()
  end

  if tipo == "monsters" then
    modules.game_playerpassmissions.destroyPanels()
  end

  if tipo == "hideAll" then
    pass:hide()
    modules.game_playerpassmissions.naoexibir()
  end
end)

function buyPassLevel()
  if not g_game.isOnline() then
    return
  end

  if buyPassLevelWindow then
    return
  end

  local msg, yesCallback
  yesCallback = function() 
    g_game.getProtocolGame():sendExtendedOpcode(passBuyLevel_OPCODE)
    if buyPassLevelWindow then
      buyPassLevelWindow:destroy()
      buyPassLevelWindow=nil
    end
  end

  local noCallback = function()
    buyPassLevelWindow:destroy()
    buyPassLevelWindow=nil
  end

  local prompt = true
  if prompt then
    buyPassLevelWindow = displayGeneralBox(tr('Comprar Nível de Passe'), tr("Você tem certeza que deseja comprar 1 nível de passe?"), {
      { text=tr('Yes'), callback=yesCallback },
      { text=tr('No'), callback=noCallback },
      anchor=AnchorHorizontalCenter}, yesCallback, noCallback)
  end
end

function buyPassElite()
  if not g_game.isOnline() then
    return
  end

  if buyPassLevelWindow then
    return
  end

  local msg, yesCallback
  yesCallback = function() 
    g_game.getProtocolGame():sendExtendedOpcode(passBuyPass_OPCODE)
    if buyPassLevelWindow then
      buyPassLevelWindow:destroy()
      buyPassLevelWindow=nil
    end
  end

  local noCallback = function()
    buyPassLevelWindow:destroy()
    buyPassLevelWindow=nil
  end

  local prompt = true
  if prompt then
    buyPassLevelWindow = displayGeneralBox(tr('Comprar Passe'), tr("Você tem certeza que deseja comprar o passe de elite por 35 diamonds?"), {
      { text=tr('Yes'), callback=yesCallback },
      { text=tr('No'), callback=noCallback },
      anchor=AnchorHorizontalCenter}, yesCallback, noCallback)
  end
end

function sendPresent()
  if not g_game.isOnline() then
    return
  end

  if buyPassLevelWindow then
    return
  end

  naoexibir()

  buyPassLevelWindow = g_ui.createWidget("MainWindow", modules.game_interface.getRootPanel())
  buyPassLevelWindow:setSize("336 278")
  buyPassLevelWindow:setImageSource("images/home/sendpass/background.png")

  playerName = g_ui.createWidget("TextEdit", buyPassLevelWindow)
  playerName:setSize("212 25")
  playerName:setImageSource("")
  playerName:setColor("white")
  playerName:addAnchor(AnchorTop, "parent", AnchorTop)
  playerName:addAnchor(AnchorLeft, "parent", AnchorLeft)
  playerName:setMarginTop(120)
  playerName:setMarginLeft(62)

  button_enviar = g_ui.createWidget("UIButton", buyPassLevelWindow)
  button_enviar:setSize("99 24")
  button_enviar:setImageSource("images/home/sendpass/enviar.png")
  button_enviar:addAnchor(AnchorTop, "parent", AnchorTop)
  button_enviar:addAnchor(AnchorLeft, "parent", AnchorLeft)
  button_enviar:setMarginTop(203)
  button_enviar:setMarginLeft(50)
  button_enviar:setOpacity(0.60)
  button_enviar.onHoverChange = function(self, hovered)
    if hovered then
      button_enviar:setOpacity(100)
    else
      button_enviar:setOpacity(0.60)
    end
  end

  button_enviar.onClick = function()
    if buyPassLevelWindow then
      buyPassLevelWindow:destroy()
      buyPassLevelWindow = nil

      exibir()
    end

    g_game.getProtocolGame():sendExtendedOpcode(passSendPass_PLAYER, playerName:getText().."@")
  end

  button_cancelar = g_ui.createWidget("UIButton", buyPassLevelWindow)
  button_cancelar:setSize("99 24")
  button_cancelar:setImageSource("images/home/sendpass/cancelar.png")
  button_cancelar:addAnchor(AnchorTop, "parent", AnchorTop)
  button_cancelar:addAnchor(AnchorLeft, "parent", AnchorLeft)
  button_cancelar:setMarginTop(203)
  button_cancelar:setMarginLeft(150)
  button_cancelar:setOpacity(0.60)
  button_cancelar.onHoverChange = function(self, hovered)
    if hovered then
      button_cancelar:setOpacity(100)
    else
      button_cancelar:setOpacity(0.60)
    end
  end

  button_cancelar.onClick = function()
    if buyPassLevelWindow then
      buyPassLevelWindow:destroy()
      buyPassLevelWindow = nil

      exibir()
    end
  end
end