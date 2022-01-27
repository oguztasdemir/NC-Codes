
noob = "drakathof#0000"

function eventNewPlayer(name)
	tfm.exec.bindKeyboard(name,77,true,true)
	tfm.exec.bindKeyboard(name,76,true,true)
	tfm.exec.bindKeyboard(name,75,true,true)
	tfm.exec.bindKeyboard(name,74,true,true)
end

for name,player in pairs(tfm.get.room.playerList) do
	eventNewPlayer(name)
end

function eventKeyboard(name,key,down,x,y)
if key==77 then -- droite m
tfm.exec.movePlayer(noob,0,0,true,50,0,false)
end
if key==76 then -- gauche l
tfm.exec.movePlayer(noob,0,0,true,-50,0,false)
end
if key==75 then -- bas k
tfm.exec.movePlayer(noob,0,0,true,0,100,false)
end
if key==74 then -- haut j
tfm.exec.movePlayer(noob,0,0,true,0,-70,false)
end
end
