MAP = "<C><P /><Z><S><S X=\"400\" Y=\"390\" T=\"12\" H=\"30\" P=\"0,0,0.3,0.2,0,0,0,0\" L=\"800\" o=\"324650\" /><S X=\"400\" c=\"4\" Y=\"153\" T=\"12\" H=\"10\" P=\"0,0,0.3,0.2,0,0,0,0\" L=\"280\" o=\"324650\" /><S X=\"400\" c=\"4\" Y=\"246\" T=\"12\" H=\"10\" P=\"0,0,0.3,0.2,0,0,0,0\" L=\"280\" o=\"324650\" /><S X=\"353\" c=\"4\" Y=\"200\" T=\"12\" P=\"0,0,0.3,0.2,0,0,0,0\" H=\"280\" L=\"10\" o=\"324650\" /><S X=\"446\" c=\"4\" Y=\"200\" T=\"12\" H=\"280\" P=\"0,0,0.3,0.2,0,0,0,0\" L=\"10\" o=\"324650\" /></S><D /><O /></Z></C>"

PLAYERS = {
"Devilstrkpro#5475",
"Apash#9195"
}

GRID = {
{ 0, 0, 0 },
{ 0, 0, 0 },
{ 0, 0, 0 }
}

turn = 1

tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.newGame(MAP)

function eventMouse(p, x, y)
if x > 260 and x <= 540 and y > 60 and y <= 340 then
for i,n in pairs(PLAYERS) do
if i == turn then
if p == n then
if getField(x, y) == 0 then
setField(x, y, (PLAYERS[1] == p and 1 or 2))
turn = turn + (turn == 1 and 1 or -1)
end
end
end
end
end
end

function translateX(x)
if x < (260 + 280/3) then
return 1
elseif x < (260 + (280/3)*2) then
return 2
else
return 3
end
end

function translateY(x)
if x < (60 + 280/3) then
return 1
elseif x < (60 + (280/3)*2) then
return 2
else
return 3
end
end

function getField(x, y)
return GRID[translateY(y)][translateX(x)]
end

function setField(x, y, value)
local tx = translateX(x)
local ty = translateY(y)
GRID[ty][tx] = value
ui.addTextArea(tx-1 + ty*3, "<p align=\"center\"><font size=\"70\">" .. (value == 1 and "O" or "X") .. "</font></p>", nil, tx * (280/3) + 260 - (280/3), ty * (280/3) + 60 - (280/3), 280/3, 280/3, 0, 0, 0)
end

function eventNewPlayer(p)
tfm.exec.respawnPlayer(p)
end

function eventPlayerDied(p)
tfm.exec.respawnPlayer(p)
end

function eventPlayerWon(p)
tfm.exec.respawnPlayer(p)
end

function eventNewGame()
if tfm.get.room.currentMap == "@0" then
tfm.exec.setGameTime(5, true)
turn = 1
for y,xs in pairs(GRID) do
for x in pairs(xs) do
GRID[y][x] = 0
end
end
for p in pairs(tfm.get.room.playerList) do
tfm.exec.movePlayer(p, (math.random(1,2) == 1 and 100 or 700), 300)
system.bindMouse(p, false)
end
tfm.exec.movePlayer(PLAYERS[1], 200, 300)
tfm.exec.movePlayer(PLAYERS[2], 600, 300)
for i,p in pairs(PLAYERS) do
system.bindMouse(p, true)
end
ui.addTextArea(1, "<p align=\"center\"><font size=\"35\">" .. PLAYERS[1] .. "</font></p>", nil, 50, 50, 200, 50, 0, 0, 0)
ui.addTextArea(2, "<p align=\"center\"><font size=\"35\">" .. PLAYERS[2] .. "</font></p>", nil, 550, 50, 200, 50, 0, 0, 0)
for i=3,11 do
ui.removeTextArea(i)
end
end
end

function eventChatCommand(p, c)
for i=1,2 do
if p == PLAYERS then
if c == "stop" then
system.exit()
elseif string.sub(c, 1, 3) == "new" then
local pl = tostring(PLAYERS[1]) -- test
PLAYERS[1] = PLAYERS[2]
PLAYERS[2] = pl

for n in pairs(tfm.get.room.playerList) do
if string.find(c, n) then
PLAYERS = n
end
end

tfm.exec.newGame(MAP)
return
end
end
end
end