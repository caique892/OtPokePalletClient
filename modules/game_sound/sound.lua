-- Criado por Thalles Vitor --
-- Sistema de Som --
local SOUND_OPCODE = 114 -- opcode de som

function init()
  connect(g_game, { 
    onGameEnd = onGameEnd 
  })

  ProtocolGame.registerExtendedOpcode(SOUND_OPCODE, function(protocol, opcode, buffer) onExecuteGameSound(buffer) end)
end

function terminate()
  disconnect(g_game, { 
    onGameEnd = onGameEnd
  })

  ProtocolGame.unregisterExtendedOpcode(SOUND_OPCODE)
end

function onGameEnd()
end

function onExecuteGameSound(buffer)
  local param = buffer:split("@")
  local dir_sound = tostring(param[1])
  local sound_name = tostring(param[2])

  -- Se audio estiver desativado --
  if not g_sounds.isAudioEnabled() then
    return true
  end

  g_sounds.play(dir_sound .. sound_name)
end