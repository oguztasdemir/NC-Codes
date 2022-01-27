--------------------------------------------
-- Module ESCALADE by Animjarcanin -------------
-- Version 1.4 -------------
--------------------------------------------

-- Status
loading = false
gameEnded = true
timer = 9

-- Disabling several parameters.
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)

-- Starting new game.
function start()
tfm.exec.newGame([[<C><P D="x_transformice/x_salon801/x_ciel.jpg" /><Z><S /><D /><O /></Z></C>]]);
tfm.exec.setUIMapName("Falling blocks!")
setMapTitle("Press space bar to catch a bonus or to respawn!")
generateMap()
managePlayers()
newBonus()
loading = true
end

-- Generating of the map.
function getX(idBlock)
return 20 + math.floor((idBlock - 1) / 9) * 40
end

function getY(idBlock)
return 25 + (idBlock * 40) - (360 * math.floor(idBlock * 40 / (360 + 1)))
end

blockList = {}
function generateMap()
for idBlockIndex=1,180 do
tfm.exec.addPhysicObject(idBlockIndex, getX(idBlockIndex), getY(idBlockIndex),{type=6,height=15,width=15,angle=0,friction=0.3,restitution=0.2,dynamic=false})
blockList[idBlockIndex] = {}
blockList[idBlockIndex].id = idBlockIndex
blockList[idBlockIndex].x = getX(idBlockIndex)
blockList[idBlockIndex].y = getY(idBlockIndex)
blockList[idBlockIndex].type = 6
blockList[idBlockIndex].height = 15
blockList[idBlockIndex].width = 15
blockList[idBlockIndex].angle = 0
blockList[idBlockIndex].friction = 0.3
blockList[idBlockIndex].restitution = 0.2
blockList[idBlockIndex].dynamic = false
end
end

-- Setting mice's positions.
-- Registering space key.
-- Resetting scores.
function setSpawnPosition(playerName)
xLoc = math.random(20, 780)
yLoc = math.random(25, 375)
tfm.exec.movePlayer(playerName, xLoc, yLoc, false, 0, 0, false)
end

function managePlayers()
for playerName in pairs(tfm.get.room.playerList) do
setSpawnPosition(playerName)
tfm.exec.bindKeyboard(playerName, 32, true, true)
tfm.exec.setPlayerScore(playerName, 0, false)
end
end

-- Loading bonus.

bonus = {}

bonus[1] = {}
bonus[1]["name"] = "Snow"
bonus[1]["title"] = "invokes snow."
bonus[1]["particles"] = 24
bonus[1]["speed"] = true
bonus[1]["id"] = 9

bonus[2] = {}
bonus[2]["name"] = "Trampoline"
bonus[2]["title"] = "summons some trampolines."
bonus[2]["particles"] = 24
bonus[2]["speed"] = true
bonus[2]["id"] = 1

bonus[3] = {}
bonus[3]["name"] = "Lava"
bonus[3]["title"] = "transforms some platforms in lava."
bonus[3]["particles"] = 24
bonus[3]["speed"] = true
bonus[3]["id"] = 13

bonus[4] = {}
bonus[4]["name"] = "Fertilizer"
bonus[4]["title"] = "fertilizes some platforms."
bonus[4]["particles"] = 24
bonus[4]["speed"] = true
bonus[4]["id"] = 32

bonus[5] = {}
bonus[5]["name"] = "Wind"
bonus[5]["title"] = "blows on some platforms."
bonus[5]["particles"] = 1
bonus[5]["speed"] = false
bonus[5]["id"] = 10

tBonus = 0
iBonus = nil
xBonus = nil
yBonus = nil

