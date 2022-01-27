function eventNewPlayer(playerName)
print(playerName.." joined the room! Welcome!")
function eventPlayerLeft(playerName)
print(playerName.." left the room.")
end
end
 
ui.addPopup(1,0,"This is just a fun script created by Fuzzyfirsdog called #crosswindmice. You can find more information by doing !help",nil,300,200,200,true)
function eventChatCommand(playerName,message)
print(" You have need to get cheese without being hit by any lava stones, for some reason every mouse has a crosswind ability which means that you can walk on air kind of. Duck to use your crosswind. You have to keep your balance on the wind and help mice to get cheese through this awful storm so that you can keep having cheese to eat. The Shaman can only help the mice slightly. This module was created by Fuzzyfirsdog. ")
ui.updateTextArea(2,"This is some different text.",nil)
end
 
for name,player in pairs(tfm.get.room.playerList) do
tfm.exec.bindKeyboard(name, 70, true, true)
tfm.exec.bindKeyboard(name, 71, true, true)
end
x = 0
y = 0
function eventKeyboard(name, key, down, x, y)
if key == 70 then
tfm.exec.movePlayer(name,0,-25,true,0,0,true)
tfm.exec.addShamanObject(208, x, y, 0, 0, 0, false)
elseif key == 71 then
tfm.exec.addShamanObject(208, x, y, 0, 0, 0, true)
end
end
 
system.disableChatCommandDisplay("help",true)
tfm.exec.disableAllShamanSkills(true)
tfm.exec.setShaman("Tigrounette")
DOWN1 = 40 --keycode of down arrow
DOWN2 = string.byte("S") --keycode of S
LEFT  = string.byte("L") --keycode of L
 
for name, player in pairs(tfm.get.room.playerList) do
system.bindKeyboard(name, DOWN1, true)
system.bindKeyboard(name, DOWN2, true)
end
 
system.disableChatCommandDisplay("help",true)
function eventKeyboard(name, keyCode, down, x, y)
if keyCode == DOWN1 or keyCode == DOWN2 then
tfm.exec.addShamanObject(math.random(30), x, y, math.random(181), 30, -20, false)
 
end
end
 
ui.addTextArea(1," 100",nil,10,30,100,30,0x16AC00,0x212F36,0.8,true)
 
function eventEmotePlayed(playerName, emoteID)
if emoteID==0 then
ui.updateTextArea(math.random(100,95,90),50)
for name, player in pairs(tfm.get.room.playerList) do
system.exit( 'tfm.exec.addShamanObject(math.random(2), 200, 324, math.random(135), math.random(135),math.random(180),false' )
end
end
end
 
function eventPlayerGetCheese(playerName)
print(playerName.." gathered cheese! They might help us gather cheese!")
end
 
function eventPlayerWon(playerName,timeElapsed)
print(playerName.." won the round! "..(timeElapsed/1000).." seconds.")
end
 
 
function eventEmotePlayed(playername, emoteID)
if emoteID==1 then tfm.exec.addShamanObject(10,300,300,45,15,-20,true)
end
end
 
 
tfm.exec.setUIMapName("#crosswindmice")
 
function eventPlayerDied(playerName)
print(playerName.." had an unfortunate death.")
end
 
 
 
debug.disableEventLog(true)
 
function eventNewGame()
print("A new round has just started.")
end
 
function eventKeyboard(playerName, keyCode, down, xPlayerPosition,yPlayerPosition)
if key==32 then
print(playerName.." pressed the space key!")
end
end
tfm.exec.bindKeyboard("Fuzzyfirsdog", 32, 8, 8)
 
system.bindMouse("Fuzzyfirsdog",true)
id=tfm.exec.addShamanObject(10,100,200)
 
tfm.exec.moveObject(id,700,200)
tfm.exec.newGame(6833066)
 
ui.addTextArea(0,"Stay safe!",nil,010,80,100,40,0x324650,0x212F36,0.8,true)
DOWN1 = 40 --keycode of down arrow
DOWN2 = string.byte("S") --keycode of S
function eventKeyboard(name, keyCode, down, x, y)
if keyCode == DOWN1 or keyCode == DOWN2 then
for name, player in pairs(tfm.get.room.playerList) do
system.bindKeyboard(name, DOWN1, true)
system.bindKeyboard(name, DOWN2, true)
tfm.exec.explosion(x, y + 50, 20, 60, true)  -- explosion(?) explosion
tfm.exec.displayParticle(tfm.enum.particle.wind, x, y + 30) -- spark(?) white glitter
end
end
 
function eventNewGame()
print("A new round has just started.")
ui.updateTextArea(1,"  100",nil)
end
 
 
tfm.exec.setUIMapName("#crosswindmice")
 
tfm.exec.snow(60,10)
end
 
function eventChatCommand(playerName,message)
end
 
function eventNewGame()
tfm.exec.newGame(6833066)
end
 
function eventPlayerDied(playerName)
print(playerName.." had an unfortunate death.")
ui.updateTextArea(1,"  0",nil)
end
 
function eventNewGame()
print("A new round has just started.")
ui.updateTextArea(1,"  100",nil)
tfm.exec.newGame(6833066)
end
 
function eventChatCommand(playerName,message)
print(" You have need to get cheese without being hit by any lava stones, for some reason every mouse has a crosswind ability which means that you can walk on air kind of. Duck to use your crosswind. You have to keep your balance on the wind and help mice to get cheese through this awful storm so that you can keep having cheese to eat. The Shaman can only help the mice slightly. This game was created by Fuzzyfirsdog.")
end