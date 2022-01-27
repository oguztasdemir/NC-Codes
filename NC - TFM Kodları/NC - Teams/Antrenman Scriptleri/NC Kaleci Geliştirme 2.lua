
admin="Devilstrkpro#0000"

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerDied(playerName)
tfm.exec.respawnPlayer(playerName)
end

tfm.exec.newGame('@6137197')
tfm.exec.setUIMapName("<VP>Kaleci Antreman Sahasý - <j>Night Club")





for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(admin, true)
end
function eventChatCommand(admin,a)
if a=="1" then
tfm.exec.addShamanObject(604,1000,320,0,-15, -275)
else
if a=="2" then
tfm.exec.addShamanObject(604,1000,320,0,-23,-263)
else
if a=="3" then
tfm.exec.addShamanObject(604,1000,320,0,-12, -264)
else
if a=="4" then
tfm.exec.addShamanObject(604,1000,120,0,-17, -259)
else
if a=="5" then
tfm.exec.addShamanObject(604,1000,120,0,-20,-264)
else
if a=="6" then
tfm.exec.addShamanObject(604,1000,120,0,-26, -243)
else
end
end
end
end
end
end
end