admins={"Tigrounette", "Buriik", "Devilstrkpro"}
-- remember to put "," between each name!
 
 
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@7012286")
 
players={}--respawn place is 400,320
p={}
timestamp=os.time()
numplayers=0
 
begin=false
answerer="lol"
questioner="lol"
question="lol"
ans="lol"
new=false
restart=false
choose=false
start=true
choosey=false
skip=false
message=""
others={}
summonobject=false
timestamplol={}
answererold=""
one=false
dance=false
mapcomplete=false
 
truth={}--you can follow the format 'truth[number]="question"'
truth[1]="Oyunda kimi eziyorsun?"
truth[2]="En sevdiðin yiyecek?"
truth[3]="Oyundaki en sevdiðin kiþi?"
truth[4]="Transformice Dýþýnda ne  oynuyorsun?"
truth[5]="Büyüyünce Ne olmak istiyorsun?"
truth[6]="Hiç Baþ parmaðýný emdinmi?"
truth[7]="Telefonunun Markasý Ne?"
truth[8]="Arkadaþlarýnýn Yada Öðretmenlerinin Yanýnda Osurdunmu"
truth[9]="Transformicede Bi hack yasak olmasa hangisini seçersin?"
truth[10]="Transformicedeki En Sevdiðin Kürk?"
truth[11]="Neden Transformiceyi Seviyorsun?"
truth[12]="Kendini  Seviyormusun?"
truth[13]="Kendin Hakkýnda en çok neyi seviyorsun"
truth[14]="Oyuna Nasýl Baþladýn."
truth[15]="Gerçek Hayattada oyunda olduðun gibimisin"
truth[16]="En Nefret Ettiðin Kiþi"
truth[17]="Sýnýrsýz Çilek Ve Peynirin Olsa Marketten Ne Alýrdýn?"
truth[18]="Hangisini Seçersin Sýnýrsýz Paramý Flash Olmakmý"
truth[19]="En Sevdiðin Masa Oyunu"
truth[20]="Duþ Almadan Durduðun EN UZUN SÜRE ?"
truth[21]="Hiç Böcek Yedinmi(krdþ bu ne )?"
truth[22]="Eðer Bir Süper Kötü Olsan Ne Olurdun"
truth[23]=" Eðer Bir Kahraman Olsan Ne Olurdun"
truth[24]="Bir Böcek Olsan Ne Olurdun (krdþ bu ne)? "
truth[25]="En Sevdiðin Yetkili? (Admin/Moderator/Sentinels/Mapcrew/Funcorp)"
truth[26]="Benim Hakkýnda Düþüncelerin ne"
truth[27]="Hiç Sýnavda Kopya Çektinmi"
truth[28]="Hiç Sevgilin Oldumu"
truth[29]="Milyoner Olsan Vaktini Neyle Harcardýn"
truth[30]="Bir Günlük Bir Þirkette Patronsun Ne Yapardýn"
truth[31]="Hangi Ünlü Ýdölün"
truth[32]="En Sevdiðin Takým Ve Oyuncu"
truth[32]="En Sevdiðin Þarký"
truth[33]="Kendi Baþýna Adasýn Ve Bir Kiþi Alacaksýn Kimle O Adada Kalýrdýn?(Bu odadan olmalý)"
truth[34]="Bu odada kime yumruk atmak isterdin"
truth[35]="Çok zengin ve aptalmý yoksa yoksul ve zeki olmakmý"
truth[36]="Annenemi yakýnsýn babanamý"
 
dare={}--you can follow the format 'dare[number]="Dare"'
dare[1]="Cesaretin Varsa ODA  2 YE GÝT VE 10 Kere Bu Mesajý  Spamla: CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE"
dare[2]="Cesaretin varsa  bir moderetöre nbyn qnq de."
dare[3]="Cesaretin Varsa Bu Odadan Ezmek Ýstediðin  Birisini Söyle"
dare[4]="Cesaretin Varsa ODA  1e GÝT VE 10 Kere Bu Mesajý  Spamla: Flood yapýyorum Reportlayýn Beni!"
dare[5]="Cesaretin Varsa Bir Moderotörü Hack Yüzünden Reportla"
dare[6]="Cesaretin varsa 801e git ve 5 KERE CANIM SIKILDI DÝYE FLOODLA"
dare[7]="Cesaretin Varsa Ýsmini Söyle(bilmiyozmu..)"
dare[8]="Cesaretin Varsa Moderetöre doðruluk cesaret oynayalýmmý de"
dare[9]="801 E git ve rasgele 3 kiþiye özelden #utility00gelme gel de"
dare[10]="Cesaretin Varsa En anlaþamadýðýn kiþiye top ver"
dare[11]="Cesaretin Varsa Oyundan Çýk Ve Gir."
dare[12]="Kimin Oyunu Býrakmasýný Ýstersin(Bu Odadan)."
dare[13]="Cesaretin Varsa Sadece Saç Ýle 15 Dakika Dur"
dare[14]="Cesaretin Varsa Mapý Bitir!"
dare[15]="Cesaretin Varsa Sevdiðin Kiþiye SENÝ SEVÝYORUM (ÝSÝM) DE"
dare[16]="Oda 3e Git Ve Mod Olmak Ýstiyorum  Diye 10 Kere Floodla"
dare[17]="Reelde Sevdiðin Varmý Veya  Sevgilin Varsa Ýsmini Söyle :) "
dare[18]="Envanterinin ss sini at"
dare[19]="Cesaretin Varsa Moderötere Banla Beni De'"
dare[20]="Cesaretin varsa en sevmediðin kiþiyle taþ kaðýt makas oyna"
dare[21]="Odanýn Chatinde 10 Kere Ben Kimim Ayol De"
dare[22]="Cesaretin Varsa Karne Ortalamaný Söye"
dare[23]="Bir Yabancý Moderötere þunu spamla,  Kapýyý Açamýyom qnq'"
dare[24]="Room 1 e git ve 10 kere Waffle Ýstiyorum Diye Spamla."
 
function eventNewPlayer(name)
    ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna katýlmak için :D.</font></p></b>",name,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Þiþe Çevirmece Oyununa Hoþgeldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Þiþe Çevirmece</font></p><font size='20' color='#FF0000'><b>Oyun Devilstkrkpro Tarafýndan Yapýlmýþtýr...                               </b></font><font size='15'>\Oyun sýnýrsýz kiþi sayýsýyla oynanabilir, fakat 1 kiþi soran kiþi ve 1 kiþi cevaplayýcý kiþi olarak 2 kiþi sistem tarafýndan seçilir. Oyun adýmlarý oyunun içinde gösterilmiþtir. Ýyi Oyunlar!!! Þuanlýk <b>"..#truth.."</b> tane Sistem Tarafýndan Sorulan Doðruluk Sorusu Ve <b>"..#dare.."</b> Tane Sistem Tarafýndan Yaptýrýlan Cesaret Seçeneði Vardýr. \n<font color='#00FF00'>Yapýmcý: Devilstrkpro</font> \n</font><font face='impact' size='20'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
    local i=0
    while i<=#admins do
    if name==admins[i] then
        p[name].admin=true
    end
    i=i+1
    end
