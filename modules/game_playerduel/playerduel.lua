-- Criado por Thalles Vitor --
local playerduel = g_ui.displayUI("playerduel")
local ok = playerduel:getChildById("ok")
local cancelar = playerduel:getChildById("cancelar")

local globalPokeballs = 0

function init()
  playerduel:hide()
end

function terminate()
  playerduel:hide()
end

function acceptDuel(playerRequested, playerAccepted)
  if g_game.isOnline() then
    g_game.getProtocolGame():sendExtendedOpcode(147, playerRequested:getId().."@"..playerAccepted:getId().."@"..globalPokeballs.."@")
  end
  return true
end

function startDuelWithPlayer(playerRequested, playerAccepted)
  if g_game.isOnline() then
     g_game.getProtocolGame():sendExtendedOpcode(146, playerRequested.."@"..playerAccepted.."@"..globalPokeballs.."@")
     playerduel:hide()
  end
  return true
end

function startDuel(playerRequested, playerAccepted)
  playerduel:show()

  ok.onClick = function() startDuelWithPlayer(playerRequested:getId(), playerAccepted:getId()) end
  cancelar.onClick = function() denyDuel(playerRequested:getId(), playerAccepted:getId()) end
end

function denyDuel(playerRequested, playerAccepted)
  playerduel:hide()

  -- Voltar para configs iniciais
  selectPokeball(1)
end

function selectPokeball(count)
  -- Limpar quantidade
  for i = 1, 6 do
    playerduel:getChildById("pokeball"..i):setImageSource("images/pokeball_off.png")
  end

  globalPokeballs = count
  print(globalPokeballs)
  playerduel:getChildById("pokeball"..count):setImageSource("images/pokeball_on.png")
end