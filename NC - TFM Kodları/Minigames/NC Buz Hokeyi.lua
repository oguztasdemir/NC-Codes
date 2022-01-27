--@7628685
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
tfm.exec.bindKeyboard(name,32,true,true)
tfm.exec.bindKeyboard(name,17,true,true)
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end

function eventKeyboard(name,key,down,x,y)
if key==17 then
tfm.exec.movePlayer(name,0,0,true,0,90,false)
else
if key==32 then
tfm.exec.movePlayer(name,0,0,true,0,-70,false)
end
end
end
