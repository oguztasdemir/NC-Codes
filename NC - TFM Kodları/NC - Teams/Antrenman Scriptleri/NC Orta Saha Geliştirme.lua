admin="Devilstrkpro#0000"


tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end

tfm.exec.newGame('@6813783')
tfm.exec.setUIMapName("<VP>Orta Geliþtirme <j>Devilstrkpro-Devilstrk")



for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(admin, true)
end
function eventMouse(playerName, x, y)
tfm.exec.addShamanObject(604,x,y)
end