end
 
function eventNewGame()
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Doðrulukmu Cesaretmi Oyununa Hoþgeldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Doðrulukmu Cesaretmi</font></p><font size='20' color='#FF0000'><b>Oyun Hakkýnda Çeviri Buriik</b></font><font size='15'>\nÖncelikle Þunu Söyleyeyim Ben Çevirisini Yaptým Yapýmcý Mousetat’dýr Neyse ÝnþAlalh Eðleniriz Hadi Baþlýyalým Bu Arada Þuanlýk <b>"..#truth.."</b> Rastgele Doðruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yapýmcý Mousetat Çeviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    answerer=""
    questioner=""
    begin=false
    start=true
    numplayers=0
    count=1
    one=false
    local i=0
    for name,player in pairs(tfm.get.room.playerList) do
        p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
        players[count]=name
        timestamp=os.time()
        numplayers=numplayers+1
        count=count+1
        p[name].spectator=false
        p[name].questioners=false
        local i=0
        while i<=#admins do
        if name==admins[i] then
            p[name].admin=true
        end
        i=i+1
        end
    end
    system.disableChatCommandDisplay("t", hidden)
    system.disableChatCommandDisplay("admin", hidden)
    system.disableChatCommandDisplay("restart", hidden)
    system.disableChatCommandDisplay("ban", hidden)
    system.disableChatCommandDisplay("skip", hidden)
    system.disableChatCommandDisplay("watch", hidden)
    system.disableChatCommandDisplay("unban", hidden)
    system.disableChatCommandDisplay("unadmin", hidden)
    end
 
function eventChatCommand(name,command)
    local IDList = {}
    if command=="clear" then
        for id, object in pairs(tfm.get.room.objectList) do
            table.insert(IDList, id)
        end
        for i, id in pairs(IDList) do
            tfm.exec.removeObject(id)
        end
    end
    if command=="s" and p[name].admin==true then
        tfm.exec.setShaman(name)
    elseif command=="dance" and p[name].admin==true then
        for name,player in pairs(tfm.get.room.playerList) do
            p[name].randomerino=math.random(1,3)
        end
        dance=true
    elseif command=="danceoff" and p[name].admin==true then
        dance=false
    elseif command=="mods" then
        message=""
        for k,v in pairs(tfm.get.room.playerList) do
            if p[k].admin==true then
                message=message..tostring(k)..", "
            end
        end
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>The moderators are: "..string.sub(message,1,-3)..".</font></b></p>", name)
    elseif command=="new" and name==questioner then
        if p[name].new==false then
        print("true")
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answererold=answerer
        answerer=""
        choose=true
        p[name].new=true
        else
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>You can only !new ONCE</font></b></p>", nil)
        end
    elseif command=="join" and p[name].spectator==true then
        if p[name].ban==false then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." Oyuna Katýldý! :D</font></b></p>", nil)
            tfm.exec.respawnPlayer(name)
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].spectator=false
            table.insert(players,name)
        elseif p[name].ban==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>Banlandýðýn Ýçin Oyuna Katýlamassýn :/ :(</font></b></p>", name)
        end
    elseif command=="skip" and p[name].admin==true then
        timestamp=os.time()
        skip=true
    elseif string.sub(command,0,1) == "t" and p[name].admin==true then
        message=string.sub(command,3)
        ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.."</font></b></p>", nil)
    elseif command=="restart" and p[name].admin==true then
        tfm.exec.newGame("@7012286")
    elseif string.sub(command,0,5)=="watch"  then
        if string.sub(command,7)=="" then
            p[name].spectator=true
                ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." Ýzleyici:(</font></b></p>", nil)
                ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Katýlmak için.</font></p></b>",name)
            if name==questioner or name==answerer then
                questioner=""
                answerer=""
                tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
                tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
                timestamp=os.time()
                skip=true
            end
            for i=1,#players do
                if players[i]==name then
                    table.remove(players,i)
                end
            end
        else
            if p[name].admin==true then
                message=string.sub(command,7)
                message=string.upper(string.sub(message,0,1))..string.sub(message,2)
                for k,v in pairs(tfm.get.room.playerList) do
                    if k==message and p[k].spectator==false then
                        if k==questioner or k==answerer then
                            skip=true
                            timestamp=os.time()
                        end
                        p[k].spectator=true
                        ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..k.." is now a spectator :(</font></b></p>", nil)
                        ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Katýlmak için.</font></p></b>",k)
                        for i=1,#players do
                            if players[i]==k then
                                table.remove(players,i)
                            end
                        end
                    end
                end
            end
        end
    elseif command=="help" then
          ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakkýnda Çeviri Buriik</b></font><font size='15'>\nÖncelikle Þunu Söyleyeyim Ben Çevirisini Yaptým Yapýmcý Mousetat’dýr Neyse ÝnþAlalh Eðleniriz Hadi Baþlýyalým Bu Arada Þuanlýk <b>"..#truth.."</b> Rastgele Doðruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yapýmcý Mousetat Çeviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    elseif command=="commands" then
    if p[name].admin==true then
    ui.addPopup(999,0,"<b><font size='20' color='#FFFF00'>COMMANDS</font>\n!join to join the game if you are spectating or you just came into the room.\n!watch to be a spectator and get ignored in the game.\n!mods to see the current moderators in the room.\n!clear to clear all shaman objects.\n!new to get a new answerer(only new ONCE)(asker only)\n!help to see the information about game\n<font size='20' color='#EB1D51'>ADMIN COMMANDS</font>\n!watch (username) to make the username a spectator.\n!s to become shaman\n!admin (username) to admin a person\n!dance/!danceoff to toggle dancing\n!t (message) to speak to all\n!restart to restart game if bugged\n!skip to skip a person's turn\n!ban (username) (reason) to ban a person(highly not advised)</b>",name,100,50,600,true)
    elseif p[name].admin==false then
  admins={"Tigrounette", "Melibellule", "Buriik"}
-- remember to put "," between each name!
 
 
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@7012286")
 
players={}--respawn place is 400,320
p={}
timestamp=os.time()
numplayers=0
 
begin=false
answerer="lol"
questioner="lol"
question="lol"
ans="lol"
new=false
restart=false
choose=false
start=true
choosey=false
skip=false
message=""
others={}
summonobject=false
timestamplol={}
answererold=""
one=false
dance=false
mapcomplete=false
 
