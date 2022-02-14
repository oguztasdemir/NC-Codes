--------------
-- Settings --
--------------
OUTPUT_MODE = 2
-- 0 = silent mode (only visible to the one who loaded the script)
-- 1 = chat box mode (will not work in tribehouse)
-- 2 = tribe mode (will work in tribehouse; outputs through a textbox)
KILL_RADIUS = 75
-- The radius (in pixels) around the ice mouse that is considered in-range to freeze another mouse
COOLDOWN = 2.5;
-- The time (in seconds) of delay between when the ice mouse can freeze again after attacking and when a mouse can revive another mouse (only increments of 0.5)
RESCUE_RADIUS = 100
-- The radius (in pixels) around every other mouse that is considered in-ranged to unfreeze an ice block
OUTPUT_NAME_COLOR = '<V>'
OUTPUT_MESSAGE_COLOR = '<J>'
-- Color tags to be used during output
MAPS = {'@3372137'}
-- Add more, separate with commas and use quotes, will be chosen randomly(e.g MAPS = {'@111111', '@222222', '@333333'})

--------------
--------------
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAllShamanSkills(true)

if OUTPUT_MODE == 2 then
	ui.addTextArea(0, '', nil, 5, 5)
end
ui.addTextArea(1, '', nil, 5, 375)

all_players = {}
ice_blocks = {}
cooldowns = {}
ice_mouse = '';
countdown = 3
second_mark = false
all_dead = false
can_attack = false
time_to_clear_ttt = 3
time_to_clear_ctt = 3
mk_for_reset = false
ttt = ''
ctt = ''

function output_msg(msg)
	if OUTPUT_MODE == 0 then
		print(msg)
	elseif OUTPUT_MODE == 1 then
		tfm.exec.chatMessage(msg)
	elseif OUTPUT_MODE == 2 then
		ttt = ttt .. '\n' .. msg
		ui.updateTextArea(0, ttt)
		time_to_clear_ttt = 3
	end
end

function countdown_msg(msg)
	ctt = ctt .. '   ' .. msg
	ui.updateTextArea(1, ctt)
	time_to_clear_ctt = 3
end

for name,player in pairs(tfm.get.room.playerList) do
	table.insert(all_players, name)
	tfm.exec.setPlayerScore(name, 0, false)
end

