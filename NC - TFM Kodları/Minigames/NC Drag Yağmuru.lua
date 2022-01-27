players={} notices={notice=""}
 

tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
interval = 10
cannonInfo = {}
difficulty = 8
players={}
toDespawn={}
maps={5304575,6104766,5308276,6872661} 


function main()
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.newGame(maps[math.random(#maps)])
end

function eventNewGame()
interval = 10
end

function eventNewPlayer(name)
ui.addTextArea(1, "<a href='event:easy'><VP><font size='14'>Kolay", name, 500, 21, nil, nil, 0x000001, nil, 0.7)
ui.addTextArea(2, "<a href='event:medium'><J><font size='14'>Orta", name, 600, 21, nil, nil, 0x000001, nil, 0.7)
ui.addTextArea(3, "<a href='event:hard'><R><font size='14'>Zor", name, 700, 21, nil, nil, 0x000001, nil, 0.7)
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
tfm.exec.setUIMapName("<ROSE>Bir sonraki oyunun baþlamasýna "..interval)
if interval == 0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
elseif interval == 10 then
tfm.exec.addShamanObject(17, cannonInfo[1], cannonInfo[2], cannonInfo[3]-90)
cannonInfo={}
end
end
if remaining<=0 then
ui.addTextArea(4, "<VP><p align='center'><B>Amaç:</B>\n\n<CH><i>peyniri alýp draglardan kaçýn!", nil, 290, 22, 180, nil, 0x000001, 0xCA0805, 0.8)
tfm.exec.newGame(maps[math.random(#maps)])
end
end

function eventPlayerDied(name)
if playerCount() < 1 then
interval = 6
tfm.exec.setGameTime(120)
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
local cnnx = math.random()*700
local cnny = math.random()*400
if cnny > py then
cnny = py-math.random(50)-20
end
if math.abs(cnnx-px) > 800 then
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
 
tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName("<J>DRAGYAÐMURU/<R>Drag Savaþý")
ui.addTextArea(4,"<p align='center'><a href='event:profilsyh'><b><R></b></a></p>",name,50,10,350,20,1,true)
ui.addTextArea(5,"<p align='center'><a href='event:profil'><b><R></b>Night Club Football Özel/DRAGYAÐMURU</a></p>",name,60,20,330,20,10,true)