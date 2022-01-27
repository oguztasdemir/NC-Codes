print("<N>Hello there! <font color='#89A7F5'>#Iced<N> is an unofficial minigame that can currently only be played in the tribe house. Please support <font color='#89A7F5'>#Iced!")

maps={4446416,4414828,4431469,4433446,4413886}
players={}

function returnMouseCount()
count=0
for player in pairs(tfm.get.room.playerList) do
if(tfm.get.room.playerList[player].isDead==false) then
count=count+1
elseif(players[player].id) then
count=count+1
end
end
return count
end

function eventLoop(time,remaining)
returnMouseCount()
if(remaining<=0 or count==0) then
newRound()
end
playerList=tfm.get.room.playerList
end

function newRound()
tfm.exec.newGame(maps[math.random(#maps)])
end

function eventNewGame()
tfm.exec.snow()
tfm.exec.setUIMapName("<N>Welcome to <font color='#89A7F5'>#Iced! <N>Press <font color='#89A7F5'>Z<N> to turn into an Ice Cube! <N>Press <font color='#89A7F5'>X<N> to turn into an Ice Plank! Have fun! \n")
end

function eventNewPlayer(name)
ui.addTextArea(1,"<p align='center'><b><N>Hello there! <font color='#89A7F5'>#Iced!<N> is an unofficial minigame that can currently only be played in the tribe house. Please support <font color='#89A7F5'>#Iced!</b></p>", name, 5,25, 790, 25, 0x000000, 0x000000, 0)
tfm.exec.bindKeyboard(name,87,true,true)
tfm.exec.bindKeyboard(name,88,true,true)
players[name]={timestamp=os.time()}
end

function eventKeyboard(name,key,down,x,y)
if players[name].timestamp < os.time()-800 then
if(key==87 and playerList[name].isDead==false) then
tfm.exec.killPlayer(name)
local id=tfm.exec.addShamanObject(54,x,y)
players[name]={id=id,x=x,y=y}
elseif(key==88 and playerList[name].isDead==false) then
tfm.exec.killPlayer(name)
local id=tfm.exec.addShamanObject(45,x,y)
players[name]={id=id,x=x,y=y}
else
if(players[name].x and players[name].y and players[name].id) then
local id=players[name].id
tfm.exec.respawnPlayer(name)
players[name].x=tfm.get.room.objectList[id].x
players[name].y=tfm.get.room.objectList[id].y
if(players[name].x==0) then tfm.exec.killPlayer(name)
else
tfm.exec.movePlayer(name,players[name].x,players[name].y)
end
tfm.exec.removeObject(id)
players[name].id=nil
end
end
players[name].timestamp=os.time()
end
end


function main()
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.newGame(maps[math.random(#maps)])
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
end

main()

function eventPlayerWon(name)
players[name].x=nil
players[name].y=nil
players[name].id=nil
end

function eventPlayerGetCheese(name)
tfm.exec.playerVictory(name)
end