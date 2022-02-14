tfm.exec.disableMinimalistMode (true)
tfm.exec.disableDebugCommand (true)
tfm.exec.disableMortCommand (true)
tfm.exec.disableWatchCommand (true)
tfm.exec.disableAfkDeath (true)
tfm.exec.disableAutoScore (true)
tfm.exec.disableAutoShaman (true)
tfm.exec.disableAutoTimeLeft (true)
tfm.exec.disableAutoNewGame (true)
map={"@7245074","@3531599","@6777390","@6916197","@6916197"}

local settings = {
  maxVX = 150,
  maxVY = 150,
}

players = {}

function pythag(x1,y1,x2,y2,r)
	local x=x2-x1
	local y=y2-y1
	local r=r+r
	return x*x+y*y<r*r
end

admins={Nıckname=1} ------------------ nick name
t = {2807}
despawn = {}
tfm.exec.newGame(map[math.random(#map)])
ara = 10
suresi=30
timer=suresi
zaman=120
ozlk1=0
ozlk2=0
ozlk3=0
function eventNewPlayer(name)
	players[name] = {
		spawned = true,
	}
	for name in pairs(admins) do
	system.bindMouse(name, true)
	end
system.bindKeyboard(name, 32, true, true) system.bindKeyboard(name, 88, true, true) system.bindKeyboard(name, 90, true, true) system.bindKeyboard(name, 67, true, true)
if zaman>=60 then
tfm.exec.respawnPlayer(name)
ebe = name
timer=suresi
end
end
function eventChatCommand(name,cmd)
local args={}
for arg in cmd:gmatch("%S+") do
table.insert(args,arg)
end
if args[1]=="ebe" and admins[name] and tfm.get.room.playerList[args[2]] then
ebe = args[2]
timer=suresi
end
if cmd=="r" and admins[name] then
tfm.exec.respawnPlayer(name)
end
end
function eventNewGame()
tfm.exec.setUIMapName("<r>#<r><b>Run</b><v><b>Catch</b>")
zaman=120
ebem = {}
for name,player in pairs(tfm.get.room.playerList) do
if player.isDead~=true then
table.insert(ebem,name)
ebe = ebem[math.random(#ebem)]
end
end
end
for name in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
function eventPlayerDied(name)
if name==ebe then
ebem = {}
for name,player in pairs(tfm.get.room.playerList) do
if player.isDead~=true then
table.insert(ebem,name)
ebe = ebem[math.random(#ebem)]
timer=suresi
end
end
end
local i=0
local n
for pname,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
n=pname
end
end
if i==1 then
tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
tfm.exec.newGame(map[math.random(#map)])
end
end
function eventPlayerLeft(name)
if name==ebe then
ebem = {}
for name,player in pairs(tfm.get.room.playerList) do
if player.isDead~=true then
table.insert(ebem,name)
ebe = ebem[math.random(#ebem)]
timer=suresi
end
end
end
end

function eventMouse(playerName, x, y)
	if players[playerName].spawned then
		for name, player in pairs(tfm.get.room.playerList) do
			if pythag(x, y, player.x, player.y, 25) and playerName ~= name then
				local playerData = tfm.get.room.playerList[playerName]
ebe= ""..name..""
timer=suresi
			end
		end
	end
end

function getSpeed(data, data2)
  local abs = math.abs

  local direction = {x = 1, y = 1}
  if data.x < data2.x then direction.x = -1 end
  if data.y < data2.y then direction.y = -1 end

  local speed = {
    x = abs(data.x - data2.x) / 3,
    y = abs(data.y - data2.y) / 3,
  }
  if speed.x > settings.maxVX then speed.x = settings.maxVX end
  if speed.y > settings.maxVY then speed.y = settings.maxVY end
  speed.x = speed.x * direction.x
  speed.y = speed.y * direction.y

  return speed
end
function eventKeyboard(n, key, down, x, y)
	if key == 32 and  n==ebe and zaman<=115 then
	    	for o, data in pairs(tfm.get.room.playerList) do

		local xU, yU = math.abs(x - data.x), math.abs(y - data.y)
      			if xU < ara and yU < ara and o ~= ebe then
				if data.isDead~=true then
				      ebe= o
					  ozlk1=0
	ozlk3=0
			ozlk2=0
						end
end
    		end
	end
		if key == 88 and  n==ebe and zaman<=115 and ozlk1>=6 then
		ozlk1=0
		  local data = tfm.get.room.playerList[ebe]
  if data and not data.isDead then
    for attracted, data2 in pairs(tfm.get.room.playerList) do
      if attracted ~= ebe then
        local speed = getSpeed(data, data2)
        tfm.exec.movePlayer(attracted, 0, 0, false, speed.x, speed.y, true)
      end
    end
		end
		end
				if key == 90 and  n==ebe and zaman<=115 and ozlk2>=8 then
		ozlk2=0
				tfm.exec.movePlayer(ebe, 0, 0, false, 0, -100, true)
				end
				if key == 67 and  n==ebe and zaman<=115 and ozlk3>=3 then
		ozlk3=0
		for k,v in ipairs(t) do
local id = 		tfm.exec.addShamanObject(v,x,y+30,0,0,0)
table.insert(despawn,{os.time(),id})
end
				end
end
function eventLoop()
for i,obj in ipairs(despawn) do
if obj[1] <= os.time()-2000 then
tfm.exec.removeObject(obj[2])
table.remove(despawn,i)
end
end
ui.removeTextArea(3,nil)
ui.removeTextArea(4,nil)
ui.removeTextArea(5,nil)
ui.removeTextArea(6,nil)
ui.removeTextArea(7,nil)
ui.removeTextArea(8,nil)
ui.removeTextArea(9,nil)
if zaman<=115 and timer>=0.5 then
timer=timer-0.5
ozlk1=ozlk1+0.5
ozlk2=ozlk2+0.5
ozlk3=ozlk3+0.5
end
if ebe and ozlk2<=7 then
ui.addTextArea(8, "", ebe, 619, 358, 49, 37, 0x324650, 0x324650, 1, true)
ui.addTextArea(9, "<font size='20'><b><p align='center'><r>Z", ebe, 623, 363, 42, 30, 0x1e2122, 0x0, 1, true)
end
if ebe and ozlk2>=8 then
ui.addTextArea(8, "", ebe, 619, 358, 49, 37, 0x324650, 0x324650, 1, true)
ui.addTextArea(9, "<font size='20'><b><p align='center'><vp>Z", ebe, 623, 363, 42, 30, 0x1e2122, 0x0, 1, true)
end
if ebe and ozlk1<=5 then
ui.addTextArea(6, "", ebe, 682, 357, 49, 37, 0x324650, 0x324650, 1, true)
ui.addTextArea(7, "<font size='20'><b><p align='center'><r>X", ebe, 685, 362, 42, 30, 0x1e2122, 0x0, 1, true)
end
if ebe and ozlk1>=6 then
ui.addTextArea(6, "", ebe, 682, 357, 49, 37, 0x324650, 0x324650, 1, true)
ui.addTextArea(7, "<font size='20'><b><p align='center'><vp>X", ebe, 685, 362, 42, 30, 0x1e2122, 0x0, 1, true)
end
if ebe and ozlk3<=2 then
ui.addTextArea(5, "", ebe, 745, 357, 49, 37, 0x324650, 0x324650, 1, true)
ui.addTextArea(4, "<font size='20'><b><p align='center'><r>C", ebe, 749, 362, 42, 30, 0x1e2122, 0x0, 1, true)
end 
if ebe and ozlk3>=3 then
ui.addTextArea(5, "", ebe, 745, 357, 49, 37, 0x324650, 0x324650, 1, true)
ui.addTextArea(4, "<font size='20'><b><p align='center'><vp>C", ebe, 749, 362, 42, 30, 0x1e2122, 0x0, 1, true)
end 
if zaman==115 then
ui.addTextArea(3, "<font size='35'><p align='center'><vp><b>Başla !", nil, 488, 358, 307, 59, 0x1, 0x1, 0.7, true)
end
if zaman==116 then
ui.addTextArea(3, "<font size='35'><p align='center'><vp><b>1 <r>- 2 <r>- 3 <r>- 4 - 5", nil, 488, 358, 307, 59, 0x1, 0x1, 0.7, true)
end
if zaman==117 then
ui.addTextArea(3, "<font size='35'><p align='center'><r><b>1 - <vp>2 <r>- 3 <r>- 4 - 5", nil, 488, 358, 307, 59, 0x1, 0x1, 0.7, true)
end
if zaman==118 then
ui.addTextArea(3, "<font size='35'><p align='center'><r><b>1 - 2 - <vp>3 <r>- 4 - 5", nil, 488, 358, 307, 59, 0x1, 0x1, 0.7, true)
end
if zaman==119 then
ui.addTextArea(3, "<font size='35'><p align='center'><r><b>1 - 2 - 3 - <vp>4 <r>- 5", nil, 488, 358, 307, 59, 0x1, 0x1, 0.7, true)
end
if zaman==120 then
ui.addTextArea(3, "<font size='35'><p align='center'><r><b>1 - 2 - 3 - 4 - <vp>5", nil, 488, 358, 307, 59, 0x1, 0x1, 0.7, true)
end
zaman=zaman-0.5
if zaman>=5 then
tfm.exec.setGameTime(zaman)
end
ui.addTextArea(1,"<r><b>[Ebe]<v> "..ebe.." <b><vp>"..math.floor(timer).."",nil,tfm.get.room.playerList[ebe].x-45,tfm.get.room.playerList[ebe].y-65,nil,nil,0x1,0x1,0.6)
if timer<=0 then
tfm.exec.killPlayer(ebe)
end
end