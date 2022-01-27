
Küçük ﬁeyler:

tfm.exec.setShaman("nick") --------------- ﬁaman

tfm.exec.setVampirePlayer("nick") --------Vampir Yapma

tfm.exec.setUIMapName("Yaz›") --------------------Oda ad›n› de€iﬂtirme

tfm.exec.setPlayerScore("nick", say›) ----Odadaki kiﬂinin puan›n› de€iﬂtirme

tfm.exec.killPlayer("nick") ----------------------Kiﬂileri öldürme

eventPlayerRespawn("nick") -----------------------Kiﬂileri Canland›rma

tfm.exec.setNameColor("nick" , renk kodu) --ismin rengini de€iﬂtirme

tfm.exec.playerVictory("Nick")  --------Yuvaya Girme

tfm.exec.giveCheese("Devilstrkpro")  -------------Peynir Verme

tfm.exec.addShamanObject(1,400,2) ----------------›tem Yaratma

tfm.exec.giveMeep("nick") ----------------Meep Verme

tfm.exec.setRoomMaxPlayers(14) -------------------Limit Koyma

tfm.exec.movePlayer("nick",400,200) ------Oyuncu Tp Att›rma

ui.addTextArea(0, "Gece", nil, -400, -400, 4000, 4000, 0x000000, 0x33cc00, 0.6) - Oda Rengini De€iﬂtirme

----------------------------------------------------------------------------------


"!kar" Yaz›nca odada kar ya€ar: 

function eventChatCommand(devilstrkpro,command) 
if command=="kar" then
tfm.exec.snow()
end
end






Mod Gibi Konuﬂma:

ui.addTextArea(1,"<ROSE>[~Moderation][Devilstrkpro] naber lo<ROSE>",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)








Aral›ks›z Eﬂya Yaratma:


function eventLoop()
tfm.exec.addShamanObject(1, 400, 200)
end




odadaki herkesi ﬁaman yapar:

for playerName,player in pairs(tfm.get.room.playerList) do
tfm.exec.setShaman(playerName)
end




Adminli oda ›ﬂ›€›n› aç›p söndürme:

admins={Devilstrkpro=true}
ui.addTextArea(0, "<p align='center'>I˛˝kapat˝ <a href='event:close'>kapat</a>/<a href='event:open'>aç</a></p>", nil, 702, 378, nil, nil, 0x00000, 0x00001, 0.7, true)

function eventTextAreaCallback(id, name, callback)
if admins[name] and callback=="close" then
ui.addTextArea(1, "Gece", nil, -400, -400, 4000, 4000, 0x000001, 0x000001, 0.7)
end
if admins[name] and callback=="open" then
ui.removeTextArea(1, nil)
end
end






herkese Ölümsüzlük Verir:


function eventNewPlayer(name)
tfm.exec.respawnPlayer(name)
end
function eventPlayerDied(name)
tfm.exec.respawnPlayer(name)
end
for i,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(i)
end




"!" ﬁeklinde Yazarak Oda Ad›n› de€iﬂtirme:

ui.addTextArea(1,"<font size='15'><B><R>10",playerList,425,26,00,00,0x533C2A,0x00000,0.99999,true)



function eventChatCommand(isim, komut)
tfm.exec.setUIMapName(komut)
end





Otomatik öldürme:

function eventLoop(t,rm)
tfm.exec.killPlayer("nick")
end





Bast›€›m›z yerden eﬂya ç›karmak:

for all,_ in pairs (tfm.get.room.playerList) do
system.bindMouse(all, true)
end
function eventMouse(playerName, x, y)
tfm.exec.addShamanObject(6, x, y)
end







takip ettirme kodu:

function eventLoop(t,rm)
noob=tfm.get.room.playerList["nick1"]
tfm.exec.movePlayer("nick2",noob.x,noob.y)
end






ﬁaman olma

function eventChatCommand(cam,palamud)
if palamud=="mese" then
tfm.exec.setShaman(cam);
end
end



-------------------------------------------------------------------------




Otomatik Drag:

function eventLoop(t,rm)
tfm.exec.addShamanObject(20,1300,200)
end

---------------------------------------------------------------------------------


Odaya Biri Gelirse Hoﬂgeldin Yaz›s› Gelir:


function eventNewPlayer(n)
ui.addTextArea(0, "<B> "..n.." <J> Kabile Evine Hoﬂgeldin!", nil, 900, 201, 100, 50, 0x000000, 0xcc0000, 1);
end



Peynir al›nca mor yazar:

function eventPlayerGetCheese(player)
ui.addTextArea(1,"<VI> "..player.." <R> peyniri aldi",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
end



peyniri al›nca k›rm›z› yazar:

function eventPlayerGetCheese(player)
ui.addTextArea(1,"<VI> "..player.." peyniri aldi",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
ende



Öleni yazar:

function eventPlayerDied(n)
ui.addTextArea(1,"<R>"..n.."<VP>   Allah Rahmet Eylesin ",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
end

-----------------------------------------------------------------------------


seri drag

function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
function eventKeyboard(name,key,down,x,y)
if (key==32 or key==40 or key==83) and not tfm.get.room.playerList[name].isDead then
if tfm.get.room.playerList[name].isFacingRight then
tfm.exec.addShamanObject(19,x,y)
else
tfm.exec.addShamanObject(20,x,y)
end
end
end




Kronometre:

for i=2,1000000 do
timer = 210
function eventLoop()
timer = timer - 1.0
ui.addTextArea(1,"<font size='20'>"..timer.."</font>",n,364.5,50,200,40,0x000000,0xF8FF00,700,true)
end
end 