function start_new_game()
	all_players = {}
	ice_blocks = {}
	can_attack = false
	tfm.exec.newGame(MAPS[math.random(#MAPS)])
	
	for name,player in pairs(tfm.get.room.playerList) do
		tfm.exec.bindKeyboard(name, 32, true, true)
		table.insert(all_players, name)
		cooldowns[name] = 0
		tfm.exec.setNameColor(name, 0xB5B5B5)
	end
	
	ice_mouse = all_players[math.random(#all_players)]
	tfm.exec.setNameColor(ice_mouse, 0x009DFF)
	
	output_msg(OUTPUT_NAME_COLOR .. ice_mouse .. OUTPUT_MESSAGE_COLOR .. ' is the Ice Mouse!')
	output_msg(OUTPUT_MESSAGE_COLOR .. 'The game will start in 10 seconds!')
	countdown = 10
end

function set_new_game_countdown(num)
	countdown = 20 + num
end

function eventLoop(current_time, time_remaining)
	second_mark = not second_mark
	if second_mark then
		if countdown > 0 and countdown < 20 then
			countdown_msg(OUTPUT_MESSAGE_COLOR .. countdown)
			countdown = countdown - 1
		elseif countdown == 0 then
			countdown_msg(OUTPUT_MESSAGE_COLOR .. 'Go!')
			countdown = -1
			can_attack = true
		elseif countdown == 20 then
			output_msg(OUTPUT_MESSAGE_COLOR .. 'Starting next game!')
			start_new_game()
		elseif countdown > 20 then
			countdown = countdown - 1
		end
		if time_to_clear_ttt == 0 and OUTPUT_MODE == 2 then
			if mk_for_reset then
				ui.removeTextArea(0)
				ui.addTextArea(0, '', nil, 5, 5)
			else
				ttt = ''
				ui.updateTextArea(0, ttt)
			end
		end
		if time_to_clear_ctt == 0 and OUTPUT_MODE == 2 then
			if mk_for_reset then
				ui.removeTextArea(1)
				ui.addTextArea(1, '', nil, 5, 375)
				mk_for_reset = false
			else
				ctt = ''
				ui.updateTextArea(1, ctt)
			end
		end
		time_to_clear_ttt = time_to_clear_ttt - 1
		time_to_clear_ctt = time_to_clear_ctt - 1
	end
	if time_remaining <= 1 then
		for name,player in pairs(tfm.get.room.playerList) do
			if (name ~= ice_mouse) and not (tfm.get.room.playerList[name].isDead) then
				all_dead = false
			end
		end
		output_msg(OUTPUT_MESSAGE_COLOR .. 'Oh no! The Ice Mouse ' .. OUTPUT_NAME_COLOR .. ice_mouse .. OUTPUT_MESSAGE_COLOR .. ' has failed to freeze all the mice!')
		output_msg(OUTPUT_MESSAGE_COLOR .. 'New game starting now!')
		start_new_game()
	end
	for num,name in pairs(all_players) do
		if cooldowns[name] > 0 then
			cooldowns[name] = cooldowns[name] - 1
		end
	end
end

function check_alive()
	all_dead = true
	for name,player in pairs(tfm.get.room.playerList) do
		if (name ~= ice_mouse) and not (tfm.get.room.playerList[name].isDead) then
			all_dead = false
		end
	end
	if all_dead then
		tfm.exec.setPlayerScore(ice_mouse, 1, true)
		output_msg(OUTPUT_NAME_COLOR .. ice_mouse .. OUTPUT_MESSAGE_COLOR .. ' has frozen all of the mice!')
		output_msg(OUTPUT_NAME_COLOR .. ice_mouse .. OUTPUT_MESSAGE_COLOR .. ' wins!')
		output_msg(OUTPUT_MESSAGE_COLOR .. 'The next game will start in 5 seconds')
		set_new_game_countdown(5)
	end
end

function eventPlayerDied(name)
	if name == ice_mouse then
		for namme,player in pairs(tfm.get.room.playerList) do
			if namme ~= ice_mouse and not tfm.get.room.playerList[namme].isDead then
				tfm.exec.setPlayerScore(namme, 1, true)
			end
		end
		output_msg(OUTPUT_MESSAGE_COLOR .. 'The Ice Mouse ' .. OUTPUT_NAME_COLOR .. ice_mouse .. OUTPUT_MESSAGE_COLOR .. ' has died!')
		output_msg(OUTPUT_MESSAGE_COLOR .. 'The next game will start in 5 seconds')
		set_new_game_countdown(5)
	else
		output_msg(OUTPUT_NAME_COLOR .. name .. OUTPUT_MESSAGE_COLOR .. ' has been frozen!')
		ice_blocks[tfm.exec.addShamanObject(54, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y, 0, 0, 0, false)] = name
		check_alive()
	end
end

--[[-- Somewhat useful; enable if you want
function eventChatCommand(name, cmd)
	if cmd == 'newgame' then
		start_new_game()
	elseif cmd == 'gg' then
		tfm.exec.killPlayer(ice_mouse)
	elseif cmd == 'ff' then
		tfm.exec.killPlayer(name)
	end
end
--]]--
function search_and_kill()
	for name,player in pairs(tfm.get.room.playerList) do
		if (name ~= ice_mouse) and (not tfm.get.room.playerList[name].isDead) and (math.abs(tfm.get.room.playerList[name].x - tfm.get.room.playerList[ice_mouse].x) <= KILL_RADIUS) and (math.abs(tfm.get.room.playerList[name].y - tfm.get.room.playerList[ice_mouse].y) <= KILL_RADIUS) then
			tfm.exec.killPlayer(name)
			return
		end
	end
end

function search_and_rescue(rescuee)
	for id in pairs(ice_blocks) do
		if (math.abs(tfm.get.room.objectList[id].x - tfm.get.room.playerList[rescuee].x) <= RESCUE_RADIUS) and (math.abs(tfm.get.room.objectList[id].y - tfm.get.room.playerList[rescuee].y) <= RESCUE_RADIUS) then
			output_msg(OUTPUT_NAME_COLOR .. ice_blocks[id] .. OUTPUT_MESSAGE_COLOR .. ' has been thawed by ' .. OUTPUT_NAME_COLOR .. rescuee)
			tfm.exec.respawnPlayer(ice_blocks[id])
			tfm.exec.movePlayer(ice_blocks[id], tfm.get.room.objectList[id].x, tfm.get.room.objectList[id].y, false, 0, 0, false)
			tfm.exec.removeObject(id)
			ice_blocks[id] = nil
			return
		end
	end
	
end

function eventKeyboard(name, key, down, x, y)
	if not tfm.get.room.playerList[name].isDead and can_attack and key == 32 and cooldowns[name] == 0  then
		if name == ice_mouse then
			search_and_kill()
		else
			search_and_rescue(name)
		end
		cooldowns[name] = COOLDOWN * 2
	end
end

function eventNewPlayer(name)
	mk_for_reset = true
end

start_new_game()