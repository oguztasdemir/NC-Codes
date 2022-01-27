tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
players={}
toDespawn={}
maps={2393716,1642572,1782151,2389613,334445,3099357,2403639,5611241,3128337,2428213,2951616,3930498,1542025,5876803,3090849,3020988,3225462,3105156,3090849,2983430,3430472,5103366,4343671,3026610,2999898,6131520}
function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
players[name]={
timestamp=os.time(),
offsets={x=-2, y=13}
}
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


tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName("<J>Vampir Ýstilasý/<R>Vampir Savaþý")
ui.addTextArea(1,"<p align='center'><a href='event:profilsyh'><b><R></b></a></p>",name,50,10,350,20,1,true)
ui.addTextArea(3,"<p align='center'><a href='event:profil'><b><R></b>Yapan:Devilstrkpro  yardýmcýlarý:Fpkplaa-Koraybalkes/Vampir Ýstilasý</a></p>",name,60,20,330,00,10,true)