truth={}--you can follow the format 'truth[number]="question"'
truth[1]="Oyunda kimi eziyorsun?"
truth[2]="En sevdiðin yiyecek?"
truth[3]="Oyundaki en sevdiðin kiþi?"
truth[4]="Transformice Dýþýnda ne  oynuyorsun?"
truth[5]="Büyüyünce Ne olmak istiyorsun?"
truth[6]="Hiç Baþ parmaðýný emdinmi?"
truth[7]="Telefonunun Markasý Ne?"
truth[8]="Arkadaþlarýnýn Yada Öðretmenlerinin Yanýnda Osurdunmu"
truth[9]="Transformicede Bi hack yasak olmasa hangisini seçersin?"
truth[10]="Transformicedeki En Sevdiðin Kürk?"
truth[11]="Neden Transformiceyi Seviyorsun?"
truth[12]="Kendini  Seviyormusun?"
truth[13]="Kendin Hakkýnda en çok neyi seviyorsun"
truth[14]="Oyuna Nasýl Baþladýn."
truth[15]="Gerçek Hayattada oyunda olduðun gibimisin"
truth[16]="En Nefret Ettiðin Kiþi"
truth[17]="Sýnýrsýz Çilek Ve Peynirin Olsa Marketten Ne Alýrdýn?"
truth[18]="Hangisini Seçersin Sýnýrsýz Paramý Flash Olmakmý"
truth[19]="En Sevdiðin Masa Oyunu"
truth[20]="Duþ Almadan Durduðun EN UZUN SÜRE ?"
truth[21]="Hiç Böcek Yedinmi(krdþ bu ne )?"
truth[22]="Eðer Bir Süper Kötü Olsan Ne Olurdun"
truth[23]=" Eðer Bir Kahraman Olsan Ne Olurdun"
truth[24]="Bir Böcek Olsan Ne Olurdun (krdþ bu ne)? "
truth[25]="En Sevdiðin Yetkili? (Admin/Moderator/Sentinels/Mapcrew/Funcorp)"
truth[26]="Benim Hakkýnda Düþüncelerin ne"
truth[27]="Hiç Sýnavda Kopya Çektinmi"
truth[28]="Hiç Sevgilin Oldumu"
truth[29]="Milyoner Olsan Vaktini Neyle Harcardýn"
truth[30]="Bir Günlük Bir Þirkette Patronsun Ne Yapardýn"
truth[31]="Hangi Ünlü Ýdölün"
truth[32]="En Sevdiðin Takým Ve Oyuncu"
truth[32]="En Sevdiðin Þarký"
truth[33]="Kendi Baþýna Adasýn Ve Bir Kiþi Alacaksýn Kimle O Adada Kalýrdýn?(Bu odadan olmalý)"
truth[34]="Bu odada kime yumruk atmak isterdin"
truth[35]="Çok zengin ve aptalmý yoksa yoksul ve zeki olmakmý"
truth[36]="Annenemi yakýnsýn babanamý"
 
dare={}--you can follow the format 'dare[number]="Dare"'
dare[1]="Cesaretin Varsa ODA  2 YE GÝT VE 10 Kere Bu Mesajý  Spamla: CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE CHARLOTTE"
dare[2]="Cesaretin varsa  bir moderetöre nbyn qnq de."
dare[3]="Cesaretin Varsa Bu Odadan Ezmek Ýstediðin  Birisini Söyle"
dare[4]="Cesaretin Varsa ODA  1e GÝT VE 10 Kere Bu Mesajý  Spamla: Flood yapýyorum Reportlayýn Beni!"
dare[5]="Cesaretin Varsa Bir Moderotörü Hack Yüzünden Reportla"
dare[6]="Cesaretin varsa 801e git ve 5 KERE CANIM SIKILDI DÝYE FLOODLA"
dare[7]="Cesaretin Varsa Ýsmini Söyle(bilmiyozmu..)"
dare[8]="Cesaretin Varsa Moderetöre doðruluk cesaret oynayalýmmý de"
dare[9]="801 E git ve rasgele 3 kiþiye özelden #utility00gelme gel de"
dare[10]="Cesaretin Varsa En anlaþamadýðýn kiþiye top ver"
dare[11]="Cesaretin Varsa Oyundan Çýk Ve Gir."
dare[12]="Kimin Oyunu Býrakmasýný Ýstersin(Bu Odadan)."
dare[13]="Cesaretin Varsa Sadece Saç Ýle 15 Dakika Dur"
dare[14]="Cesaretin Varsa Mapý Bitir!"
dare[15]="Cesaretin Varsa Sevdiðin Kiþiye SENÝ SEVÝYORUM (ÝSÝM) DE"
dare[16]="Oda 3e Git Ve Mod Olmak Ýstiyorum  Diye 10 Kere Floodla"
dare[17]="Reelde Sevdiðin Varmý Veya  Sevgilin "
dare[18]="Envanterinin ss sini at"
dare[19]="Cesaretin Varsa Moderötere Banla Beni De'"
dare[20]="Cesaretin varsa en sevmediðin kiþiyle taþ kaðýt makas oyna"
dare[21]="Odanýn Chatinde 10 Kere Ben Kimim Ayol De"
dare[22]="Cesaretin Varsa Karne Ortalamaný Söye"
dare[23]="Bir Yabancý Moderötere þunu spamla,  Kapýyý Açamýyom qnq'"
dare[24]="Room 1 e git ve 10 kere Waffle Ýstiyorum Diye Spamla."
 
function eventNewPlayer(name)
    ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna katýlmak için :D.</font></p></b>",name,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Þiþe Çevirmece Oyununa Hoþgeldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Þiþe Çevirmece Oyununa Hoþgeldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Þiþe Çevirmece</font></p><font size='20' color='#FF0000'><b>Oyun Devilstkrkpro Tarafýndan Yapýlmýþtýr...                               </b></font><font size='15'>\Oyun sýnýrsýz kiþi sayýsýyla oynanabilir, fakat 1 kiþi soran kiþi ve 1 kiþi cevaplayýcý kiþi olarak 2 kiþi sistem tarafýndan seçilir. Oyun adýmlarý oyunun içinde gösterilmiþtir. Ýyi Oyunlar!!! Þuanlýk <b>"..#truth.."</b> tane Sistem Tarafýndan Sorulan Doðruluk Sorusu Ve <b>"..#dare.."</b> Tane Sistem Tarafýndan Yaptýrýlan Cesaret Seçeneði Vardýr. \n<font color='#00FF00'>Yapýmcý: Devilstrkpro</font> \n</font><font face='impact' size='20'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    local i=0
    while i<=#admins do
    if name==admins[i] then
        p[name].admin=true
    end
    i=i+1
    end
end
 
