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







tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)


tfm.exec.newGame('@7162061')

ui.addTextArea(1,"<ROSE> <B><O>Like & Subscribe - <B><R>Top sektirme - <B><J>Devilstrkpro - <B><s>Drakathof - <B><D>Night Club"
,playerList,155,100,00,00,0x324650,0x00000,9.9999,true)


for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(all, true)
end
function eventMouse(playerName, x, y)
tfm.exec.addShamanObject(604,x,y)
end








tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
---@6695253


function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerDied(playerName)
tfm.exec.respawnPlayer(playerName)
end

tfm.exec.newGame('@6813783')
tfm.exec.setUIMapName("<rose>Okul Mapý 2-Kurucu <j>Devilstrkpro-Devilstrk")



for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(all, true)
end
function eventMouse(playerName, x, y)
tfm.exec.addShamanObject(604,x,y)
end










tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerDied(playerName)
tfm.exec.respawnPlayer(playerName)
end

tfm.exec.newGame('@6806387')
tfm.exec.setUIMapName("<rose>Okul Mapý 2-Kurucu <j>Devilstrkpro-Devilstrk")



for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(all, true)
end
function eventMouse(playerName, x, y)
tfm.exec.addShamanObject(604,x,y,20,10, -275)
end




tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerDied(playerName)
tfm.exec.respawnPlayer(playerName)
end

tfm.exec.newGame('@6806387')
tfm.exec.setUIMapName("<rose>Top Kontrol Sahasý-Kurucu <j>Devilstrkpro")




function eventChatCommand(player,a)
if a=="1" then
tfm.exec.addShamanObject(604,00,600,20,06, -265)
else
if a=="2" then
tfm.exec.addShamanObject(604,100,600,20,05,-265)
else
if a=="3" then
tfm.exec.addShamanObject(604,200,600,20,04, -265)
end
end
end
end