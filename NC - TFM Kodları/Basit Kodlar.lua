
Küçük Şeyler:

tfm.exec.setShaman("nick") --------------- Şaman olma

tfm.exec.setVampirePlayer("nick") --------Vampir Olma

tfm.exec.setUIMapName("YazÝ") --------------------Oda adını değiştirme

tfm.exec.setPlayerScore("nick", sayÝ) ----Odadaki kişinin puanını değiştirme

tfm.exec.killPlayer("nick") ----------------------Kişileri Öldürme

eventPlayerRespawn("nick") -----------------------Kişileri Canlandırma

tfm.exec.setNameColor("nick" , renk kodu) -- Kullanıcı İsminin rengini değiştirme

tfm.exec.playerVictory("Nick")  ---------Yuvaya Girme

tfm.exec.giveCheese("Devilstrkpro")  -------------Peynir Alma

tfm.exec.addShamanObject(1,400,2) ----------------İtem Yaratma

tfm.exec.giveMeep("nick") ----------------Meep Verme

tfm.exec.setRoomMaxPlayers(14) -------------------Limit Koyma

tfm.exec.movePlayer("nick",400,200) ------Oyuncu Tp Attırma

ui.addTextArea(0, "Gece", nil, -400, -400, 4000, 4000, 0x000000, 0x33cc00, 0.6) - Oda Rengini Değiştirme

----------------------------------------------------------------------------------


"!kar" YazÝnca odada kar yaÛar: 

function eventChatCommand(devilstrkpro,command) 
if command=="kar" then
tfm.exec.snow()
end
end




Moderatör Gibi Konuşma:

ui.addTextArea(1,"<ROSE>[~Moderation][Devilstrkpro] Nasılsınız?<ROSE>",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)




Aralıksız Esya Yaratma:

function eventLoop()
tfm.exec.addShamanObject(1, 400, 200)
end




Odadaki Herkesi saman Yapar:

for playerName,player in pairs(tfm.get.room.playerList) do
tfm.exec.setShaman(playerName)
end




Adminli oda ÝßÝÛÝnÝ aÝp sšndŸrme:

admins={Devilstrkpro=true}
ui.addTextArea(0, "<p align='center'>Iþýkapatý <a href='event:close'>kapat</a>/<a href='event:open'>a</a></p>", nil, 702, 378, nil, nil, 0x00000, 0x00001, 0.7, true)

function eventTextAreaCallback(id, name, callback)
if admins[name] and callback=="close" then
ui.addTextArea(1, "Gece", nil, -400, -400, 4000, 4000, 0x000001, 0x000001, 0.7)
end
if admins[name] and callback=="open" then
ui.removeTextArea(1, nil)
end
end






herkese …lŸmsŸzlŸk Verir:


function eventNewPlayer(name)
tfm.exec.respawnPlayer(name)
end
function eventPlayerDied(name)
tfm.exec.respawnPlayer(name)
end
for i,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(i)
end




"!" Þeklinde Yazarak Oda AdÝnÝ deÛißtirme:

ui.addTextArea(1,"<font size='15'><B><R>10",playerList,425,26,00,00,0x533C2A,0x00000,0.99999,true)



function eventChatCommand(isim, komut)
tfm.exec.setUIMapName(komut)
end





Otomatik šldŸrme:

function eventLoop(t,rm)
tfm.exec.killPlayer("nick")
end





BastÝÛÝmÝz yerden eßya Ýkarmak:

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






Þaman olma

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


Odaya Biri Gelirse Hoßgeldin YazÝsÝ Gelir:


function eventNewPlayer(n)
ui.addTextArea(0, "<B> "..n.." <J> Kabile Evine Hoßgeldin!", nil, 900, 201, 100, 50, 0x000000, 0xcc0000, 1);
end



Peynir alÝnca mor yazar:

function eventPlayerGetCheese(player)
ui.addTextArea(1,"<VI> "..player.." <R> peyniri aldi",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
end



peyniri alÝnca kÝrmÝzÝ yazar:

function eventPlayerGetCheese(player)
ui.addTextArea(1,"<VI> "..player.." peyniri aldi",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
ende



…leni yazar:

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