function eventNewGame()
    ui.addTextArea(1,"<b><p align = 'center'><font size='15'>Doðrulukmu Cesaretmi Oyununa Hoþgeldin!</font></p></b>",nil,50,365,700,40,0x324650,0x212F36,0.8,true)
    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakkýnda Çeviri Buriik</b></font><font size='15'>\nÖncelikle Þunu Söyleyeyim Ben Çevirisini Yaptým Yapýmcý Mousetat’dýr Neyse ÝnþAlalh Eðleniriz Hadi Baþlýyalým Bu Arada Þuanlýk <b>"..#truth.."</b> Rastgele Doðruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yapýmcý Mousetat Çeviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    answerer=""
    questioner=""
    begin=false
    start=true
    numplayers=0
    count=1
    one=false
    local i=0
    for name,player in pairs(tfm.get.room.playerList) do
        p[name]={questioners=false, admin=false, spectator=true, ban=false, randomerino=1, out=false, new=false}
        players[count]=name
        timestamp=os.time()
        numplayers=numplayers+1
        count=count+1
        p[name].spectator=false
        p[name].questioners=false
        local i=0
        while i<=#admins do
        if name==admins[i] then
            p[name].admin=true
        end
        i=i+1
        end
    end
    system.disableChatCommandDisplay("t", hidden)
    system.disableChatCommandDisplay("admin", hidden)
    system.disableChatCommandDisplay("restart", hidden)
    system.disableChatCommandDisplay("ban", hidden)
    system.disableChatCommandDisplay("skip", hidden)
    system.disableChatCommandDisplay("watch", hidden)
    system.disableChatCommandDisplay("unban", hidden)
    system.disableChatCommandDisplay("unadmin", hidden)
    end
 
function eventChatCommand(name,command)
    local IDList = {}
    if command=="clear" then
        for id, object in pairs(tfm.get.room.objectList) do
            table.insert(IDList, id)
        end
        for i, id in pairs(IDList) do
            tfm.exec.removeObject(id)
        end
    end
    if command=="s" and p[name].admin==true then
        tfm.exec.setShaman(name)
    elseif command=="dance" and p[name].admin==true then
        for name,player in pairs(tfm.get.room.playerList) do
            p[name].randomerino=math.random(1,3)
        end
        dance=true
    elseif command=="danceoff" and p[name].admin==true then
        dance=false
    elseif command=="mods" then
        message=""
        for k,v in pairs(tfm.get.room.playerList) do
            if p[k].admin==true then
                message=message..tostring(k)..", "
            end
        end
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>The moderators are: "..string.sub(message,1,-3)..".</font></b></p>", name)
    elseif command=="new" and name==questioner then
        if p[name].new==false then
        print("true")
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answererold=answerer
        answerer=""
        choose=true
        p[name].new=true
        else
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>You can only !new ONCE</font></b></p>", nil)
        end
    elseif command=="join" and p[name].spectator==true then
        if p[name].ban==false then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." Oyuna Katýldý! :D</font></b></p>", nil)
            tfm.exec.respawnPlayer(name)
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].spectator=false
            table.insert(players,name)
        elseif p[name].ban==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>Banlandýðýn Ýçin Oyuna Katýlamassýn :/ :(</font></b></p>", name)
        end
    elseif command=="skip" and p[name].admin==true then
        timestamp=os.time()
        skip=true
    elseif string.sub(command,0,1) == "t" and p[name].admin==true then
        message=string.sub(command,3)
        ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.."</font></b></p>", nil)
    elseif command=="restart" and p[name].admin==true then
        tfm.exec.newGame("@7012286")
    elseif string.sub(command,0,5)=="watch"  then
        if string.sub(command,7)=="" then
            p[name].spectator=true
                ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..name.." Ýzleyici:(</font></b></p>", nil)
                ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Katýlmak için.</font></p></b>",name)
            if name==questioner or name==answerer then
                questioner=""
                answerer=""
                tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
                tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
                timestamp=os.time()
                skip=true
            end
            for i=1,#players do
                if players[i]==name then
                    table.remove(players,i)
                end
            end
        else
            if p[name].admin==true then
                message=string.sub(command,7)
                message=string.upper(string.sub(message,0,1))..string.sub(message,2)
                for k,v in pairs(tfm.get.room.playerList) do
                    if k==message and p[k].spectator==false then
                        if k==questioner or k==answerer then
                            skip=true
                            timestamp=os.time()
                        end
                        p[k].spectator=true
                        ui.updateTextArea(1, "<p align='center'><b><font size='30'>"..k.." is now a spectator :(</font></b></p>", nil)
                        ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Yaz !join Oyuna Katýlmak için.</font></p></b>",k)
                        for i=1,#players do
                            if players[i]==k then
                                table.remove(players,i)
                            end
                        end
                    end
                end
            end
        end
    elseif command=="help" then
          ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakkýnda Çeviri Buriik</b></font><font size='15'>\nÖncelikle Þunu Söyleyeyim Ben Çevirisini Yaptým Yapýmcý Mousetat’dýr Neyse ÝnþAlalh Eðleniriz Hadi Baþlýyalým Bu Arada Þuanlýk <b>"..#truth.."</b> Rastgele Doðruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yapýmcý Mousetat Çeviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    elseif command=="commands" then
    if p[name].admin==true then
    ui.addPopup(999,0,"<b><font size='20' color='#FFFF00'>COMMANDS</font>\n!join to join the game if you are spectating or you just came into the room.\n!watch to be a spectator and get ignored in the game.\n!mods to see the current moderators in the room.\n!clear to clear all shaman objects.\n!new to get a new answerer(only new ONCE)(asker only)\n!help to see the information about game\n<font size='20' color='#EB1D51'>ADMIN COMMANDS</font>\n!watch (username) to make the username a spectator.\n!s to become shaman\n!admin (username) to admin a person\n!dance/!danceoff to toggle dancing\n!t (message) to speak to all\n!restart to restart game if bugged\n!skip to skip a person's turn\n!ban (username) (reason) to ban a person(highly not advised)</b>",name,100,50,600,true)
    elseif p[name].admin==true then
      ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Truth or Dare</font></p><font size='20' color='#FF0000'><b>Oyun Hakkýnda Çeviri Burik</b></font><font size='15'>\nÖncelikle Þunu Söyleyeyim Ben Çevirisini Yaptým Yapýmcý Mousetat’dýr Neyse ÝnþAlalh Eðleniriz Hadi Baþlýyalým Bu Arada Þuanlýk <b>"..#truth.."</b> Rastgele Doðruluk ve <b>"..#dare.."</b> Rastele Cesaret var , \n<font color='#00FF00'>Yapýmcý Mousetat Çeviri Buriik</font> \nForum Linki: atelier801.com//topic?f=6&t=814350&p=1 \n</font><font face='impact' size='30'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
    end
    elseif string.sub(command,0,3)=="ban" and p[name].admin==true then
        local c=0
        local reason=""
        if string.find(command," ",5)==nil then
            message=string.sub(command,5)
        else
            c=string.find(command," ",5)
            print(c)
            message=string.sub(command,5,c-1)
            reason=string.sub(command,c+1)
            print(reason)
        end
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been banned for 9999 hours. Reason: "..reason.."</font></b></p>", nil)
                p[message].ban=true
                tfm.exec.killPlayer(k)
                for i=1,#players do
                    if players[i]==k then
                        table.remove(players,i)
                    end
                end
            end
        end
    elseif string.sub(command,0,5)=="unban" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been unbanned.</font></b></p>", nil)
                p[message].ban=false
                tfm.exec.respawnPlayer(k)
                table.insert(players,k)
            end
        end
    elseif string.sub(command,0,5)=="admin" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is now a moderator. Congrats!</font></b></p>", nil)
                p[message].admin=true
            end
        end
    elseif string.sub(command,0,7)=="unadmin" and p[name].admin==true then
        message=string.sub(command,9)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is demoded. What a waste!</font></b></p>", nil)
                p[message].admin=false
            end
        end
    end
