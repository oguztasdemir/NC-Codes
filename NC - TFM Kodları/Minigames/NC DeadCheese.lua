tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
players={}
toDespawn={}
maps={6321908,6324770,6324784,6324794,6324810}
function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
players[name]={
timestamp=os.time(),
offsets={x=-2, y=15}
}
end
 

for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(all, true)
end
function eventMouse(playerName, x, y)
tfm.exec.addShamanObject(24, x, y)
end
 
function eventChatCommand(name,command)
local arg={}
for argument in command:gmatch("[^%s]+") do
table.insert(arg,argument)
end
if arg[1]=="off" then
if tonumber(arg[2]) and tonumber(arg[3]) then
players[name].offsets.x=tonumber(arg[2])
players[name].offsets.y=tonumber(arg[3])
else
players[name].offsets.x=-2
players[name].offsets.y=13
end
tfm.exec.chatMessage("Offsets changed to X:"..players[name].offsets.x.." Y:"..players[name].offsets.y,name)
end
end
 
function eventNewGame()
started=false
end
 
function eventLoop(time,remaining)
if time >= 3000 and not started then
started=true
end
if remaining<=0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
for i,cannon in ipairs(toDespawn) do
if cannon[1] <= os.time()-3000 then
tfm.exec.removeObject(cannon[2])
table.remove(toDespawn,i)
end
end
end
 

tfm.exec.disableAutoShaman(true)
function eventPlayerGetCheese(playerName)
tfm.exec.killPlayer(playerName)
end

function eventPlayerDied(name)
local i=0
local n
for pname,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
n=pname
end
end
if i==0 then
tfm.exec.newGame(maps[math.random(#maps)])
elseif i==1 then
tfm.exec.setGameTime(10)
end
end
 
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
 
tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName("<J>ÖLDÜREN PEYNÝR/<R>SP Savaþý")
ui.addTextArea(1,"<p align='center'><a href='event:profilsyh'><b><R></b></a></p>",name,50,10,350,20,1,true)
ui.addTextArea(3,"<p align='center'><a href='event:profil'><b><R></b>Yapan:Devilstrkpro-DEVÝLSTRK/ÖLDÜREN PEYNÝR</a></p>",name,60,20,330,00,10,true)