function newBonus()
tBonus = 0
iBonus = math.random(1,#bonus)
xBonus = math.random(20,780)
yBonus = math.random(50,375)
end

-- Map Title
function setMapTitle(title)
title = "Escalade 1.4 by Animjarcanin | " .. title
for k=#title, 199 do
title = title .. " "
end
ui.setMapName(title)
end

setMapTitle("A new game begins in a few seconds.")

-- Launching the map generation.
-- Destroying platforms.
-- Distributing points.
-- Checking victories.
-- Displaying bonus.
function eventLoop(c, r)
if gameEnded == false and loading == true then
for k=0,3 do
block = blockList[math.random(1,#blockList)]
if block.dynamic == false then
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=block.type, height=block.height, width=block.width, angle=block.angle, friction=block.friction, restitution=block.restitution, dynamic=true})
block.dynamic = true
end
end
for playerName in pairs(tfm.get.room.playerList) do
if tfm.get.room.playerList[playerName].score >= 240 then
tfm.exec.giveCheese(playerName)
tfm.exec.playerVictory(playerName)
tfm.exec.setPlayerScore(playerName, -1, false)
elseif tfm.get.room.playerList[playerName].isDead == false then
tfm.exec.setPlayerScore(playerName, 1, true)
end
end
s = bonus[iBonus].speed
if s == true then
for k=0, bonus[iBonus].particles do
tfm.exec.displayParticle(bonus[iBonus].id, xBonus, yBonus, math.random(-1,1)*math.random(), -math.random(), 0, 0, nil)
end
else
for k=0, bonus[iBonus].particles do
tfm.exec.displayParticle(bonus[iBonus].id, xBonus, yBonus, 0, 0, 0, 0, nil)
end
end
end
if tBonus == 20 then
newBonus()
else
tBonus = tBonus + 0.5
end
if gameEnded == true then
if timer == 0 then
loading = false
gameEnded = false
timer = 9
start()
end
if timer < 5 then
setMapTitle("A new game begins in " .. math.ceil(timer) .. " seconds...")
end
timer = timer - 0.5
end
end

-- Listening for eventPlayerWon.
function eventPlayerWon(playerName, timeElapsed, timeElapsedSinceRespawn)
if gameEnded == false then
tfm.exec.playEmote(nil, 5)
setMapTitle(playerName .. " won in " .. timeElapsed/100 .. " seconds.")
gameEnded = true
end
end

-- Listening for eventPlayerDied
function eventPlayerDied(playerName)
if tfm.get.room.playerList[playerName].isJumping == true then
respawn(playerName)
end
end

-- Respawn
function respawn(playerName)
if tfm.get.room.playerList[playerName].score >= 30 then
tfm.exec.setPlayerScore(playerName, -30, true)
else
tfm.exec.setPlayerScore(playerName, 0, false)
end
block = blockList[math.random(1,#blockList)]
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=4, height=20, width=20, angle=0, friction=20, restitution=0.2, dynamic=false})
block.type = 4
block.height = 15
block.width = 15
block.angle = 0
block.friction = 20
block.restitution = 0.2
block.dynamic = false
tfm.exec.respawnPlayer(playerName)
tfm.exec.movePlayer(playerName,block.x,block.y-10,false,0,0,false)
end

-- Listening for eventKeyboardSpace.
function eventKeyboard(playerName, keyCode, down, xPlayerPosition, yPlayerPosition)
if gameEnded == false then
xDistance = math.abs(xPlayerPosition - xBonus)
yDistance = math.abs(yPlayerPosition - yBonus)
if xDistance < 48 and yDistance < 48 and tfm.get.room.playerList[playerName].isDead == false then
setMapTitle(playerName .. " " .. bonus[iBonus].title)
tfm.exec.displayParticle(15, xPlayerPosition, yPlayerPosition, 0, 0, 0, 0, nil)
tfm.exec.setPlayerScore(playerName, 20, true)
giveBonus(playerName)
newBonus()
elseif tfm.get.room.playerList[playerName].isDead == true then
respawn(playerName)
end
end
end

-- Giving bonus.
function giveBonus(playerName)
if iBonus == 1 then
tfm.exec.snow(5,20)
for i=0,20 do
block = blockList[math.random(1,#blockList)]
for n=0, 3 do
tfm.exec.displayParticle(3, block.x, block.y, math.random(-1,1)*math.random(), math.random(-1,1)*math.random(), 0, 0, nil)
end
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=1, height=10, width=10, angle=45, friction=0, restitution=0.2, dynamic=false})
block.type = 1
block.height = 10
block.width = 10
block.angle = 45
block.friction = 0
block.restitution = 0.2
block.dynamic = false
end
elseif iBonus == 2 then
for i=0,20 do
block = blockList[math.random(1,#blockList)]
for n=0, 3 do
tfm.exec.displayParticle(3, block.x, block.y, math.random(-1,1)*math.random(), math.random(-1,1)*math.random(), 0, 0, nil)
end
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=2, height=10, width=10, angle=45, friction=0, restitution=1.2, dynamic=false})
block.type = 2
block.height = 10
block.width = 10
block.angle = 45
block.friction = 0
block.restitution = 1.2
block.dynamic = false
end
elseif iBonus == 3 then
for i=0,20 do
block = blockList[math.random(1,#blockList)]
for n=0, 3 do
tfm.exec.displayParticle(3, block.x, block.y, math.random(-1,1)*math.random(), math.random(-1,1)*math.random(), 0, 0, nil)
end
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=3, height=10, width=10, angle=45, friction=0, restitution=20, dynamic=false})
block.type = 3
block.height = 10
block.width = 10
block.angle = 45
block.friction = 0
block.restitution = 20
block.dynamic = false
end
elseif iBonus == 4 then
for i=0,40 do
block = blockList[math.random(1,#blockList)]
for n=0, 3 do
tfm.exec.displayParticle(3, block.x, block.y, math.random(-1,1)*math.random(), math.random(-1,1)*math.random(), 0, 0, nil)
end
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=6,height=15,width=15,angle=0,friction=0.3,restitution=0.2,dynamic=false})
block.type = 6
block.height = 15
block.width = 15
block.angle = 0
block.friction = 0.3
block.restitution = 0.2
block.dynamic = false
end
elseif iBonus == 5 then
for n=1,#blockList do
block = blockList[n]
if block.dynamic == false then
angle = block.angle
if angle == 0 then
angle = 45
else
angle = 0
end
tfm.exec.addPhysicObject(block.id, block.x, block.y, {type=block.type,height=block.height,width=block.width,angle=angle,friction=block.friction,restitution=block.restitution,dynamic=false})
block.type = block.type
block.height = block.height
block.width = block.width
block.angle = angle
block.friction = block.friction
block.restitution = block.restitution
block.dynamic = false
end
end
end
end

-- Changelog

changelog = "<p align='center'><font size='26'> Escalade Version 1.4 </font></p><br /><br />"
changelog = changelog .. "• Adding new particles in game.<br />"
changelog = changelog .. "• Chocolate blocks are smaller.<br />"
changelog = changelog .. "• Jump before your death to respawn immediately.<br />"
changelog = changelog .. "• The bonus are teleported to another location every 20 seconds.<br />"

ui.addPopup(0, 0, changelog, nil, 200, 100, 400, true)