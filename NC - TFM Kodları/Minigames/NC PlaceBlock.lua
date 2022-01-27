-- By Nicolasledu
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.newGame(0)

prop = {}
prop[0] = {type=0,width=40,height=40,friction=0.3,restitution=0.2}
prop[1] = {type=1,width=40,height=40,friction=0,restitution=0.2}
prop[2] = {type=2,width=40,height=40,friction=0,restitution=1.2}
prop[3] = {type=3,width=40,height=40,friction=0,restitution=20}
prop[4] = {type=4,width=40,height=40,friction=20,restitution=0.2}
prop[5] = {type=5,width=40,height=40,friction=0.3,restitution=0.2}
prop[6] = {type=6,width=40,height=40,friction=0.3,restitution=0.2}
prop[7] = {type=7,width=40,height=40,friction=0.1,restitution=0.2}
prop[8] = {type=8,width=40,height=40,friction=0.3,restitution=0.2,miceCollision=false}
prop[9] = {type=9,width=40,height=40,friction=0.3,restitution=0.2}
prop[10] = {type=10,width=40,height=40,friction=0.3,restitution=0}
prop[11] = {type=11,width=40,height=40,friction=0.05,restitution=0.1}
prop[12] = {type=12,width=40,height=40,friction=0.3,restitution=0.2,color=0xaaaaaa}
prop[13] = {type=13,width=20,friction=0.3,restitution=0.2,color=0xaaaaaa}



function eventTextAreaCallback(idt,name,callback)
	if callback=="place" then
		local bloc = blocplayer[name]
		tfm.exec.addPhysicObject(idt,blocx[idt] + 20,blocy[idt] + 20,prop[tonumber(bloc)] or prop[0])
		ui.addTextArea(idt, "<a href='event:remove'><p align='center'><font size='20'><r>•</font></p></a>", nil, blocx[idt] + 5, blocy[idt] +8, 30, 30,nil,nil,0,false)
	elseif callback=="remove" then
		tfm.exec.removePhysicObject(idt)
		ui.addTextArea(idt, "<a href='event:place'><p align='center'><font size='20'>•</font></p></a>", nil, blocx[idt] + 5, blocy[idt] +8, 30, 30,nil,nil,0,false)
	end
end
function eventNewPlayer(p)
tfm.exec.respawnPlayer(p)
end
function eventPlayerDied(p)
tfm.exec.respawnPlayer(p)
end
function eventPlayerWon(p)
tfm.exec.respawnPlayer(p)
end

function eventChatCommand(playerName, command)
	if command:sub(0,4) == "type" then
		blocplayer[playerName] = command:sub(5)
	end
end
function eventNewGame()
blocplayer = {}

for playerName,p in pairs(tfm.get.room.playerList) do
	blocplayer[playerName] = 0
end
xp = 0
yp = 0
id = 0
blocx = {}
blocy = {}
for a = 1,200 do
id = id + 1
blocx[id] = xp
blocy[id] = yp
ui.addTextArea(id, "<a href='event:place'><p align='center'><font size='20'>•</font></p></a>", nil, xp+5, yp+8, 30, 30,nil,nil,0,false)

xp = xp+40
if xp == 800 then
xp = 0
yp = yp + 40
end
end
end