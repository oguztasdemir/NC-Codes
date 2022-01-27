tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(name)
maps={866256,306360,741041,5920513,464787,281479,3061252,803074,3480467,291643,391643,390649,281431,1533374,290388,390657}
players={}
toDespawn={}


 
function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
players[name]={
timestamp=os.time(),
offsets={x=10, y=20}
}
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
players[name].offsets.x=10
players[name].offsets.y=20
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
tfm.exec.setGameTime(20)
end
end
 
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end


tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
 

tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName("<J>NÝGHTVÝVOR/<R>Ölüm Savaþý")ui.addTextArea(1,"<p align='center'><a href='event:profilsyh'><b><R></b></a></p>",name,50,10,350,20,1,true)
ui.addTextArea(3,"<p align='center'><a href='event:profil'><b><R></b>Night Club Football Özel/NÝGHTVÝVOR</a></p>",name,60,20,330,20,10,true)