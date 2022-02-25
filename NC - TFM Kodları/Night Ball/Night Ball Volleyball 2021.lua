tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)


function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerWon(playerName)
tfm.exec.respawnPlayer(playerName)
end


for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)


tfm.exec.newGame('<C><P L="1600" /><Z><S><S X="1300" o="b0b43" L="1000" Y="200" c="4" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="302" o="570a08" L="1000" Y="200" c="4" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="645" o="5c5b5a" L="100" Y="202" c="4" H="100" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="10" Y="125" c="1" H="250" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="5c5b5a" L="200" Y="325" c="4" H="150" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="955" o="5c5b5a" L="100" Y="202" c="4" H="100" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="1495" Y="250" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="900" o="0" L="10" Y="275" H="250" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="2000" Y="400" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="2000" Y="0" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="-195" o="0" L="10" Y="200" c="1" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="175" o="0" L="750" Y="325" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="-66" o="0" L="350" Y="127" H="10" P="0,0,0.3,0.2,45,0,0,0" T="12" /><S X="1425" o="0" L="750" Y="325" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="1795" o="0" L="10" Y="200" c="1" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="1666" o="0" L="350" Y="127" H="10" P="0,0,0.3,0.2,-45,0,0,0" T="12" /><S X="700" o="0" L="10" Y="275" H="250" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="591" o="f" L="10" Y="200" H="96" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="645" o="f" L="117" Y="155" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="1009" o="f" L="10" Y="200" H="96" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="955" o="f" L="117" Y="155" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /></S><D><DS X="801" Y="348" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<s>NC Transfer")


function eventChatCommand(name,c,komut)

if c=="ykv" then
tfm.exec.newGame('@7820200')
tfm.exec.setUIMapName("<s>NC Small Volleyball")
end


if c=="transfermarket" then
tfm.exec.newGame('<C><P L="1600" /><Z><S><S X="1300" o="b0b43" L="1000" Y="200" c="4" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="302" o="570a08" L="1000" Y="200" c="4" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="645" o="5c5b5a" L="100" Y="202" c="4" H="100" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="10" Y="125" c="1" H="250" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="5c5b5a" L="200" Y="325" c="4" H="150" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="955" o="5c5b5a" L="100" Y="202" c="4" H="100" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="1495" Y="250" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="900" o="0" L="10" Y="275" H="250" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="2000" Y="400" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="800" o="0" L="2000" Y="0" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="-195" o="0" L="10" Y="200" c="1" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="175" o="0" L="750" Y="325" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="-66" o="0" L="350" Y="127" H="10" P="0,0,0.3,0.2,45,0,0,0" T="12" /><S X="1425" o="0" L="750" Y="325" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="1795" o="0" L="10" Y="200" c="1" H="400" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="1666" o="0" L="350" Y="127" H="10" P="0,0,0.3,0.2,-45,0,0,0" T="12" /><S X="700" o="0" L="10" Y="275" H="250" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="591" o="f" L="10" Y="200" H="96" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="645" o="f" L="117" Y="155" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="1009" o="f" L="10" Y="200" H="96" P="0,0,0.3,0.2,0,0,0,0" T="12" /><S X="955" o="f" L="117" Y="155" H="10" P="0,0,0.3,0.2,0,0,0,0" T="12" /></S><D><DS X="801" Y="348" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<s>NC Transfer")
end


if c=="s1" then
tfm.exec.addShamanObject(608,125,100)
tfm.exec.movePlayer(name,120,350)
ui.addTextArea(3,"<font size='10'><B><J>Maç başlıyor.",playerList,5,380,00,00,0x3A271C,0x00000,0.99999,true)
end

if c=="s2" then
tfm.exec.addShamanObject(608,675,100)
tfm.exec.movePlayer(name,680,350)
ui.addTextArea(3,"<font size='10'><B><J>Maç başlıyor.",playerList,5,380,00,00,0x3A271C,0x00000,0.99999,true)
end


-- Küçük Saha Kodları

if c=="rk" then
tfm.exec.setNameColor(name , 0xFF0000)
tfm.exec.movePlayer(name,150,300)
end


if c=="bk" then
tfm.exec.setNameColor(name , 0x008EFF)
tfm.exec.movePlayer(name,650,300)
end

if c=="spec" then
tfm.exec.killPlayer(name)
tfm.exec.respawnPlayer(name)
end





--süre

if c=="time 60" then
tfm.exec.setGameTime(60)
end
if c=="time 120" then
tfm.exec.setGameTime(120)
end
if c=="time 180" then
tfm.exec.setGameTime(180)
end
if c=="time 240" then
tfm.exec.setGameTime(240)
end
if c=="time 300" then
tfm.exec.setGameTime(300)
end
if c=="time 360" then
tfm.exec.setGameTime(360)
end
if c=="time 420" then
tfm.exec.setGameTime(420)
end
if c=="time 490" then
tfm.exec.setGameTime(480)
end
if c=="time 540" then
tfm.exec.setGameTime(540)
end
if c=="time 600" then
tfm.exec.setGameTime(600)
end
if c=="time 660" then
tfm.exec.setGameTime(660)
end
if c=="time 720" then
tfm.exec.setGameTime(720)
end
if c=="time 780" then
tfm.exec.setGameTime(790)
end
if c=="time 840" then
tfm.exec.setGameTime(840)
end
if c=="time 900" then
tfm.exec.setGameTime(900)
end
if c=="time 960" then
tfm.exec.setGameTime(960)
end
if c=="time 1020" then
tfm.exec.setGameTime(1020)
end
if c=="time 1080" then
tfm.exec.setGameTime(1080)
end
if c=="time 1140" then
tfm.exec.setGameTime(1140)
end
if c=="time 1200" then
tfm.exec.setGameTime(1200)
end


local IDList = {}
if c=="clear" then
for id, object in pairs(tfm.get.room.objectList) do
table.insert(IDList, id)
end
for i, id in pairs(IDList) do
tfm.exec.removeObject(id)
ui.addTextArea(3,"<font size='10'><B>Saha temizlendi.",playerList,5,380,00,00,0x3A271C,0x00000,0.99999,true)
end
end

--kaptan

if c=="cptred" then
tfm.exec.movePlayer(name,750,200)
end

if c=="cptblue" then
tfm.exec.movePlayer(name,850,200)
end
end
end
