tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.respawnPlayer(n)
tfm.exec.newGame('@7632441')

function eventPlayerDied(playerName)
tfm.exec.respawnPlayer(playerName)
end


tfm.exec.respawnPlayer(playerName)
function eventNewPlayer(playerName)
end
 

function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,65,true,true) -- a
tfm.exec.bindKeyboard(name,81,true,true) -- q
tfm.exec.bindKeyboard(name,90,true,true) -- z
tfm.exec.bindKeyboard(name,68,true,true) -- d
tfm.exec.bindKeyboard(name,83,true,true) -- s
tfm.exec.bindKeyboard(name,87,true,true) -- w
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end

function eventKeyboard(name,key,down,x,y)
if key==83 then
tfm.exec.movePlayer(name,0,0,true,0,90,false)end

if key==87 then
tfm.exec.movePlayer(name,0,0,true,0,-70,false)
end


if key==90 then
tfm.exec.movePlayer(name,0,0,true,0,-70,false)
end
if key==65 then
tfm.exec.movePlayer(name,0,0,true,-50,0,false)
end

if key==81 then
tfm.exec.movePlayer(name,0,0,true,-50,0,false)
end

if key==68 then
tfm.exec.movePlayer(name,0,0,true,50,0,false)
end
end
