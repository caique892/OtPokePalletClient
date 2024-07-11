SOUNDS_CONFIG = {
	soundChannel = SoundChannels.Music,
	checkInterval = 500,
	folder = 'music/',
	noSound = 'No sound file for this area.',
}

SOUNDS = {
	-- Lavender town
	{fromPos = {x=1191, y=1039, z=7}, toPos = {x=1244, y=1079, z=7}, sound = "lavender.ogg"},
	{fromPos = {x=1197, y=1056, z=6}, toPos = {x=1212, y=1066, z=6}, sound = "lavender.ogg"},
	{fromPos = {x=1197, y=1056, z=5}, toPos = {x=1212, y=1066, z=5}, sound = "lavender.ogg"},
	{fromPos = {x=1197, y=1056, z=4}, toPos = {x=1212, y=1066, z=4}, sound = "lavender.ogg"},
	{fromPos = {x=1197, y=1056, z=3}, toPos = {x=1212, y=1066, z=3}, sound = "lavender.ogg"},
	{fromPos = {x=1197, y=1056, z=2}, toPos = {x=1212, y=1066, z=2}, sound = "lavender.ogg"},
	{fromPos = {x=1197, y=1056, z=1}, toPos = {x=1212, y=1066, z=1}, sound = "lavender.ogg"},
	-- Cerulean
	{fromPos = {x=1008, y=888, z=7}, toPos = {x=1054, y=940, z=7}, priority = 2, sound="cidade 1.ogg"},
	{fromPos = {x=1116, y=818, z=7}, toPos = {x=1101, y=807, z=7}, sound="cidade 1.ogg"},
	
	-- Saffron pokecenter first
	{fromPos = {x=1038, y=1041, z=7}, toPos = {x=1062, y=1053, z=7}, priority = 2, sound="center.ogg"},
	{fromPos = {x=1036, y=1042, z=7}, toPos = {x=1036, y=1046, z=7}, priority = 2, sound="center.ogg"},
	{fromPos = {x=1038, y=1041, z=6}, toPos = {x=1062, y=1053, z=6}, priority = 2, sound="center.ogg"},
	{fromPos = {x=1057, y=1016, z=7}, toPos = {x=1109, y=1040, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1063, y=1040, z=7}, toPos = {x=1099, y=1057, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1099, y=1040, z=7}, toPos = {x=1111, y=1052, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1010, y=1030, z=7}, toPos = {x=1035, y=1041, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1025, z=7}, toPos = {x=1074, y=1039, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1006, y=1037, z=7}, toPos = {x=1035, y=1098, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1048, z=7}, toPos = {x=1037, y=1098, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1038, y=1054, z=7}, toPos = {x=1077, y=1110, z=7}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1057, y=1016, z=6}, toPos = {x=1109, y=1040, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1063, y=1040, z=6}, toPos = {x=1099, y=1057, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1099, y=1040, z=6}, toPos = {x=1111, y=1052, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1010, y=1030, z=6}, toPos = {x=1035, y=1041, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1025, z=6}, toPos = {x=1074, y=1039, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1006, y=1037, z=6}, toPos = {x=1035, y=1098, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1048, z=6}, toPos = {x=1037, y=1098, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1038, y=1054, z=6}, toPos = {x=1077, y=1110, z=6}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1057, y=1016, z=5}, toPos = {x=1109, y=1040, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1063, y=1040, z=5}, toPos = {x=1099, y=1057, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1099, y=1040, z=5}, toPos = {x=1111, y=1052, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1010, y=1030, z=5}, toPos = {x=1035, y=1041, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1025, z=5}, toPos = {x=1074, y=1039, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1006, y=1037, z=5}, toPos = {x=1035, y=1098, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1048, z=5}, toPos = {x=1037, y=1098, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1038, y=1054, z=5}, toPos = {x=1077, y=1110, z=5}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1057, y=1016, z=4}, toPos = {x=1109, y=1040, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1063, y=1040, z=4}, toPos = {x=1099, y=1057, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1099, y=1040, z=4}, toPos = {x=1111, y=1052, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1010, y=1030, z=4}, toPos = {x=1035, y=1041, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1025, z=4}, toPos = {x=1074, y=1039, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1006, y=1037, z=4}, toPos = {x=1035, y=1098, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1035, y=1048, z=4}, toPos = {x=1037, y=1098, z=4}, priority = 2, sound="saff.ogg"},
	{fromPos = {x=1038, y=1054, z=4}, toPos = {x=1077, y=1110, z=4}, priority = 2, sound="saff.ogg"},
	-- Pesca e outras areas
	{fromPos = {x=1540, y=1057, z=6}, toPos = {x=1547, y=1062, z=6}, priority = 2, sound="special05.ogg"},
	{fromPos = {x=1054, y=1505, z=6}, toPos = {x=1058, y=1510, z=6}, priority = 2, sound="special05.ogg"},
	{fromPos = {x=1060, y=1516, z=7}, toPos = {x=1067, y=1521, z=7}, priority = 2, sound="center.ogg"},
	{fromPos = {x=1048, y=1510, z=7}, toPos = {x=1059, y=1527, z=7}, priority = 2, sound="special06.ogg"},
	{fromPos = {x=1068, y=1511, z=7}, toPos = {x=1078, y=1527, z=7}, priority = 2, sound="special06.ogg"},
	{fromPos = {x=1060, y=1524, z=7}, toPos = {x=1067, y=1526, z=7}, priority = 2, sound="special06.ogg"},
	{fromPos = {x=1060, y=1511, z=7}, toPos = {x=1067, y=1513, z=7}, priority = 2, sound="special06.ogg"},
	-- Special areas
	{fromPos = {x=932, y=977, z=15}, toPos = {x=953, y=986, z=15}, priority = 2, sound="special01.ogg"},
	{fromPos = {x=920, y=956, z=15}, toPos = {x=926, y=993, z=15}, priority = 2, sound="special02.ogg"},
	{fromPos = {x=927, y=968, z=15}, toPos = {x=962, y=972, z=15}, priority = 2, sound="special02.ogg"},
	{fromPos = {x=933, y=947, z=15}, toPos = {x=962, y=967, z=15}, priority = 2, sound="special02.ogg"},
	{fromPos = {x=958, y=973, z=15}, toPos = {x=962, y=997, z=15}, priority = 2, sound="special02.ogg"},
	{fromPos = {x=980, y=1529, z=9}, toPos = {x=1003, y=1552, z=9}, priority = 2, sound="special03.ogg"},
	{fromPos = {x=979, y=1527, z=10}, toPos = {x=1003, y=1553, z=10}, priority = 2, sound="special03.ogg"},
	{fromPos = {x=981, y=1530, z=11}, toPos = {x=993, y=1534, z=11}, priority = 2, sound="special03.ogg"},
	{fromPos = {x=100, y=802, z=8}, toPos = {x=106, y=809, z=8}, priority = 2, sound="special04.ogg"},
	{fromPos = {x=1042, y=1040, z=10}, toPos = {x=1078, y=1071, z=10}, priority = 2, sound="000.ogg"},
	{fromPos = {x=1036, y=1039, z=11}, toPos = {x=1087, y=1074, z=11}, priority = 2, sound="001.ogg"},
	-- Kyogre Quest
	{fromPos = {x=925, y=918, z=15}, toPos = {x=941, y=925, z=15}, priority = 2, sound="special08.ogg"},
	{fromPos = {x=926, y=858, z=15}, toPos = {x=943, y=866, z=15}, priority = 2, sound="special08.ogg"},
	{fromPos = {x=926, y=894, z=15}, toPos = {x=945, y=908, z=15}, priority = 2, sound="special07.ogg"},
	{fromPos = {x=916, y=877, z=15}, toPos = {x=954, y=895, z=15}, priority = 2, sound="special07.ogg"},
	{fromPos = {x=917, y=835, z=15}, toPos = {x=955, y=851, z=15}, priority = 2, sound="special07.ogg"},
	{fromPos = {x=925, y=817, z=15}, toPos = {x=942, y=825, z=15}, priority = 2, sound="special08.ogg"},
	-- Inicial area
	{fromPos = {x=1037, y=867, z=15}, toPos = {x=1117, y=915, z=15}, priority = 2, sound="leaf01.ogg"},
	{fromPos = {x=1038, y=866, z=14}, toPos = {x=1116, y=913, z=14}, priority = 2, sound="leaf01.ogg"},
	{fromPos = {x=1120, y=867, z=15}, toPos = {x=1200, y=910, z=15}, priority = 2, sound="fire01.ogg"},
	{fromPos = {x=1120, y=867, z=14}, toPos = {x=1204, y=911, z=14}, priority = 2, sound="fire01.ogg"},
	{fromPos = {x=1035, y=809, z=15}, toPos = {x=1112, y=866, z=15}, priority = 2, sound="rock.ogg"},
	{fromPos = {x=1035, y=809, z=14}, toPos = {x=1112, y=866, z=14}, priority = 2, sound="rock.ogg"},
	{fromPos = {x=1035, y=809, z=13}, toPos = {x=1112, y=866, z=13}, priority = 2, sound="rock.ogg"},
	{fromPos = {x=937, y=1006, z=15}, toPos = {x=966, y=1017, z=15}, priority = 2, sound="outfit1.ogg"},
	{fromPos = {x=1048, y=1063, z=15}, toPos = {x=1056, y=1072, z=15}, priority = 2, sound="special04.ogg"},
	{fromPos = {x=1338, y=969, z=15}, toPos = {x=1436, y=1024, z=15}, priority = 2, sound="vip.ogg"},
	{fromPos = {x=1338, y=969, z=14}, toPos = {x=1436, y=1024, z=14}, priority = 2, sound="vip.ogg"},
	{fromPos = {x=1338, y=969, z=13}, toPos = {x=1436, y=1024, z=13}, priority = 2, sound="vip.ogg"},
	{fromPos = {x=1338, y=969, z=12}, toPos = {x=1436, y=1024, z=12}, priority = 2, sound="vip.ogg"},
	{fromPos = {x=1278, y=1025, z=15}, toPos = {x=1455, y=1159, z=15}, priority = 2, sound="viproute.ogg"},
	{fromPos = {x=1278, y=1025, z=14}, toPos = {x=1455, y=1159, z=14}, priority = 2, sound="viproute.ogg"},
	{fromPos = {x=1278, y=1025, z=13}, toPos = {x=1455, y=1159, z=13}, priority = 2, sound="viproute.ogg"},
	{fromPos = {x=1278, y=1025, z=12}, toPos = {x=1455, y=1159, z=12}, priority = 2, sound="viproute.ogg"},

	--Coins
	{fromPos = {x=998, y=1053, z=15}, toPos = {x=1024, y=1067, z=15}, priority = 2, sound="music.ogg"},

	
		-- Pvp
		{fromPos = {x=2133, y=793, z=7}, toPos = {x=2064, y=775, z=7}, priority = 1, sound="pvp.ogg"},
		{fromPos = {x=1001, y=917, z=9}, toPos = {x=1002, y=919, z=9}, priority = 1, sound="FF VII - Main.ogg"},
		-- Batalha pvp
		{fromPos = {x=958, y=983, z=13}, toPos = {x=1008, y=1038, z=13}, priority = 1, sound="batalha.ogg"},
		-- Arena de duelos
		{fromPos = {x=572, y=1091, z=7}, toPos = {x=585, y=1102, z=7}, priority = 1, sound="batalha.ogg"},
		{fromPos = {x=572, y=1080, z=7}, toPos = {x=592, y=1091, z=7}, priority = 1, sound="cp.ogg"},
		{fromPos = {x=586, y=1091, z=7}, toPos = {x=592, y=1102, z=7}, priority = 1, sound="cp.ogg"},
	
	-- Main
	
		-- Cp
		-- Cerulean

		-- Saffron

		{fromPos = {x=1096, y=1088, z=5}, toPos = {x=1110, y=1100, z=6}, priority = 1, sound="Fairy Tail - Main.ogg"},

		
		
} ----------

