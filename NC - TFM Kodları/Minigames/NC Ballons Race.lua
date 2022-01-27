local maps = {521255,4387463,401434,4029628,679132,906121,993789,3346025,2143505,944010,3929757,4057745,3999304,4011106,3873429,3984472,4059199,4059533,4062197,2618050,1233889,2829765,4456202,99,4098580,4061028,4078520,
4151007,4264271,4011785,3806606,3216123,3,3269598}

tfm.exec.disableAutoShaman(true)
print("<N><font color='#89A7F5'>#bubble<N>,Oyununa hoş geldiniz.Amaç:Eğilerek/Boşluk tuşu ile balon yaratmak ve yuvaya girmek. Başarılar !")
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
players={}
toDespawn={}

function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
players[name]={
timestamp=os.time(),
offsets={x=2, y=10}
}
end

function eventKeyboard(name,key,down,x,y)
if (key==32 or key==40 or key==83) and not tfm.get.room.playerList[name].isDead and started then
if players[name].timestamp < os.time()-1000 then
local id
if tfm.get.room.playerList[name].isFacingRight then
id=tfm.exec.addShamanObject(59,x+players[name].offsets.x,y+players[name].offsets.y)
else
id=tfm.exec.addShamanObject(59,x+players[name].offsets.x,y+players[name].offsets.y)
end
players[name].timestamp=os.time()
table.insert(toDespawn,{os.time(),id})
end
end
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
players[name].offsets.x=2
players[name].offsets.y=10
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
for i,balloon in ipairs(toDespawn) do
if balloon[1] <= os.time()-5000 then
tfm.exec.removeObject(balloon[2])
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
tfm.exec.giveCheese(90)
tfm.exec.playerVictory(90)
tfm.exec.setGameTime(10)
end
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName ("#bubble") 