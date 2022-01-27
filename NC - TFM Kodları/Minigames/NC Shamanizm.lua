

tfm.exec.disableAutoNewGame(true)
players={}
toDespawn={}
maps={497904,6137197,1799297,5234475,3373965d,4308616,5233760,5913470,5233760,4308616,5907418,3373965,5035348,5228068,6137225}
function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
players[name]={
timestamp=os.time(),
offsets={x=-2, y=13}
}
end


for playerName,player in pairs(tfm.get.room.playerList) do
tfm.exec.setShaman(playerName)
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
tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
tfm.exec.setGameTime(5)
end
end


tfm.exec.setUIMapName("<J>SHAMANÝSM <3-Deviller<g>  |  <n><R>Yapanlar:<n><B><J>Devilstrkpro-Devilstrk") 
