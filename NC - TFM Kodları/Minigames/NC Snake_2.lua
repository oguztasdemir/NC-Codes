admin = "Devilstrkpro#5475"

add = ui.addTextArea
rem = ui.removeTextArea

isPlaying = false
foodMov = 0

gamemode = "Classic"

playersAlive = 0

--Arrow keys and WASD
LEFT = 0; UP = 1; RIGHT = 2; DOWN = 3;

function main()
	admin = admin:lower():gsub("^%l", string.upper) --All letters must be lowercase except the first one
	local errorText, name = string.format("%q is not in the room, or doesn't exist.", admin)	
	local map = "@7498736"
	--Whoever is in the pos [1] is the current player
	playerList = {admin} --Admin is the first player
	--Admin name control
	for k in pairs(tfm.get.room.playerList) do
		if k==admin then 
			name = true 
			break
		end
	end
	if not name then 
		error(errorText)
	end
	tfm.exec.setGameTime(0, false)
	tfm.exec.disableAfkDeath()
	tfm.exec.disableAutoShaman()
	tfm.exec.disableAutoTimeLeft()
	tfm.exec.disableAutoNewGame()
	tfm.exec.disableMortCommand()
	tfm.exec.newGame(map)
	ui.setMapName("Snake by Devilstrkpro\n")
	add(-3, "<a href='event:play'>Play</a>", nil, 755, 375)
	add(-4, "<a href='event:exit'>Stop</a>", admin, 605, 375)
	add(-5, "<a href='event:SS'>SnakeShaman</a>", admin, 650, 375)
end