-- Sound
local rcSoundChannel
local showPosEvent
local playingSound

-- Design
soundWindow = nil
soundButton = nil

function toggle()
  if soundButton:isOn() then
    soundWindow:close()
    soundButton:setOn(false)
  else
    soundWindow:open()
    soundButton:setOn(true)
  end
end

function onMiniWindowClose()
  soundButton:setOn(false)
end

function init()
	for i = 1, #SOUNDS do
		SOUNDS[i].sound = SOUNDS_CONFIG.folder .. SOUNDS[i].sound
	end
	
	connect(g_game, { onGameStart = onGameStart,
                    onGameEnd = onGameEnd })
	
	rcSoundChannel = g_sounds.getChannel(SOUNDS_CONFIG.soundChannel)
	-- rcSoundChannel:setGain(value/COUNDS_CONFIG.volume)

	--soundButton = modules.client_topmenu.addRightGameToggleButton('soundButton', tr('Sound Info') .. '', '/images/audio', toggle)
	--soundButton:setOn(true)
	
	soundWindow = g_ui.loadUI('rcsound', modules.game_interface.getRightPanel())
	soundWindow:disableResize()
	soundWindow:setup()
	
	if(g_game.isOnline()) then
		onGameStart()
	end
end

function terminate()
	disconnect(g_game, { onGameStart = onGameStart,
                       onGameEnd = onGameEnd })
	onGameEnd()
	soundWindow:destroy()
	soundButton:destroy()
