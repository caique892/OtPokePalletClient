local colors = {
[1] = "#59B200",
[2] = "#00CCFF",
[3] = "#FF0000",
[4] = "#F5B325",
[5] = "#00FF00"
}

HOTKEY_MANAGER_NOUSE = nil
HOTKEY_MANAGER_USEONSELF = 1
HOTKEY_MANAGER_USEINMYPOKEMON = 2
HOTKEY_MANAGER_USEWITH = 3
HOTKEY_MANAGER_MOVETOHAND = 4
HOTKEY_MANAGER_ONLYUSE = 5

InventorySlotStyles = {
}

function init()
  bottomPanel = g_ui.loadUI('pokemon', modules.game_interface.getRootPanel())
  playerWindow = bottomPanel:recursiveGetChildById('playerWindow')
  
  ProtocolGame.registerExtendedOpcode(71, function(protocol, opcode, buffer) onClanChange(protocol, opcode, buffer) end)
  ProtocolGame.registerExtendedOpcode(72, function(protocol, opcode, buffer) onSexChange(protocol, opcode, buffer) end)

  refresh()
end

function onClanChange(protocol, opcode, buffer)
  playerWindow:getChildById('clan'):setImageSource('/images/game/pokemon/clan/'..buffer)
end


function startChoosePos()
end

function onClickWithMouse(self, mousePosition, mouseButton)
end

function onSexChange(protocol, opcode, buffer)
  if tonumber(buffer) == 0 then 
	buffer = "female" 
  elseif tonumber(buffer) == 1 then 
    buffer = "male" 
  end
  playerWindow:getChildById('portrait'):setImageSource('/images/game/card/'..buffer)
end

function terminate()
  disconnect(LocalPlayer, { onHealthChange = onHealthChange,
                            onInventoryChange = onInventoryChange,
                            onLevelChange = onLevelChange,
                            })

  disconnect(g_game, { onGameStart = refresh,
                       onGameEnd = hide })
  save()
  bottomPanel:destroy()
end

function refresh()
end

function hide()
end

function expForLevel(level)
end

function expToAdvance(currentLevel, currentExp)
end

function useSlotItem(slot, slot2)
end

function save()
end

function load()
end

function onSlotItemMouseRelease(self, mousePosition, mouseButton)
end

function moveItemToSlot(slotItem, SlotGo)
end

function onLevelChange(localPlayer, value, percent)
end

function safeUseInventoryItemWith(itemId)
end

function useSlotWith(slot)  
end

function onInventoryChange(player, slot, item, oldItem)
end

function onHealthChange(localPlayer, health, maxHealth)
end

function getPokemon()
end

function getPlayerWindow()
end

function getbuttonsWindow()
end