function init()
  connect(g_game, { onGameStart = enableHotkey,
                    onGameEnd = disableHotkey })

  pokedexButton = modules.client_topmenu.addRightGameButton('pokedexButton', tr('Pokedex') .. ' (Ctrl+D)', '/images/topbuttons/pokedex', togglePokedex)
  pokedexButton:setWidth(34)
end

function terminate()
  disconnect(g_game, { onGameStart = enableHotkey,
                       onGameEnd = disableHotkey })

  pokedexButton:destroy()
end

function enableHotkey()
  local player = g_game.getLocalPlayer()
  if not player or player:getName() == 'Account Manager' then
    pokedexButton:hide()
  else
    pokedexButton:show()
  end
  g_keyboard.bindKeyDown('Ctrl+D', togglePokedex)
end

function disableHotkey()
  g_keyboard.unbindKeyDown('Ctrl+D')
  g_keyboard.unbindKeyDown('Ctrl+Z')
end

function startChooseItem(releaseCallback)
  if g_ui.isMouseGrabbed() then return end
  if not releaseCallback then
    error("No mouse release callback parameter set.")
  end
  local mouseGrabberWidget = g_ui.createWidget('UIWidget')
  mouseGrabberWidget:setVisible(false)
  mouseGrabberWidget:setFocusable(false)

  connect(mouseGrabberWidget, { onMouseRelease = releaseCallback })
  
  mouseGrabberWidget:grabMouse()
  g_mouse.pushCursor('target')
end

function onClickWithMouse(self, mousePosition, mouseButton)
  local item = nil
  if mouseButton == MouseLeftButton then
    local clickedWidget = modules.game_interface.getRootPanel():recursiveGetChildByPos(mousePosition, false)
    if clickedWidget then
      if clickedWidget:getClassName() == 'UIMap' then
        local tile = clickedWidget:getTile(mousePosition)
        if tile then
          if currentSlot == 1 then
            item = tile:getGround()
          else
            local thing = tile:getTopMoveThing()
            if thing and thing:isItem() then
              item = thing
            else
              item = tile:getTopCreature()
            end
          end
        end
      elseif clickedWidget:getClassName() == 'UICreatureButton' then
        item = clickedWidget:getCreature()
      end
    end
  end

  if item then
    local player = g_game.getLocalPlayer()
    g_game.useInventoryItemWith(player:getInventoryItem(currentSlot):getId(), item)
  end

  g_mouse.popCursor('target')
  self:ungrabMouse()
  return true
end

function togglePokedex()
  currentSlot = 6
  startChooseItem(onClickWithMouse)
end