end

function onGameStart()
	stopSound()
	toggleSoundEvent = addEvent(toggleSound, SOUNDS_CONFIG.checkInterval)
end

function onGameEnd()
	stopSound()
	removeEvent(toggleSoundEvent)
end

function isInPos(pos, fromPos, toPos)
	return
		pos.x>=fromPos.x and
		pos.y>=fromPos.y and
		pos.z>=fromPos.z and
		pos.x<=toPos.x and
		pos.y<=toPos.y and
		pos.z<=toPos.z
end

function toggleSound()
	local player = g_game.getLocalPlayer()
	if not player then return end
	
	local pos = player:getPosition()
	local toPlay = nil

	for i = 1, #SOUNDS do
		if(isInPos(pos, SOUNDS[i].fromPos, SOUNDS[i].toPos)) then
			if(toPlay) then
				toPlay.priority = toPlay.priority or 0
				if((toPlay.sound~=SOUNDS[i].sound) and (SOUNDS[i].priority>toPlay.priority)) then
					toPlay = SOUNDS[i]
				end
			else
				toPlay = SOUNDS[i]
			end
		end
	end

	playingSound = playingSound or {sound='', priority=0}
	
	if(toPlay~=nil and playingSound.sound~=toPlay.sound) then
		g_logger.info("RC Sounds: New sound area detected:")
		g_logger.info("  Position: {x=" .. pos.x .. ", y=" .. pos.y .. ", z=" .. pos.z .. "}")
		g_logger.info("  Music: " .. toPlay.sound)
		stopSound()
		playSound(toPlay.sound)
		playingSound = toPlay
	elseif(toPlay==nil) and (playingSound.sound~='') then
		g_logger.info("RC Sounds: New sound area detected:")
		g_logger.info("  Left music area.")
		stopSound()
	end

	toggleSoundEvent = scheduleEvent(toggleSound, SOUNDS_CONFIG.checkInterval)
end

function playSound(sound)
	rcSoundChannel:enqueue(sound, 0)
	setLabel(clearName(sound))
end

function clearName(soundName)
	local explode = string.explode(soundName, "/")
	soundName = explode[#explode]
	explode = string.explode(soundName, ".ogg")
	soundName = ''
	for i = 1, #explode-1 do
		soundName = soundName .. explode[i]
	end
	return soundName
end

function stopSound()
	setLabel(SOUNDS_CONFIG.noSound)
	rcSoundChannel:stop()
	playingSound = nil
end

function setLabel(str)
	soundWindow:recursiveGetChildById('currentSound'):getChildById('value'):setText(str)
end