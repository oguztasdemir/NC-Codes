owner = "Devilstrkpro" -- twój nick.

interval = 10
cannonInfo = {}
difficulty = 8

maps = {7364635}

function main()
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.newGame(maps[math.random(#maps)])
end

function eventNewGame()
interval = 10
end


function eventTextAreaCallback(id, name, cb)
if (owner==name or owner=="nobody") and interval > 6 then
interval = 10
if cb == "easy" then
difficulty = 7
elseif cb == "medium" then
difficulty = 8
elseif cb == "hard" then
difficulty = 9
end
end
end

function eventLoop(time, remaining) 
if time>3000 then
interval = interval - 1
if interval == difficulty then
ui.removeTextArea(4)
local users = {}
for name,p in pairs(tfm.get.room.playerList) do
if not p.isDead then
users[#users+1] = name
end
end
cannonInfo = spawnCannon(users[math.random(#users)])
interval = 11
elseif interval<=5 then
tfm.exec.setUIMapName("<ROSE>Bir sonraki mapýn baþlamasýna "..interval)if interval == 0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
elseif interval == 10 then
tfm.exec.addShamanObject(17, cannonInfo[1], cannonInfo[2], cannonInfo[3]-90)
cannonInfo={}
end
end
if remaining<=0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
end

function eventPlayerDied(name)
if playerCount() < 1 then
interval = 6
end
end

function playerCount()
local n=0
for name, player in pairs(tfm.get.room.playerList) do
if not player.isDead then
n=n+1
end
end
return n
end

function spawnCannon(name)
local info = {}
local px = tfm.get.room.playerList[name].x
local py = tfm.get.room.playerList[name].y
local cnnx = math.random()*800
local cnny = math.random()*400
if cnny > py then
cnny = py-math.random(50)-20
end
if math.abs(cnnx-px) > 300 then
cnnx = px + math.random(-50, 50)
end
local ang = math.deg(math.atan2(cnny-py, cnnx-px))
tfm.exec.addShamanObject(0, cnnx, cnny, ang+90)
info[1] = cnnx
info[2] = cnny
info[3] = ang
return info
end

for name in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end

main()