fireworks = true
gameTime = 0
pumpkin = nil
nbPumpkins = 0
ySpawn = 50
function eventLoop(a, b)
if gameTime%2 == 0 and fireworks == false then
if pumpkin ~= nil then
pumpkinObject = tfm.get.room.objectList[pumpkin]
if pumpkinObject.y < 325 then
tfm.exec.displayParticle(16, 400, 200, 0, 0, 0, -0.05, nil)
tfm.exec.setPlayerScore(player, 10, true)
ySpawn = ySpawn + 5
else
for i=0, 5 do
tfm.exec.displayParticle(6, pumpkinObject.x, pumpkinObject.y, math.random(-1,1)*math.random()*math.random(), -math.random()*math.random(), 0, 0, nil)
end
end
tfm.exec.removeObject(pumpkin)
end
if tfm.get.room.playerList[player].score + 10 >= 250 then
system.bindMouse(player, false)
tfm.exec.removeObject(trampoline)
tfm.exec.setPlayerScore(player, nbPumpkins, false)
fireworks = true
else
xRandom = math.random(35, 765)
for i=0, 5 do
tfm.exec.displayParticle(3, xRandom, ySpawn, math.random(-1,1)*math.random(), math.random(-1,1)*math.random(), 0, 0, nil)
end
pumpkin = tfm.exec.addShamanObject(89, xRandom, ySpawn, 0, math.random(-1,1), math.random(0,10), false)
nbPumpkins = nbPumpkins + 1
end
elseif fireworks == true then
xFeu = math.random(50,750)
yFeu = math.random(50,350)
kMax = math.random(20,50)
for k=0,kMax do
tfm.exec.displayParticle(5,xFeu,yFeu,math.random(-3,3)*math.random(),math.random(-3,3)*math.random(),0,0,nil)
tfm.exec.displayParticle(5,xFeu,yFeu,math.random(-3,3)*math.random(),math.random(-3,3)*math.random(),0,0,nil)
tfm.exec.displayParticle(5,xFeu,yFeu,math.random(-3,3)*math.random(),math.random(-3,3)*math.random(),0,0,nil)
tfm.exec.displayParticle(5,xFeu,yFeu,math.random(-3,3)*math.random(),math.random(-3,3)*math.random(),0,0,nil)
end
end
gameTime = gameTime + 0.5
end