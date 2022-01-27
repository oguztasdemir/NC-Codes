color={}
block={}
blockk=20
function eventNewPlayer(name)
system.bindMouse(name, true)
color[name]={x=0x0,y=0x0}
block[name]={bolock=0,ozel=0,ozelaktf=0,boyut=1}
end


tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.newGame('@6742788')

tfm.exec.setUIMapName("<VP> Night Club Draw")

function eventLoop()
for name in pairs(color) do
if block[name].ozelaktf==0 then
ui.addTextArea(1, "", name, 10, 339, 45, 41, color[name].x, color[name].y, 1, true)
end
if block[name].ozelaktf>=1 then
ui.addTextArea(1, "", name, 10, 339, 45, 41, block[name].ozel, block[name].ozel, 1, true)
end
ui.addTextArea(0, "<a href='event:siyahcesit'><font size='60'>Siyah", name, 8, 257, 18, 19, 0x1, 0x1, 1, true)
ui.addTextArea(2, "<a href='event:beyaz'><font size='60'>Beyaz", name, 35, 273, 18, 17, 0xFFFFFF, 0xFFFFFF, 1, true)
ui.addTextArea(3, "<a href='event:clear'><b><bv>C", name, 5, 25, name, nil, 0x0, 0x1, 1, true)
ui.addTextArea(4, "<a href='event:red'><font size='60'>Kirmizi", name, 62, 293, 18, 17, 0xff0000, 0xff0000, 1, true)
ui.addTextArea(5, "<a href='event:grnmez'><font size='60'>Renk", name, 7, 224, 18, 19, 0x6a7497, 0x6a7497, 1, true)
ui.addTextArea(6, "<a href='event:blue'><font size='60'>Mavi", name, 89, 313, 18, 17, 0x1a67a3, 0x1a67a3, 1, true)
ui.addTextArea(7, "<a href='event:purple'><font size='60'>Patates", name, 91, 343, 18, 17, 0xc800ff, 0xc800ff, 1, true)
ui.addTextArea(8, "<r><a href='event:ozel'>R</a> <g>- <bv><a href='event:boyut'>B ", name, 12, 312, 36, 17, 0x1, 0x1, 1, true)
end
end
for name in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
function eventTextAreaCallback(id,name,cb)
if cb=="siyahcesit" then
color[name]={x=0x1,y=0x1}
block[name]={ozel=block[name].ozel,ozelaktf=0,boyut=block[name].boyut}
tfm.exec.setNameColor(name,color[name].x)
if block[name].ozelaktf>=1 then
tfm.exec.setNameColor(name,block[name].ozel)
end
end
if cb=="boyut" then
ui.addPopup(0, 2, "Boyut Ayarla 0/25 arasý", name, 595, 110, 200, true)
end
if cb=="ozel" then
ui.showColorPicker(1,name,000000,"Özel Renk")
end
if cb=="blue" then
color[name]={x=0x1a67a3,y=0x1a67a3}
block[name]={ozel=block[name].ozel,ozelaktf=0,boyut=block[name].boyut}
tfm.exec.setNameColor(name,color[name].x)
if block[name].ozelaktf>=1 then
tfm.exec.setNameColor(name,block[name].ozel)
end
end
if cb=="purple" then
color[name]={x=0xc800ff,y=0xc800ff}
block[name]={ozel=block[name].ozel,ozelaktf=0,boyut=block[name].boyut}
tfm.exec.setNameColor(name,color[name].x)
if block[name].ozelaktf>=1 then
tfm.exec.setNameColor(name,block[name].ozel)
end
end
if cb=="red" then
color[name]={x=0xff0000,y=0xff0000}
block[name]={ozel=block[name].ozel,ozelaktf=0,boyut=block[name].boyut}
tfm.exec.setNameColor(name,color[name].x)
if block[name].ozelaktf>=1 then
tfm.exec.setNameColor(name,block[name].ozel)
end
end
if cb=="grnmez" then
color[name]={x=0x6a7497,y=0x6a7497}
block[name]={ozel=block[name].ozel,ozelaktf=0,boyut=block[name].boyut}
tfm.exec.setNameColor(name,color[name].x)
if block[name].ozelaktf>=1 then
tfm.exec.setNameColor(name,block[name].ozel)
end
end
if cb=="clear" then
for i=1,blockk do
ui.removeTextArea(i,nill)
end
end
if cb=="beyaz" then
color[name]={x=0xFFFFFF,y=0xFFFFFF}
block[name]={ozel=block[name].ozel,ozelaktf=0,boyut=block[name].boyut}
tfm.exec.setNameColor(name,color[name].x)
if block[name].ozelaktf>=1 then
tfm.exec.setNameColor(name,block[name].ozel)
end
end
end
function eventColorPicked(id,name,color)
block[name].ozel=""..color..""
block[name].ozelaktf=block[name].ozelaktf+1
tfm.exec.setNameColor(name,block[name].ozel)
end
function eventMouse(name,x,y)
blockk=blockk+1
ui.addTextArea(blockk, "", nil, x, y, block[name].boyut, block[name].boyut, color[name].x, color[name].y, 1)
if block[name].ozelaktf>=1 then
ui.addTextArea(blockk, "", nil, x, y, block[name].boyut, block[name].boyut, block[name].ozel, block[name].ozel, 1)
tfm.exec.setNameColor(name,block[name].ozel)
end
end
function eventPlayerLeft(name)
for i=1,blockk do
ui.removeTextArea(i,nill)
end
end


function eventPopupAnswer(id, name, anw)
if id==0 then
if tonumber(anw) then
block[name].boyut=block[name].boyut-block[name].boyut
block[name].boyut=block[name].boyut+tonumber(anw)
end
end
if block[name].boyut>=25 then
block[name]={ozel=block[name].ozel,ozelaktf=block[name].ozelaktf,boyut=25}
end
end