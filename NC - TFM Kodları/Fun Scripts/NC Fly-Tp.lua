
function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,32,true,true)
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end

function eventKeyboard(name,key,down,x,y)
if key==32 then
tfm.exec.movePlayer(name,0,0,true,0,-70,false)
end
end
------------------------------------------------------------------------
function eventLoop(ct,tr)
for name,player in pairs(tfm.get.room.playerList) do
if(tfm.get.room.playerList[name].movingLeft) then
tfm.exec.movePlayer(name,nil,nil,false,-150,nil,false)
else if(tfm.get.room.playerList[name].movingRight) then
tfm.exec.movePlayer(name,nil,nil,false,150,nil,false)
end
end
end
end
------------------------------------------------------------------------
function main()
for name in pairs (tfm.get.room.playerList) do
eventNewPlayer (name)
end
end

function eventNewPlayer (playerName)
system.bindMouse (playerName, true)
end

function eventMouse (name, mx, my)
tfm.exec.movePlayer (name, mx, my)
end

main()