function checkPlayers(p)
	if p == 0 then tfm.exec.newGame(maps[math.random(#maps)]); end
end

function eventNewPlayer(name)
	if gamemode=="Classic" then
		add(-3, "<a href='event:play'>Play</a>", name, 755, 375)
		add(0, "", name, 2, 38, 791, 254, 0x378990, 0x000000)
		if isPlaying then 
			add(-1, "", name, pos.foodX, pos.foodY, 10, 10, math.random(0x00AA00, 0x00FF00), math.random(0x00AA00, 0x00FF00)) 
			ui.setMapName("Snake by Devilstrkpro <font color='#6A7495'>|</font> <font color='#C2C2DA'>Long: "..len.."</font>\n")
		end
		tfm.exec.respawnPlayer(name)
	end
end

function eventPlayerWon(name)
	playersAlive = playersAlive - 1
	checkPlayers(playersAlive)
end

function eventPlayerLeft(name)
	if gamemode=="Classic" then
		for i, k in pairs(playerList) do
			if name==k then
				for j=i, #playerList do
					playerList[j] = playerList[j+1]
				end
				break
			end
		end
	end
end

function eventPlayerDied(name)
	playersAlive = playersAlive - 1
	checkPlayers(playersAlive)
end

function eventNewGame()
	local xIni = 400
	playersAlive = 0
	if gamemode~="SS" then return; end
	headDef = {type=12, width=20, height=20, foreground=true, friction=0.3, restitution=0.2, angle=0, color=0x4AFF00}
	bodyDef = {type=12, width=20, height=20, foreground=true, friction=0.3, restitution=0.2, angle=0, color=0x33AE01}
	shamanName = ""
	for name in pairs(tfm.get.room.playerList) do
		playersAlive = playersAlive + 1
		if tfm.get.room.playerList[name].isShaman then shamanName = name; end
	end
	pos = {x = {}, y = {}, headX = 400, headY = 180}
	pressedKey = RIGHT
	len = 7
	tfm.exec.setUIShamanName("Snake: ("..shamanName..")")
	tfm.exec.addPhysicObject(1, 400, 180, headDef)
	table.foreachi({LEFT, UP, RIGHT, DOWN}, function(_,l) system.bindKeyboard(shamanName, l, true, true) end) --Bind keys to the player
	for i=2, len do --Body
		xIni = xIni - 20
		pos.x[i], pos.y[i] = xIni, 180
		tfm.exec.addPhysicObject(i, xIni, 180, bodyDef)
	end
	timerTextArea(99, "<font size='12'>You are the shaman! Save the mice by moving the snake.</font>", shamanName, 225, 370, 4, nil, nil, 0x1b232a,0x000000)
	tfm.exec.killPlayer(shamanName)
	tfm.exec.setGameTime (120)
end

function eventTextAreaCallback(id, name, event)
	local p = 0
	maps = {0,1,2,3,4,5,6,10,11,12,13,15,16,17,18,19,20,21,24,25,26,27,30,39,40,54,56,60,62,66,71,72,73,75,76,79,86,90,91,93,96,99,100,101,102,103,104,105,106,107,115,116,117,118,119,130,131,132,133,134,146}
	if event=="play" and gamemode~="SS" then
		gamemode = "Classic"
		if name~=playerList[1] and not gameover then --Is name the current player?
			for i, k in pairs(playerList) do
				if k==name then --Is name in the player list?
					timerTextArea(100, "You are already in the queue, you are in the position:"..i..".", name, 275, 300, 5, nil, nil, 0x1b232a,0x000000)
					return
				end
			end
			table.insert(playerList, name) --name isn't the current player nor is in the list so ill save his name
			timerTextArea(101, "You have been added to the queue, you are in the position: "..#playerList..".", name, 275, 327, 5, nil, nil, 0x1b232a,0x000000)
		elseif gameover then --Is the game over textarea showing?
			timerTextArea(102, "Aspetta prima che la scritta 'GAME OVER' sia rimossa.", name, 275, 354, 5, nil, nil, 0x1b232a,0x000000)
		else 
			timerTextArea(103, "You are already playing!", name, 275, 378, 5, nil, nil, 0x1b232a,0x000000)
		end
	elseif event=="SS" and gamemode=="" then
		for _ in pairs(tfm.get.room.playerList) do
			p = p + 1
		end
		if p <= 2 then ui.addPopup (0, 0, "At least 3 mice are needed to play this mode", admin, 275, 304); return; end
		tfm.exec.disableAfkDeath(false)
		tfm.exec.disableAutoNewGame(false)
		tfm.exec.disableAutoShaman(false)
		tfm.exec.disableAutoTimeLeft(false)
		tfm.exec.disableMortCommand(false)
		tfm.exec.disableAllShamanSkills()
		gamemode = event --SS
		for i=-1, len do
			rem(i)
		end
		tfm.exec.newGame(maps[math.random(#maps)])
	elseif gamemode=="SS" and event=="play" and name==admin then
		ui.addPopup (1, 1, "Are you sure you want to exit SnakeShaman mode?", admin, 300, 200)
	elseif event=="exit" and name==admin then 
		system.exit()
	end
end

function eventPopupAnswer(id, name, answer)
	if answer=="yes" and name==admin then
		table.foreachi({LEFT, UP, RIGHT, DOWN}, function(_,l) system.bindKeyboard(shamanName, l, true, false) end)
		gamemode = "Classic"
		for i=1, len do
			 tfm.exec.removePhysicObject(i)
		end
		main()
	end
end

function gamemodeClassic(reset)
	local xIni = 400 --Body's initial position
	rem(-2) --Remove game over textarea if exists
	pos = {x = {}, y = {}, headX = 400, headY = 180, foodX = nil, foodY = nil} --Coords of everything here
	pressedKey = RIGHT 
	ui.setMapName("Snake by Devilstrkpro \n")
	if reset then
		return 
	end
	len = 3 --Snake's length, don't touch this!!
	add(0, "", nil, 2, 38, 791, 254, 0x378990, 0x000000) --Show the "map"
	table.foreachi({LEFT, UP, RIGHT, DOWN}, function(_,l) system.bindKeyboard(playerList[1], l, true, true) end) --Bind keys to the player
	add(1, "", nil, 400, 180, 10, 10, 0x4AFF00, 0x4AFF00) --Head
	for i=2, len do --Body
		xIni = xIni - 20
		pos.x[i], pos.y[i] = xIni, 180
		add(i, "", nil, xIni, 180, 10, 10, 0x33AE01, 0x33AE01)
	end
	ui.setMapName("Snake by Devilstrkpro <font color='#6A7495'>|</font> <font color='#C2C2DA'>Long: "..len.."</font>\n")
	drawFood() --The food textarea
	timerTextArea(99, "<font size='12'>He/She's playing: "..playerList[1].."</font>", nil, 275, 273, 6, nil, nil, 0x1b232a,0x000000)
	tfm.exec.killPlayer(playerList[1])
end

function drawFood()
	local _x, _y 
	repeat --These are the map's limits
		_x = math.random(0, 780)
		_y = math.random(40, 280)
	until _x%20==0 and _y%20==0 --They must be divisible by 20 to match the movement of the snake
	pos.foodX, pos.foodY = _x, _y
	add(-1, "", nil, _x, _y, 10, 10, math.random(0x00AA00, 0x00FF00), math.random(0x00AA00, 0x00FF00))
end

keyDelay = false --To avoid weird moves when pressing two keys at the same time

function eventKeyboard(name, key, down)
	local function forbiddenMovs(k, k2) --I was testing local functions here, it worked so i left it like this, it could be better though
		local e = (k==k2) or (k==RIGHT and k2==LEFT) or (k==LEFT and k2==RIGHT) or (k==DOWN and k2==UP) or (k==UP and k2==DOWN) --Forbidden movs
		return e
	end
	if name==playerList[1] or (name==shamanName and gamemode=="SS") and not keyDelay then
		if forbiddenMovs(pressedKey, key) or keyDelay then --If forbiddenMovs or keyDelay is true, the mov won't be executed
			return
		end
		keyDelay = true
		pressedKey = key
	end
end
 
function movSnake(k, SS)
	local oldX, oldY = pos.headX, pos.headY --Save the head's current pos
	local _x, _y = 0, 0
	if k==LEFT then --Performs the movement according to the last key pressed
		pos.headX = pos.headX - 20
	elseif k==DOWN then 
		pos.headY = pos.headY + 20
	elseif k==UP then 
		pos.headY = pos.headY - 20
	elseif k==RIGHT then 
		pos.headX = pos.headX + 20
	end
	pos.x[1], pos.y[1] = pos.headX, pos.headY --Save the head's new coords
	if SS then tfm.exec.addPhysicObject(1, pos.x[1], pos.y[1], headDef);
	else add(1, "", nil, pos.x[1], pos.y[1], 10, 10, 0x4AFF00, 0x4AFF00); end --Show head
	for i=2, len do --Show body in its new position
		_x, _y = pos.x[i], pos.y[i] --Save old coords
		pos.x[i], pos.y[i] =  oldX, oldY --Save new coords
		if SS then tfm.exec.addPhysicObject(i, oldX, oldY, bodyDef);
		else add(i, "", nil, oldX, oldY, 10, 10, 0x33AE01, 0x33AE01); end --Show it in old coords of the following textarea
		oldX, oldY = _x, _y --Update coords to the next textarea
	end
end

tick = 0
gameover = false
 
function gameOver()
	table.foreachi({LEFT, UP, RIGHT, DOWN}, function(_,l) system.bindKeyboard(playerList[1], l, true, false) end)
	gameover = true
	tick = 6000 --6 sec until gameover textarea get erased
	tfm.exec.respawnPlayer(playerList[1])
	isPlaying = false
	for i=1, #playerList do 
		playerList[i] = playerList[i+1]
	end
end
 
function checkCoord()
	--Game over--
	if ((pos.headX <= -20 or pos.headX >= 800) or (pos.headY <= 20 or pos.headY >= 300)) then 
		gameOver()
	end
	for i=2, #pos.x do
		if pos.x[i] == pos.headX and pos.y[i] == pos.headY then 
			gameOver()
		end
	end
    --Grow 1 textarea--
	if pos.headX == pos.foodX and pos.headY == pos.foodY then
		rem(-1)
		drawFood()
		len = len + 1
		ui.setMapName("Snake by Devilstrkpro <font color='#6A7495'>|</font> <font color='#C2C2DA'>Long: "..len.."</font>\n")
		if len>10 and foodMov==0 then --The food textarea'll start moving when the snake gets 10
			foodMov = math.random(9000, 12000)
			foodMov = foodMov - (foodMov % 100)
		end
	end
end

ta = {}
can = 0

function timerTextArea(id, te, tr, x, y, t, wi, hei, bc, bo, alp, fpos) --Same parameters as a textarea, adding time
	add(id, te, tr, x, y, wi, hei, bc, bo, alp, fpos) --Show textarea
	ta[tostring(can)] = {t*1000, id}
	can = can + 1
end

main()

function classicLoop()
	if #playerList>0 and not isPlaying and not gameover then --Start playing when playerList has at least one name
		isPlaying = true
		gamemode = "Classic"
		gamemodeClassic()	
	end
	if isPlaying and not gameover then
		if len>10 and foodMov>0 then
			foodMov = foodMov - 500
			if foodMov<=0 then
				rem(-1)
				drawFood()
				foodMov = math.random(9000, 12000)
				foodMov = foodMov - (foodMov % 100)
			end
		end
		movSnake(pressedKey)
		checkCoord()
	end
	if tick>0 and gameover then --Esto se ejecuta siempre que tick sea mayor a cero, y gameover sea true
		add(-2, "<font size='25' color='#FFFFFF'><p align='center'>GAME OVER</p></font>", nil, 300, 180, nil, nil, math.random(0x000000, 0xBD1E1E))
		tick = tick - 500
	elseif tick==0 and gameover then
		gamemode = ""
		gamemodeClassic(true)
		for i=1, len do 
			rem(i)
		end
		rem(-1)
		gameover = false
		foodMov = 0
		ui.setMapName("Snake by Devilstrkpro <font color='#6A7495'>|</font> <font color='#C2C2DA'>Waiting for a player ... (Click 'Play' to join)</font>\n")
		add(0, "", nil, 2, 38, 791, 254, 0x378990, 0x000000)
	end
end

function SSLoop()
	movSnake(pressedKey, true)
	if pos.x[1] >= 920 or pos.x[1] <= -120 then pressedKey = UP; end
	if pos.y[1] >= 420 or pos.y[1] <= -100 then pressedKey = LEFT; end
end
 
function eventLoop(t, tr)
	if gamemode=="Classic" or #playerList>0 then classicLoop();
	elseif gamemode=="SS" then SSLoop(); end
	if can > 0 then --This weird thing control temporary textareas
		for i,k in pairs (ta) do
			if ta[i][1] > 0 then 
				ta[i][1] = ta[i][1] - 500 
			else
				rem(ta[i][2])
				ta[i] = nil
				can = can - 1
				break
			end
		end
	end
	if keyDelay then keyDelay = false; end
	if tr <= 300 and gamemode == "SS" then checkPlayers(0); end
end --To complete the map you need 520 foods.