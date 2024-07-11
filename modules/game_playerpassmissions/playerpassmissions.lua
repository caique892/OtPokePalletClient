-- Criado por Thalles Vitor --
-- Sistema de Missoes do Passe --

local pass = g_ui.displayUI("playerpassmissions")
local monsters = pass:getChildById("monsters")

-- Informacoes do Cliente
local passMonsters_OPCODE = 217 -- opcode para enviar para o servidor que ele tem que enviar os monstros de volta

-- Informacoes do Servidor
local passMonstersReceive_OPCODE = 240 -- opcode que o cliente vai receber para mostrar os monstros

function init()
  connect(g_game, {
    onGameStart = naoexibir,
    onGameEnd = naoexibir,
  })

  pass:hide()
end

function terminate()
  disconnect(g_game, {
    onGameStart = naoexibir,
    onGameEnd = naoexibir,
  })

  -- Unregister
  ProtocolGame.unregisterExtendedOpcode(passMonstersReceive_OPCODE)

  pass:hide()
end

function exibir()
  if not g_game.isOnline() then
    return
  end

  if pass:isVisible() then
    modules.game_playerpass.exibir()
    pass:hide()
  else
    modules.game_playerpass.naoexibir()
    pass:show()

    -- Show monsters of server here client
    g_game.getProtocolGame():sendExtendedOpcode(passMonsters_OPCODE)
  end
end

function naoexibir()
  pass:hide()
end

ProtocolGame.registerExtendedOpcode(passMonstersReceive_OPCODE, function(protocol, opcode, buffer) -- receive monsters pass
  local param = buffer:split("@")
  local monster_name = tostring(param[1])
  local monster_count = tonumber(param[2])
  local monster_fainted = tonumber(param[3])
  local status = tostring(param[4])
  local img = tostring(param[5])
  local description = tostring(param[6])
  local points_gain = tonumber(param[7])

  local monster = g_ui.createWidget("UIButton", monsters)
  monster:setSize("135 136")
  monster:setImageSource("images/background.png")

  local text = g_ui.createWidget("Label", monster)
  text:setFont("terminus-10px")
  text:setText(description)
  text:addAnchor(AnchorTop, "parent", AnchorTop)
  text:addAnchor(AnchorLeft, "parent", AnchorLeft)
  text:setMarginLeft(5)
  text:setMarginTop(2)

  local monster_img = g_ui.createWidget("UIButton", monster)
  monster_img:setImageSource(img)
  monster_img:addAnchor(AnchorTop, "parent", AnchorTop)
  monster_img:addAnchor(AnchorLeft, "parent", AnchorLeft)
  monster_img:setMarginLeft(-15)
  monster_img:setMarginTop(18)

  local counts = g_ui.createWidget("Label", monster)
  counts:setFont("terminus-10px")
  counts:setText(monster_fainted .. " de " .. monster_count)
  counts:addAnchor(AnchorTop, "parent", AnchorTop)
  counts:addAnchor(AnchorLeft, "parent", AnchorLeft)
  counts:setMarginLeft(45)
  counts:setMarginTop(114)

  local symbol = g_ui.createWidget("UIButton", monster)
  symbol:setSize("21 21")

  if status == "done" then
    symbol:setImageSource("images/complet.png")
  else
    symbol:setImageSource("images/loading.png")
  end

  symbol:addAnchor(AnchorTop, "parent", AnchorTop)
  symbol:addAnchor(AnchorLeft, "parent", AnchorLeft)
  symbol:setMarginLeft(107)
  symbol:setMarginTop(84)

  local points_icon = g_ui.createWidget("UIButton", monster)
  points_icon:setImageSource("images/xp_icon.png")
  points_icon:setSize("21 17")
  points_icon:addAnchor(AnchorTop, "parent", AnchorTop)
  points_icon:addAnchor(AnchorLeft, "parent", AnchorLeft)
  points_icon:setMarginLeft(4)
  points_icon:setMarginTop(87)

  local points_text = g_ui.createWidget("Label", monster)
  points_text:setFont("terminus-10px")
  points_text:setText(tostring(points_gain))
  points_text:addAnchor(AnchorTop, "parent", AnchorTop)
  points_text:addAnchor(AnchorLeft, "parent", AnchorLeft)
  points_text:setMarginLeft(27)
  points_text:setMarginTop(90)
end)

function destroyPanels()
  monsters:destroyChildren()
end