end
 
function eventLoop(time,remaining)
    if dance==true then
        for name,player in pairs(tfm.get.room.playerList) do
            if p[name].randomerino==1 then
                tfm.exec.playEmote(name,0,nil)
            elseif p[name].randomerino==2 then
                tfm.exec.playEmote(name,15,nil)
            elseif p[name].randomerino==3 then
                tfm.exec.playEmote(name,16,nil)
            end
        end
    end
    numplayers=#players
    for k,v in pairs(tfm.get.room.playerList) do
        if p[k].dance==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Banlandýn. :(</font></p></b>",k)
        elseif p[k].spectator==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'> Oyuna katýlmak için !join yaz.</font></p></b>",k)
        end
    end
    local IDList={}
    for id, object in pairs(tfm.get.room.objectList) do
        table.insert(IDList, id)
    end
    for i, id in pairs(IDList) do
        if others[id].summonobject==true and timestamplol[id]<os.time()-3000 then
            tfm.exec.removeObject(id)
            others[id].summonobject=false
        end
    end
    if numplayers<2 then
        one=true
    else
        one=false
    end
    if one==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynamak Ýçin en az 2 Oyuncuya Ýhtiyaç Var.</font></b></p>", nil)
        timestamp=os.time()-4000	
    elseif timestamp < os.time()-10000 and begin==false then
        timestamp=os.time()
        begin=true
        restart=false
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Haydi Oyuna Baþlayalým! </font></b></p>", nil)
        for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
        end
    elseif timestamp < os.time()-5000 and begin==false then
        local i=1
        local long=""
        local hname=""
        while i<=numplayers do
            hname=players[i]
            if p[hname].spectator==false and tfm.get.room.playerList[hname].isDead==false and p[hname].out==false then
                long=long..tostring(players[i])..", "
            end
            i=i+1
        end
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynayanlar: "..string.sub(long,1,-3)..".</font></b></p>", nil)
    elseif timestamp < os.time()-3000 and begin==false and restart==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='20'>Oyun Tekrar Baþlayacak...", nil)
    end
    if begin==true then
        if timestamp < os.time()-3000 and start==true then
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
            questioner=""
            local j=1
            local i=0
            while j<=numplayers do
                pname=players[j]
                if p[pname].questioners==false and tfm.get.room.playerList[pname].isDead==false and p[pname].spectator==false and p[pname].out==false then
                    i=i+1
                end
                j=j+1
            end
            if i>0 then
                eventTruthOrDare()
            else
                local j=1
            while j<=numplayers do
                local name=players[j]
                p[name].questioners=false
                j=j+1
            end
            restart=true
            timestamp=os.time()
            begin=false
        end
    end
    if choose==true and one==false then
        rand=math.random(1,numplayers)
        answerer=players[rand]
        if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or answerer==answererold or p[answerer].out==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
        else
            choose=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevaplayýcý! Doðrulukmu Cesaretmi Seçiyor...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplayýcýsýn! Doðruluðu Seçmek istermisin?, Cesareti Ýstersen Hayýra Bas!",answerer,250,50,300,true)
        end
    elseif choosey==true and one==false then
        rand=math.random(1,numplayers)
        questioner=players[rand]
        if p[questioner].questioners==false and tfm.get.room.playerList[questioner].isDead==false and p[questioner].spectator==false or p[questioner].out==false then
            choosey=false
            p[questioner].questioners=true
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Seçildi! Bakalým Kimi Seçecek...</font></b>", nil)
            ui.addPopup(1,1,"Rastgele Cevaplayýcý Ýstermisin? Ýstemezsen <b>Hayýra</b>, Bas Ve Nickini  Yaz",questioner,250,50,300,true)
        else
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            questioner=""
        end
    end
    if skip==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Skipping turn...</font></b></p>", nil)
        tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answerer=""
        questioner=""
        if timestamp < os.time()-3000 then
            start=true
            skip=false
        end
    end
    tfm.exec.movePlayer(questioner,120,120,false,0,0,false)
    tfm.exec.movePlayer(answerer,680,120,false,0,0,false)
    end
end
 
function eventTruthOrDare()
    start=false
    ui.removeTextArea(2)
    ui.removeTextArea(3)
    choosey=true
end
 
function eventPopupAnswer(id, name, answer)
    if id==1 and name==questioner then
        if answer=="yes" then
            answererold=""
            choose=true
        elseif answer=="no" then
            ui.addPopup(2,2,"Hangi Cevaplayýcýyý Ýstiyorsun?",questioner,250,50,300,true)
        end
    elseif id==2 and name==questioner then
        x=1
        found=false
        answer=string.upper(string.sub(answer,0,1))..string.sub(answer,2)
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        while x<=numplayers do
        print(players[x])
            if answer==players[x] then
            answerer=answer
            if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or p[answerer].out==true then
            answerer=""
            found=false
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevalayýcý! Doðruluk Veya Cesaret Seçmesini bekleyin...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplayýcýsýn! Doðruluðu Ýstermisin? Ýstemezsen <b>Hayýra</b>Bas!",answerer,250,50,300,true)
            found=true
            end
            end
            x=x+1
        end
        if found==false then
            ui.addPopup(2,2,"There is no such answerer in the room. Type out the exact username of your answerer.",questioner,250,50,300,true)
        end
    elseif id==3 and name==answerer then   
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Doðruluðu Seçti! Sor Soruyu > "..questioner.."...</font></b>", nil)  
            ui.addPopup(4,1,"Rastgele Doðruluk Sorusu Ýstermisin? Eðer Ýstemezsen<b>Hayýra Bas</b>,",questioner,250,50,300,true)
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cesareti Seçti! Sor Soruyu>"..questioner.."...</font></b>", nil)
            ui.addPopup(5,1,"Rastgele Cesaret Ýstermisin Eðer istemezsen? If <b>Hayýra</b>, Bas.",questioner,250,50,300,true)
               
        end
    elseif id==4 and name==questioner then
        if answer=="yes" then
            question=truth[math.random(1,#truth)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Doðruluk Sorusu Seçti! Bekleyin > "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='20'>Truth: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(8,2,"<b>Type your Truth answer below</b>",answerer,250,175,300,true)
           
        elseif answer=="no" then
            ui.addPopup(6,2,"Type your Truth question below, or type #(number) for the question number from the random list.",questioner,250,50,300,true)
        end
    elseif id==5 and name==questioner then
        if answer=="yes" then
            question=dare[math.random(1,#dare)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Cesaret Sorusu Seçti! Bekleyin> "..answerer.." to respond...</font></b>", nil) 
            ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Seçtiki> "..questioner.."Cesaretin Varsa! Kabul Et!</font><b>",answerer,250,175,300,true)
        elseif answer=="no" then
            ui.addPopup(7,2,"Type your Dare below, or type #(number) for the dare number from the random list.",questioner,250,50,300,true)
        end
    elseif id==6 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
        ui.addPopup(6,2,"You have to type something as your Truth question.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#truth then
        question=truth[tonumber(string.sub(answer,2,3))]
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Doðruluk Sorusunu Seçti! Bekleyin > "..answerer.."Seri Lütfen...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#truth then
        ui.addPopup(6,2,"You have to type a Truth question number less than or equal to "..tostring(#truth),questioner,250,50,300,true)
        else
        question=answer
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Doðruluk Sorusunu Sordu! Cevapla Bakalým > "..answerer.." to respond...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        end
    elseif id==7 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
            ui.addPopup(7,2,"You have to type something as your Dare.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#dare then
            if tonumber(string.sub(answer,2,3))==14 then
            mapcomplete=true
            end
            question=dare[tonumber(string.sub(answer,2,3))]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediðini> "..questioner.."kabul ediyorsan evet’e bas</font><b>",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#dare then
        ui.addPopup(7,2,"You have to type a Dare number less than or equal to "..tostring(#dare),questioner,250,50,300,true)
        else
            question=answer    ui.addPopup(999,0,"<p align = 'center'><font size='40' face='impact'>Þiþe Çevirmece</font></p><font size='20' color='#FF0000'><b>Oyun Devilstkrkpro Tarafýndan Yapýlmýþtýr...                               </b></font><font size='15'>\Oyun sýnýrsýz kiþi sayýsýyla oynanabilir, fakat 1 kiþi soran kiþi ve 1 kiþi cevaplayýcý kiþi olarak 2 kiþi sistem tarafýndan seçilir. Oyun adýmlarý oyunun içinde gösterilmiþtir. Ýyi Oyunlar!!! Þuanlýk <b>"..#truth.."</b> tane Sistem Tarafýndan Sorulan Doðruluk Sorusu Ve <b>"..#dare.."</b> Tane Sistem Tarafýndan Yaptýrýlan Cesaret Seçeneði Vardýr. \n<font color='#00FF00'>Yapýmcý: Devilstrkpro</font> \n</font><font face='impact' size='20'>Tüm Komutlarý Görmek Ýçin !commands </font>",nil,100,50,600,true)
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediki>"..questioner.."Kabul Ediyorsan Evete Bas</font><b>",answerer,250,175,300,true)
        end
    elseif id==8 and name==answerer then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        ans = answer
        if ans=="" then
        ui.addPopup(8,2,"You have to type something as your Truth Answer",answerer,250,175,300,true)
        else
        ui.addTextArea(3,"<b><font size='20'>Cevaplayýcý: "..ans.."</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
        ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Soruyu Cevapladý! Bekleyin > "..questioner.." </font></b>", nil)   
        ui.addPopup(10,1,"<b><font size='15'>Cevapdan Memnunmusun?",questioner,250,50,300,true)
        end
    elseif id==9 and name==answerer then
        if answer=="yes" then
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Kabul Ediyorum.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            if mapcomplete==true then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! He/she will have to complete the map before entering the game. Starting new game...</font></b>", nil)
            p[answerer].out=true
            mapcomplete=false
            for i=1,#players do
                if players[i]==answerer then
                    table.remove(players,i)
                end
            end
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! Starting new game...</font></b>", nil)   
            end
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        elseif answer=="no" then
            mapcomplete=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Korkak! Yeni Oyun Baþlýyor...</font></b>", nil)
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Ben Korkaðým Bunu Yapamam .</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        end
    elseif id==10 and name==questioner then
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Cevapdan Memnun! Yeni Oyun Baþlýyor.</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.."Cevapdan Memnun Deðil. Yeni Oyun Baþlýyor.</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true         
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        end
    end
end
 
function eventPlayerLeft(name)
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..name.." Odadan Ayrýldý... </font></b></p>", nil)
    if questioner==name or answerer==name then
        timestamp=os.time()
        skip=true
    end
    for i=1,#players do
        if players[i]==name then
        table.remove(players,i)
        end
    end
end
 
function eventPlayerDied(name)
    if p[name].spectator==true then
        tfm.exec.respawnPlayer(name)
    end
    if p[name].dance==true then
        tfm.exec.killPlayer(name)
        if name==questioner or name==answerer then
            timestamp=os.time()
            skip=true
        end
    end
end
 
function eventPlayerWon(playerName,timeElapsed, timeElapsedSinceRespawn)
tfm.exec.respawnPlayer(playerName)
if p[playerName].out==true then
p[playerName].out=false
table.insert(players,playerName)
print("yes")
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds! He/she has joined back the game!</font></b></p>", nil)
else
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds!</font></b></p>", nil)
end
end
 
function eventSummoningEnd(playerName, objectType, xPosition, yPosition, angle, xSpeed, ySpeed, other)
timestamplol[other.id]=os.time()
others[other.id]={summonobject=true}
end
    end
    elseif string.sub(command,0,3)=="ban" and p[name].admin==true then
        local c=0
        local reason=""
        if string.find(command," ",5)==nil then
            message=string.sub(command,5)
        else
            c=string.find(command," ",5)
            print(c)
            message=string.sub(command,5,c-1)
            reason=string.sub(command,c+1)
            print(reason)
        end
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been banned for 9999 hours. Reason: "..reason.."</font></b></p>", nil)
                p[message].ban=true
                tfm.exec.killPlayer(k)
                for i=1,#players do
                    if players[i]==k then
                        table.remove(players,i)
                    end
                end
            end
        end
    elseif string.sub(command,0,5)=="unban" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." has been unbanned.</font></b></p>", nil)
                p[message].ban=false
                tfm.exec.respawnPlayer(k)
                table.insert(players,k)
            end
        end
    elseif string.sub(command,0,5)=="admin" and p[name].admin==true then
        message=string.sub(command,7)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is now a moderator. Congrats!</font></b></p>", nil)
                p[message].admin=true
            end
        end
    elseif string.sub(command,0,7)=="unadmin" and p[name].admin==true then
        message=string.sub(command,9)
        message=string.upper(string.sub(message,0,1))..string.sub(message,2)
        for k,v in pairs(tfm.get.room.playerList) do
            if message==k then
                ui.updateTextArea(1, "<p align='center'><b><font size='15' color='#ED67EA'>[~#T/D Moderation] "..message.." is demoded. What a waste!</font></b></p>", nil)
                p[message].admin=false
            end
        end
    end
end
 
function eventLoop(time,remaining)
    if dance==true then
        for name,player in pairs(tfm.get.room.playerList) do
            if p[name].randomerino==1 then
                tfm.exec.playEmote(name,0,nil)
            elseif p[name].randomerino==2 then
                tfm.exec.playEmote(name,15,nil)
            elseif p[name].randomerino==3 then
                tfm.exec.playEmote(name,16,nil)
            end
        end
    end
    numplayers=#players
    for k,v in pairs(tfm.get.room.playerList) do
        if p[k].dance==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'>Banlandýn. :(</font></p></b>",k)
        elseif p[k].spectator==true then
            ui.updateTextArea(1,"<b><p align = 'center'><font size='30'> Oyuna katýlmak için !join yaz.</font></p></b>",k)
        end
    end
    local IDList={}
    for id, object in pairs(tfm.get.room.objectList) do
        table.insert(IDList, id)
    end
    for i, id in pairs(IDList) do
        if others[id].summonobject==true and timestamplol[id]<os.time()-3000 then
            tfm.exec.removeObject(id)
            others[id].summonobject=false
        end
    end
    if numplayers<2 then
        one=true
    else
        one=false
    end
    if one==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynamak Ýçin en az 2 Oyuncuya Ýhtiyaç Var.</font></b></p>", nil)
        timestamp=os.time()-4000	
    elseif timestamp < os.time()-10000 and begin==false then
        timestamp=os.time()
        begin=true
        restart=false
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Haydi Oyuna Baþlayalým! </font></b></p>", nil)
        for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
        end
    elseif timestamp < os.time()-5000 and begin==false then
        local i=1
        local long=""
        local hname=""
        while i<=numplayers do
            hname=players[i]
            if p[hname].spectator==false and tfm.get.room.playerList[hname].isDead==false and p[hname].out==false then
                long=long..tostring(players[i])..", "
            end
            i=i+1
        end
        ui.updateTextArea(1, "<p align='center'><b><font size='15'>Oynayanlar: "..string.sub(long,1,-3)..".</font></b></p>", nil)
    elseif timestamp < os.time()-3000 and begin==false and restart==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='20'>Oyun Tekrar Baþlayacak...", nil)
    end
    if begin==true then
        if timestamp < os.time()-3000 and start==true then
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
            questioner=""
            local j=1
            local i=0
            while j<=numplayers do
                pname=players[j]
                if p[pname].questioners==false and tfm.get.room.playerList[pname].isDead==false and p[pname].spectator==false and p[pname].out==false then
                    i=i+1
                end
                j=j+1
            end
            if i>0 then
                eventTruthOrDare()
            else
                local j=1
            while j<=numplayers do
                local name=players[j]
                p[name].questioners=false
                j=j+1
            end
            restart=true
            timestamp=os.time()
            begin=false
        end
    end
    if choose==true and one==false then
        rand=math.random(1,numplayers)
        answerer=players[rand]
        if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or answerer==answererold or p[answerer].out==true then
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
            answerer=""
        else
            choose=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevaplayýcý! Doðrulukmu Cesaretmi Seçiyor...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplayýcýsýn! Doðruluðu Seçmek istermisin?, Cesareti Ýstersen Hayýra Bas!",answerer,250,50,300,true)
        end
    elseif choosey==true and one==false then
        rand=math.random(1,numplayers)
        questioner=players[rand]
        if p[questioner].questioners==false and tfm.get.room.playerList[questioner].isDead==false and p[questioner].spectator==false or p[questioner].out==false then
            choosey=false
            p[questioner].questioners=true
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Seçildi! Bakalým Kimi Seçecek...</font></b>", nil)
            ui.addPopup(1,1,"Rastgele Cevaplayýcý Ýstermisin? Ýstemezsen <b>Hayýra</b>, Bas Ve Nickini  Yaz",questioner,250,50,300,true)
        else
            ui.updateTextArea(1, "<p align='center'><b><font size='30'>RASTGELE...</font></b></p>", nil)
            tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
            questioner=""
        end
    end
    if skip==true then
        ui.updateTextArea(1, "<p align='center'><b><font size='30'>Skipping turn...</font></b></p>", nil)
        tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
        tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
        answerer=""
        questioner=""
        if timestamp < os.time()-3000 then
            start=true
            skip=false
        end
    end
    tfm.exec.movePlayer(questioner,120,120,false,0,0,false)
    tfm.exec.movePlayer(answerer,680,120,false,0,0,false)
    end
end
 
function eventTruthOrDare()
    start=false
    ui.removeTextArea(2)
    ui.removeTextArea(3)
    choosey=true
end
 
function eventPopupAnswer(id, name, answer)
    if id==1 and name==questioner then
        if answer=="yes" then
            answererold=""
            choose=true
        elseif answer=="no" then
            ui.addPopup(2,2,"Hangi Cevaplayýcýyý Ýstersin?",questioner,250,50,300,true)
        end
    elseif id==2 and name==questioner then
        x=1
        found=false
        answer=string.upper(string.sub(answer,0,1))..string.sub(answer,2)
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        while x<=numplayers do
        print(players[x])
            if answer==players[x] then
            answerer=answer
            if questioner==answerer or tfm.get.room.playerList[answerer].isDead or p[answerer].spectator==true or p[answerer].out==true then
            answerer=""
            found=false
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cevalayýcý! Doðruluk Veya Cesaret Seçmesini bekleyin...</font></b>", nil)
            ui.addPopup(3,1,"Cevaplayýcýsýn! Doðruluðu Ýstiyorsan <b>Evete</b>, Cesareti istiyorsan <b>Hayýra</b>Bas!",answerer,250,50,300,true)
            found=true
            end
            end
            x=x+1
        end
        if found==false then
            ui.addPopup(2,2,"There is no such answerer in the room. Type out the exact username of your answerer.",questioner,250,50,300,true)
        end
    elseif id==3 and name==answerer then   
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Doðruluðu Seçti! Sor Soruyu > "..questioner.."...</font></b>", nil)  
            ui.addPopup(4,1,"Doðruluk Sorusunu sistemin sormasýný Ýstermisin? Eðer Ýstemezsen<b>Hayýra Bas</b>,",questioner,250,50,300,true)
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Cesareti Seçti! Sor Soruyu>"..questioner.."...</font></b>", nil)
            ui.addPopup(5,1,"Cesaret Sorususu sistemin sormasýný Ýstermisin Ýstemezsen?<b>Hayýra</b>Bas!",questioner,250,50,300,true)
               
        end
    elseif id==4 and name==questioner then
        if answer=="yes" then
            question=truth[math.random(1,#truth)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Doðruluk Sorusu Seçti! Cevaplamasýný Bekleyin > "..answerer.."...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='20'>Sory: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(8,2,"<b>Type your Truth answer below</b>",answerer,250,175,300,true)
           
        elseif answer=="no" then
            ui.addPopup(6,2,"Type your Truth question below, or type #(number) for the question number from the random list.",questioner,250,50,300,true)
        end
    elseif id==5 and name==questioner then
        if answer=="yes" then
            question=dare[math.random(1,#dare)]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Rastgele Cesaret Sorusu Seçti! Bekleyin> "..answerer.." to respond...</font></b>", nil) 
            ui.addTextArea(2,"<b><font size='20'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Seçtiki> "..questioner.."Cesaretin Varsa! Kabul Et!</font><b>",answerer,250,175,300,true)
        elseif answer=="no" then
            ui.addPopup(7,2,"Type your Dare below, or type #(number) for the dare number from the random list.",questioner,250,50,300,true)
        end
    elseif id==6 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
        ui.addPopup(6,2,"You have to type something as your Truth question.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#truth then
        question=truth[tonumber(string.sub(answer,2,3))]
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Doðruluk Sorusunu Seçti! Bekleyin > "..answerer.."Seri Lütfen:)...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#truth then
        ui.addPopup(6,2,"You have to type a Truth question number less than or equal to "..tostring(#truth),questioner,250,50,300,true)
        else
        question=answer
        ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Doðruluk Sorusunu Sordu! Cevapla Bakalým > "..answerer.." to respond...</font></b>", nil)   
        ui.addTextArea(2,"<b><font size='20'>Soru: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
        ui.addPopup(8,2,"Type your Truth answer below",answerer,250,175,300,true)
        end
    elseif id==7 and name==questioner then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        if answer=="" then
            ui.addPopup(7,2,"You have to type something as your Dare.",questioner,250,50,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))<=#dare then
            if tonumber(string.sub(answer,2,3))==14 then
            mapcomplete=true
            end
            question=dare[tonumber(string.sub(answer,2,3))]
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediki> "..questioner.."Cesaretin varsa evete týkla</font><b>",answerer,250,175,300,true)
        elseif string.sub(answer,0,1)=="#" and tonumber(string.sub(answer,2,3))>#dare then
        ui.addPopup(7,2,"You have to type a Dare number less than or equal to "..tostring(#dare),questioner,250,50,300,true)
        else
            question=answer
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." has typed a Dare question! Waiting for "..answerer.." to respond...</font></b>", nil)
            ui.addTextArea(2,"<b><font size='15'>Dare: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
            ui.addPopup(9,1,"<b><font size='15'>Dediki>"..questioner.."kabul ediyorsan evete bas</font><b>",answerer,250,175,300,true)
        end
    elseif id==8 and name==answerer then
        answer=string.gsub(answer, "<", "&lt;")
        answer=string.gsub(answer, "http", "")
        ans = answer
        if ans=="" then
        ui.addPopup(8,2,"You have to type something as your Truth Answer",answerer,250,175,300,true)
        else
        ui.addTextArea(3,"<b><font size='20'>Cevap: "..ans.."</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
        ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Soruyu Cevapladý! Bekleyin > "..questioner.." to rate the answer</font></b>", nil)   
        ui.addPopup(10,1,"<b><font size='15'>Cevapdan Memnunmusun?",questioner,250,50,300,true)
        end
    elseif id==9 and name==answerer then
        if answer=="yes" then
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Kabul Ediyorum.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            if mapcomplete==true then
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! He/she will have to complete the map before entering the game. Starting new game...</font></b>", nil)
            p[answerer].out=true
            mapcomplete=false
            for i=1,#players do
                if players[i]==answerer then
                    table.remove(players,i)
                end
            end
            else
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." is a warrior! Starting new game...</font></b>", nil)   
            end
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        elseif answer=="no" then
            mapcomplete=false
            ui.updateTextArea(1, "<b><font size='15'>"..answerer.." Yeni Oyun Baþlýyor...</font></b>", nil)
            ui.addTextArea(3,"<b><font size='20'> "..answerer..", Ben Korkaðým Bunu Yapamam .</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end        
        end
    elseif id==10 and name==questioner then
        if answer=="yes" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Cevapdan Memnun! Yeni Oyun Baþlýyor...</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        elseif answer=="no" then
            ui.updateTextArea(1, "<b><font size='15'>"..questioner.."Cevapdan Memnun Deðil...:( Yeni Oyun Baþlýyor...</font></b>", nil)
            timestamp=os.time()
            answerer=""
            questioner=""
            start=true         
            for name,player in pairs(tfm.get.room.playerList) do
            tfm.exec.movePlayer(name,400,320,false,0,0,false)
            p[name].new=false
            print("false")
            end
        end
    end
end
 
function eventPlayerLeft(name)
    ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..name.." Odadan ayrýldý!</font></b></p>", nil)
    if questioner==name or answerer==name then
        timestamp=os.time()
        skip=true
    end
    for i=1,#players do
        if players[i]==name then
        table.remove(players,i)
        end
    end
end
 
function eventPlayerDied(name)
    if p[name].spectator==false then
        tfm.exec.respawnPlayer(name)
    end
    if p[name].ban==true then
        tfm.exec.killPlayer(name)
        if name==questioner or name==answerer then
            timestamp=os.time()
            skip=true
        end
    end
end
 
function eventPlayerWon(playerName,timeElapsed, timeElapsedSinceRespawn)
tfm.exec.respawnPlayer(playerName)
if p[playerName].out==true then
p[playerName].out=false
table.insert(players,playerName)
print("yes")
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds! He/she has joined back the game!</font></b></p>", nil)
else
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..playerName.." completed the map in "..(timeElapsedSinceRespawn/100).." seconds!</font></b></p>", nil)
end
end
 
function eventSummoningEnd(playerName, objectType, xPosition, yPosition, angle, xSpeed, ySpeed, other)
timestamplol[other.id]=os.time()
others[other.id]={summonobject=true}
end

doll = "Manpegasus"
 
-- Insert YOUR name here without removing the quotation marks.
god = "Buriik"
-- That's it! You can now run the script and troll people!
 
-- Editing the following code is not advised.
 
-- Binding the keyboard for god(you)
-- 73 is I, the key for Up.
-- 75 is K, the key for Down
-- 74 is J, the key for Left.
-- 76 is L, the key for Right.
 
for name in pairs(tfm.get.room.playerList) do
-- Instead of binding each key seperately, we put them all in a group.
        for keys, k in pairs({73, 74, 75, 76}) do
--And now the keys are binded!
                tfm.exec.bindKeyboard(god, k, true, true)
        end
end
 
-- Listening for keyboard events.
-- You'll notice that move values are different because it makes the doll easier to control.
 
function eventKeyboard(god, key, down, x, y)
        if key == 73 then
--Moves the player Up by 50 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, 0, -50, false)
        elseif key == 75 then
-- Moves the player Down by 40 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, 0, 40, false)
        elseif key == 74 then
-- Moves the player Left by 40 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, -40, 0, false)                
        elseif key == 76 then
-- Moves the player Right by 40 pixels
                tfm.exec.movePlayer(doll, 0, 0, true, 40, 0, false)                      
        end
end

function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,32,true,true)
end
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
         end
function eventKeyboard(name,key,down,x,y)
if key==32 then tfm.exec.movePlayer(name,0,0,true,0,-50,false)
end
end
 
-- Prints out your doll's name only to you.
 
print("<font color='#FFFF00'>"..doll.."<font color='#FFFF00'> is now your doll!")