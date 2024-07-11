-- Criado por Thalles Vitor --
-- Sistema de Som --
local outfitbuttons = g_ui.displayUI("outfitbuttons")
local button_attack = outfitbuttons:getChildById("button_attack")
local button_buffs = outfitbuttons:getChildById("button_buffs")

-- Opcodes
local OUTFIT_BUTTONS_OPCODE = 99 -- opcode dos botoes

function init()
  connect(g_game, { 
    onGameEnd = onGameEnd 
  })

  outfitbuttons:hide()
  ProtocolGame.registerExtendedOpcode(OUTFIT_BUTTONS_OPCODE, function(protocol, opcode, buffer) onShowButtons(buffer) end)
end

function terminate()
  disconnect(g_game, { 
    onGameEnd = onGameEnd
  })

  outfitbuttons:hide()
  ProtocolGame.unregisterExtendedOpcode(OUTFIT_BUTTONS_OPCODE)
end

function onGameEnd()
  outfitbuttons:hide()
end

function onShowButtons(buffer)
  local param = buffer:split("@")
  local type = tostring(param[1])
  local buffList = tostring(param[2])
  if type == "Open" then
    outfitbuttons:show()

    -- Botoes
    button_attack.onClick = function()
      g_game.getProtocolGame():sendExtendedOpcode(88)
    end

    button_attack:setTooltip("Clique para ativar/desativar as magias automaticas.")
    button_buffs:setTooltip("Você possui os seguintes buffs no pokémon: \n" ..buffList)
  end

  if type == "Close" then
    outfitbuttons:hide()
  end
end