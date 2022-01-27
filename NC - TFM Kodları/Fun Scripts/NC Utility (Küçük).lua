ui.addTextArea(50,"<p align='center'><a href='event:'><b>Þaman Ol</b></a></p>",name,5,30,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(40,"<p align='center'><a href='event:'><b>Peynir Ver</b></a></p>",name,5,60,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(30,"<p align='center'><a href='event:'><b>Vampir Ol</b></a></p>",name,5,90,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(20,"<p align='center'><a href='event:'><b>Kendini Öldür</b></a></p>",name,5,120,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(10,"<p align='center'><a href='event:'><b>Meep Ver</b></a></p>",name,5,150,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(1,"<p align='center'><a href='event:'><b>Ýsmini Renkli Yap</b></a></p>",name,5,180,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(5,"<p align='center'><a href='event:'><b>Canlan</b></a></p>",name,5,210,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(6,"<p align='center'><a href='event:'><b>Deliðe Gir</b></a></p>",name,5,240,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(123,"<p align='center'><a href='event:'><b>Kar Yaðdýr</b></a></p>",name,5,270,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(1234,"<p align='center'><a href='event:on'><b>Uçmak = Off</b></a></p>",name,5,300,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(1232,"<p align='center'><a href='event:ion'><b>Iþýnlanmak = Off</b></a></p>",name,5,330,150,20,0x000000,0xF8FF00,500,true)

ui.addTextArea(999,"<p align='center'><a href='event:'><b>Bu Kodu Zekabat Ve Barsems Yapmýþtýr</b></a></p>",name,300,200,200,30,0x000000,0xF8FF00,500,true)

fly="false"
tp="false"

function eventTextAreaCallback(id,n,en)
if (n) then
if (id == 10) then
tfm.exec.giveMeep(n)
elseif (id == 20) then
tfm.exec.killPlayer(n)
elseif (id == 999) then
ui.removeTextArea(999)
elseif (id == 30) then
tfm.exec.setVampirePlayer(n)
elseif (id == 40) then
tfm.exec.giveCheese(n)
elseif (id == 50) then
tfm.exec.setShaman(n)
elseif (id == 1) then
ui.addTextArea(2,"<p align='center'><a href='event:'><b>Yeþil</b></a></p>",name,165,180,150,20,0x000000,0xF8FF00,500,true)
ui.addTextArea(3,"<p align='center'><a href='event:'><b>Açýk Mavi</b></a></p>",name,325,180,150,20,0x000000,0xF8FF00,500,true)
ui.addTextArea(4,"<p align='center'><a href='event:'><b>Siyah</b></a></p>",name,485,180,150,20,0x000000,0xF8FF00,500,true)
elseif (id == 2) then
tfm.exec.setNameColor(n, 1212341593)
ui.removeTextArea(2)
ui.removeTextArea(3)
ui.removeTextArea(4)
elseif (id == 3) then
tfm.exec.setNameColor(n, 980200)
ui.removeTextArea(2)
ui.removeTextArea(3)
ui.removeTextArea(4)
elseif (id == 4) then
tfm.exec.setNameColor(n, 000020)
ui.removeTextArea(2)
ui.removeTextArea(3)
ui.removeTextArea(4)
elseif (id == 5) then
tfm.exec.respawnPlayer(n)
elseif (id == 3) then
elseif (id == 6) then
tfm.exec.giveCheese(n)
tfm.exec.playerVictory (n)
elseif (id == 123) then
tfm.exec.snow()
elseif en=="on" then
fly="true"
ui.updateTextArea(1234,"<p align='center'><a href='event:off'><b>Uçmak = On</b></a></p>")
elseif en=="off" then
fly="false"
ui.updateTextArea(1234,"<p align='center'><a href='event:on'><b>Uçmak = Off</b></a></p>")
elseif en=="ion" then
tp="true"

ui.updateTextArea(1232,"<p align='center'><a href='event:ioff'><b>Iþýnlanmak = On</b></a></p>")

elseif en=="ioff" then
tp="false"
ui.updateTextArea(1232,"<p align='center'><a href='event:ion'><b>Iþýnlanmak = Off</b></a></p>")
end
end
end

function eventNewPlayer(name)
system.bindKeyboard(name,32,true,true)
system.bindKeyboard(name,32,false,true)
system.bindMouse(name,true)
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end


function eventKeyboard(n,k)
if k==32 and fly=="true" then
tfm.exec.movePlayer(n,0,0,true,0,-50,false)
end
end

function eventMouse(n,x,y)
if tp=="true" then
tfm.exec.movePlayer(n,x,y)
end
end

for n in pairs(tfm.get.room.playerList) do
system.bindMouse(n,true)
end