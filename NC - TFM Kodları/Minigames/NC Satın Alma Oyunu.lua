for _,v in pairs ({'disableAutoNewGame','disableAutoShaman','disableAutoTimeLeft','disableAutoScore','disableAfkDeath'}) do
	tfm.exec[v](true)
end
p={}
function eventNewPlayer(name)
p[name]={para=0}
end
for name in pairs(tfm.get.room.playerList) do 
eventNewPlayer(name) 
ui.addTextArea(1241515166561, "<bv><b><font size='15'>Paran = <j> "..p[name].para.."", nil, 694, 25, nil, nil, 0x31393d)
end
tfm.exec.newGame("@7085861")
admins={Muutluerkek=true}
for na in pairs(admins) do
ui.addTextArea(41, "<p align='center'><r><a href='event:panel'><b>[s]", na, 373, 26, 26, 21, 0x1, 0x1, 0,true)
end
ui.addTextArea(1, "<p align='center'><a href='event:al'>Odayı Al", nil, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
function eventTextAreaCallback(id,name,cb)
if cb=="al" and p[name].para>=10 then
p[name].para=p[name].para-10
ui.addTextArea(1241515166561, "<bv><b><font size='15'>Paran = <j> "..p[name].para.."", nil, 694, 25, nil, nil, 0x31393d)
ui.removeTextArea(1,nil)
ui.addTextArea(5, "Sahibi "..name.."", nil,  55, 222, nil, nil, 0x0, 0x4e9e)
ui.addTextArea(1, "<p align='center'><a href='event:kt'>Odayı Kitle", name, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
ui.addTextArea(2, "<p align='center'><a href='event:birak'>Odayı Sal", name, 133, 31, 100, 29, 0x0, 0x4e9e,1,true)
ui.addTextArea(6, "<p align='center'><a href='event:dvt'>Herkesi Davet et", name, 246, 31, 107, 29, 0x0, 0x4e9e, 1, true)
end
if cb=="kt" then
ui.addTextArea(1234141, "", nil, 330, 241, 16, 136, 0x1, 0x1, 0.7)
ui.removeTextArea(1,nil)
tfm.exec.addPhysicObject(1, 340, 300, {type=12, friction=0.3, height=136, width=16})
ui.addTextArea(1, "<p align='center'><a href='event:ac'>Odayı Ac", name, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
end
if cb=="ac" then
ui.removeTextArea(1234141,nil)
ui.addTextArea(1, "<p align='center'><a href='event:kt'>Odayı Kitle", name, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
tfm.exec.removePhysicObject(1)
end
if cb=="kapizorla" then
ui.removeTextArea(1234141,nil)
tfm.exec.removePhysicObject(1)
end
if cb=="panel" then
ui.removeTextArea(41,name)
ui.addTextArea(42, "<p align='center'><font size='30'><b><j>Oda <bv>1 <r><a href='event:oda1islem'>İslemler", name, 205, 71, 355, 246, 0x141617, 0x2d2525,1,true)
ui.addTextArea(43, "<p align='center'><font size='15'><r><a href='event:admclose'>[KAPAT]", name, 206, 330, 355, 25, 0x141617, 0x2d2525,1,true)
end
if cb=="oda1islem" then
ui.addTextArea(45, "<p align='center'><font size='30'><b><j>Oda <bv>1 <r><br><br><font size='10'><a href='event:oda1sal'>Oda Sal<br><bv><a href='event:oda1save'>Kendine al<br><a href='event:kabl'><vp>İçeri gir<br><a href='event:kapizorla'><v>Kapi Ac<a href='event:oda1kapikpt'><br><t>Kapi Kapat<br><a href='event:admdvt'>Herkese Davet<br><G><a href='event:odaver'>Odayı Ver", name, 571, 71, 210, 246, 0x141617, 0x2d2525,1,true)
end

if cb=="admclose" then
ui.addTextArea(41,"<p align='center'><r><a href='event:panel'><b>[s]", name, 373, 26, 26, 21, 0x1, 0x1, 0,true)
ui.removeTextArea(42,name)
ui.removeTextArea(43,name)
ui.removeTextArea(45,name)
end

if cb=="dvt" then
ui.addTextArea(9, "<p align='center'><j>"..name.." <br><p align=''><bv><br>Tarafından<br>odaya Davet Aldınız<br><br><p align='center'><v><a href='event:kabl'>Kabul <vp>-<r><a href='event:iptl'> İptal", nil, 273, 152, 219, 120, 0x0, 0x4e9e, 1, true)
ui.removeTextArea(9,name)
end
if cb=="admdvt" then
ui.addTextArea(12451561, "<p align='center'><j>"..name.." <br><p align=''><bv><br>Tarafından<br>odaya Davet Aldınız<br><br><p align='center'><v><a href='event:kabl'>Kabul <vp>-<r><a href='event:iptl'> İptal", nil, 273, 152, 219, 120, 0x0, 0x4e9e, 1, true)
ui.removeTextArea(12451561,name)
end
if cb=="oda1kapikpt" then
ui.addTextArea(1234141, "", nil, 330, 241, 16, 136, 0x1, 0x1, 0.7)
tfm.exec.addPhysicObject(1, 340, 300, {type=12, friction=0.3, height=136, width=16})
end
if cb=="odaver" then
ui.addPopup(0, 2, "<font color='#BABD2F'>Odayı Kime Vereceksin ?", name, 300, 164, 200, true)
end
if cb=="kabl" then
tfm.exec.movePlayer(name, 315, 363, false, 0, 1, false)
ui.removeTextArea(9,name)
ui.removeTextArea(12451561,name)
end
if cb=="iptl" then
ui.removeTextArea(9,name)
ui.removeTextArea(12451561,name)
end
if cb=="oda1save" then
ui.removeTextArea(1234141,nil)
ui.removeTextArea(1,nil)
ui.removeTextArea(2,nil)
ui.removeTextArea(5,nil)
ui.removeTextArea(0,nil)
ui.removeTextArea(6,nil)

tfm.exec.removePhysicObject(1)
ui.addTextArea(5, "Sahibi "..name.."", nil,  55, 222, nil, nil, 0x0, 0x4e9e)
ui.addTextArea(0, "<p align='center'><a href='event:kt'>Odayı Kitle", name, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
ui.addTextArea(2, "<p align='center'><a href='event:birak'>Odayı Sal", name, 133, 31, 100, 29, 0x0, 0x4e9e,1,true)
ui.addTextArea(6, "<p align='center'><a href='event:dvt'>Herkesi Davet et", name, 246, 31, 107, 29, 0x0, 0x4e9e, 1, true)
end

if cb=="oda1sal" then
ui.removeTextArea(1234141,nil)
ui.removeTextArea(1,nil)
ui.removeTextArea(2,nil)
ui.removeTextArea(5,nil)
ui.removeTextArea(0,nil)
ui.removeTextArea(6,nil)
ui.removeTextArea(45,nil)
tfm.exec.removePhysicObject(1)
ui.addTextArea(41,"<p align='center'><r><a href='event:panel'><b>[s]", name, 373, 26, 26, 21, 0x1, 0x1, 0,true)
ui.addTextArea(1, "<p align='center'><a href='event:al'>Odayı Al", nil, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
end
if cb=="birak" then
ui.removeTextArea(1,name)
ui.removeTextArea(2,name)
ui.removeTextArea(0,name)
tfm.exec.removePhysicObject(1)
ui.removeTextArea(5,nil)
ui.removeTextArea(6,name)
ui.removeTextArea(1234141,nil)
ui.addTextArea(1, "<p align='center'><a href='event:al'>Odayı Al", nil, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
end
end

function eventPopupAnswer(id,n,cmd)
if id==0 then
ui.addTextArea(41,"<p align='center'><r><a href='event:panel'><b>[s]", n, 373, 26, 26, 21, 0x1, 0x1, 0,true)
ui.removeTextArea(42,name)
ui.removeTextArea(43,name)
ui.removeTextArea(45,name)
ui.removeTextArea(1,name)
ui.removeTextArea(2,name)
ui.removeTextArea(0,name)
tfm.exec.removePhysicObject(1)
ui.removeTextArea(5,nil)
ui.removeTextArea(6,name)
ui.removeTextArea(1234141,nil)
ui.addTextArea(5, "Sahibi "..cmd.."", nil,  55, 222, nil, nil, 0x0, 0x4e9e)
ui.addTextArea(0, "<p align='center'><a href='event:kt'>Odayı Kitle", cmd, 16, 31, 100, 29, 0x0, 0x4e9e,1,true)
ui.addTextArea(2, "<p align='center'><a href='event:birak'>Odayı Sal", cmd, 133, 31, 100, 29, 0x0, 0x4e9e,1,true)
ui.addTextArea(6, "<p align='center'><a href='event:dvt'>Herkesi Davet et", cmd, 246, 31, 107, 29, 0x0, 0x4e9e, 1, true)end
end

function eventPlayerDied()
for name in pairs(tfm.get.room.playerList) do
if tfm.get.room.playerList[name] then
local y = tfm.get.room.playerList[name].y
local x = tfm.get.room.playerList[name].x
tfm.exec.respawnPlayer(name)
tfm.exec.movePlayer(name,x,y)
end
end
end
function eventPlayerWon(name)
p[name].para=p[name].para+1
tfm.exec.respawnPlayer(name)
end

function eventLoop()
for name in pairs(p) do
ui.addTextArea(1241515166561, "<bv><b><font size='15'>Paran = <j> "..p[name].para.."", name, 694, 25, nil, nil, 0x31393d)
end
for adm in pairs(admins) do
tfm.exec.setNameColor(adm,0x005695)
end
end