admins={Devilstrkpro=true, Devilstrk=true, Fpkplaa=true}
bootmaps={447805,476706,424604,282584,1737297,584783,231137,183141,166805,2202628,1134969,277824,153996,192560}
survmaps={3540608,848697,908739,1525486,1545834,573817,3699989,281479,4934730,304382,2939549,281431,3620709,1277941,1539148,3042368,302224,306106,1167512,2284187,540495,908739,489829,1794873,1659906,799141,1519483,459284}
racemaps={1195842,1927270,3832217,1956002,624098,1637638,1252122,161730,1587904,156847,1851968,1665249,314205,352381,165843,2522826,430145,3652102,430145,4895634,732880}
defilmaps={3791957,3614156,3766438,1408349,3849777,3594982,3621663,2403601,87386,3787386,3791911,37664380,3730104,384552,3588592,3844155,3542818}
ffamaps={521833,401421,541917,541928,541936,541943,527935,559634,559644,888052,878047,885641,770600,770656,772172,891472,589736,589800,589708,900012,901062,754380,901337,901411,907870,910078,1190467,1252043,1124380,1016258,1252299,1255902,1256808,986790,1285380,1271249,1255944,1255983,1085344,1273114,1276664,1279258,1286824,1280135,1280342,1284861,1287556,1057753,1196679,1288489,1292983,1298164,1298521,1293189,1296949,1308378,1311136,1314419,1314982,1318248,1312411,1312589,1312845,1312933,1313969,1338762,1339474,1349878,1297154,644588,1351237,1354040,1354375,1362386,1283234,1370578,1306592,1360889,1362753,1408124,1407949,1407849,1343986,1408028,1441370,1443416,1389255,1427349,1450527,1424739,869836,1459902,1392993,1426457,1542824,1533474,1561467,1563534,1566991,1587241,1416119,1596270,1601580,1525751,1582146,1558167,1420943,1466487,1642575,1648013,1646094,1393097,1643446,1545219,1583484,1613092,1627981,1633374,1633277,1633251,1585138,1624034,1616785,1625916,1667582,1666996,1675013,1675316,1531316,1665413,1681719,1699880,1688696,623770,1727243,1531329,1683915,1689533,1738601,3756146,912118,3326933,3722005,3566478,1456622,1357994,1985670,1884075,1708065,1700322,2124484,3699046,2965313,4057963,4019126,3335202,2050466}
tfm.exec.setGameTime(99999999)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.newGame(4743936)
display={1,2,9,11,13}
bootcamp=false
survivor=false
defilante=false
racing=false
ffa=false
level=86
peynir=37779
point=9999
saman=  10979
sahsen=2249
cins = "<CH> Erkek"
players={}
bestPlayer=''
bestPlayer={}
k=''
bot = {
    name = "<a href='event:isim'>NightBot</a>",
    help = "Hoþgeldiniz! TR serverinin tek botu olan GececiBot hizmetinizde!",
    lang = "TR",
    welcome = "kabilesine hoþgeldin !",
    survivor = "Survivor açýlmýþtýr. Þamanlara dikkat edin ! Ýyi eðlenceler.",
    racing = "Racing'e hoþgeldiniz ! Hýzlý olan kazansýn. Ýyi eðlenceler.",
    defilante = "Defilante'ye hoþgeldiniz ! Bonuslarý doðru ve zamanýnda kullanýn.",
    titles = {
        "Night", "Club", "Serisi", "Eben", "sex"
    },
}
system.disableChatCommandDisplay("b")
system.disableChatCommandDisplay("bm")
system.disableChatCommandDisplay("bc")
timer=0
function eventNewGame(playerList)
    if bootcamp==true then
        tfm.exec.newGame(bootmaps[math.random(#bootmaps)])
        peynir=peynir+1
        point=point+1
        tfm.exec.disableAfkDeath(false)
    elseif survivor==true then
        tfm.exec.newGame(survmaps[math.random(#survmaps)])
        peynir=peynir+1
        tfm.exec.disableAfkDeath(false)
        point=point+1
    elseif racing==true then
        tfm.exec.setGameTime(60)
        tfm.exec.newGame(racemaps[math.random(#racemaps)])
        peynir=peynir+1
        tfm.exec.disableAfkDeath(false)
        point=point+1
    elseif defilante==true then
        tfm.exec.newGame(defilmaps[math.random(#defilmaps)])
        peynir=peynir+1
        tfm.exec.disableAfkDeath(false)
        point=point+1
    elseif ffa==true then
        tfm.exec.newGame(ffamaps[math.random(#ffamaps)])
        peynir=peynir+1
        tfm.exec.disableAfkDeath(false)
        point=point+1
    else
        tfm.exec.newGame(4743936)
        peynir=peynir+1
        tfm.exec.disableAfkDeath(true)
        point=point+1
    end
    if point==10 then
            level=level+1
            point=0
            ui.addTextArea(12,"<V>"..bot.name.."<N> artýk <J>"..level..". <N>seviyede!",name,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
    end    
end
function eventTextAreaCallback(id,name,callback)
    if callback=="isim" then
        ui.addTextArea(70,"<V><font size='13' face='soopafresh'><p align='center'>"..bot.name.."</p></font><br><N>Cins : "..cins.."<br><N>Kabile :<J> "..tfm.get.room.playerList[name].tribeName.."<br><N>Level :<J> "..level.."<br><N>Þuanki Ünvaný :<V> «"..bot.titles[1].."»<br><br><N>Þaman<br> <BL>• Peynir yüklü kurtarýlan fare sayýsý : "..saman.."<br> • Þahsen topladýðý peynir : "..sahsen.."<br><br><N>Fare<br> <BL>• Topladýðý peynir : "..peynir.. "<br><br><N>Sahip olduðu ünvanlar<br> • «"..bot.titles[1].."»<br> • «"..bot.titles[2].."»<br> • «"..bot.titles[5].."»",name,525,105,250,250,0x00001,0x000001,0.7,true)
        ui.addTextArea(69,"<a href='event:pkapat'>Kapat</a>",name,725,365,50,20,0x00001,0x000001,0.7,true)
    end
    if callback=="pkapat" then
        ui.removeTextArea(70,name)
        ui.removeTextArea(69,name)
    end
    if callback=="boy" then
        ui.updateTextArea(70,"<V><p align='center'>"..bot.name.."</p><br><N>Cins : "..cins.."<br><N>Kabile :<J> "..tfm.get.room.playerList[name].tribeName.."<br><N>Level :<J> "..level.."<br><N>Þuanki Ünvaný :<V> «"..bot.titles[1].."»<br><br><N>Þaman<br> <BL>• Peynir yüklü kurtarýlan fare sayýsý : "..saman.."<br> • Þahsen topladýðý peynir : "..sahsen.."<br><br><N>Fare<br> <BL>• Topladýðý peynir : "..peynir.. "<br><br><N>Sahip olduðu ünvanlar<br> • «"..bot.titles[1].."»<br> • «"..bot.titles[2].."»<br> • «"..bot.titles[3].."»",playerList,525,125,1000,00,0x00001,0x000001,0.7,true)
        cins = "<CH> Erkek"
    end
    if callback=="girl" then
        ui.updateTextArea(70,"<V><p align='center'>"..bot.name.."</p><br><N>Cins : "..cins.."<br><N>Kabile :<J> "..tfm.get.room.playerList[name].tribeName.."<br><N>Level :<J> "..level.."<br><N>Þuanki Ünvaný :<V> «"..bot.titles[1].."»<br><br><N>Þaman<br> <BL>• Peynir yüklü kurtarýlan fare sayýsý : "..saman.."<br> • Þahsen topladýðý peynir : "..sahsen.."<br><br><N>Fare<br> <BL>• Topladýðý peynir : "..peynir.. "<br><br><N>Sahip olduðu ünvanlar<br> • «"..bot.titles[1].."»<br> • «"..bot.titles[2].."»<br> • «"..bot.titles[3].."»",playerList,525,125,250,225,0x00001,0x000001,0.7,true)
        cins = "<ROSE> Kadýn"
    end
    if admins[name] then
    if callback=="isim" then
        ui.addTextArea(68,"<a href='event:emote'>Ýfadeler</a>",name,150,60,75,20,0x00001,0x000001,0.5,true)
        ui.addTextArea(67,"<a href='event:game'>Oyunlar</a>",name,150,25,75,20,0x00001,0x000001,0.5,true)
        ui.addTextArea(76,"<V><font size='15' face='soopafresh'><p align='center'>"..bot.name.."</p></font><br><N>Bot Cinsiyeti = <ROSE><a href='event:girl'>Kadýn +</a> <CH><a href='event:boy'>Erkek ></a><br><VP>Bot Ünvaný : <BV> <a href='event:1'>«" .. bot.titles[1] .. "»</a> <a href='event:2'>«" .. bot.titles[2] .. "»</a> <a href='event:3'>«" .. bot.titles[3] .. "»</a> <R><a href='event:özel'>Ünvaný Kendin Seç</a><br><N>"..bot.name.."'u konuþturmak için <J> !b [mesaj] <N>komutunu kullanabilirsiniz.<br><a href='event:party'><J>Party <VP>Mod</a> <a href='event:snowy'><N>Snowy Mod</a><br><R><p align='center'><a href='event:tkapat'>[KAPAT]</a></p>",name,250,25,300,120,0x00001,0x000001,0.5,true)
    end
    if callback=="emote" then
        ui.addTextArea(76,"<V><font size='15' face='soopafresh'><p align='center'>"..bot.name.."</p></font><br><BV>• <N><a href='event:gaz'>Gaz Çýkar</a><br><BV>• <N><a href='event:kalp'>Kalp At</a><br><R><p align='center'><a href='event:tkapat'>[KAPAT]</a></p>",name,250,25,300,110,0x00001,0x000001,0.5,true)
    end
    if callback=="gaz" then
                tfm.exec.displayParticle(3,125,328,-1,-0,0,0,nil)
    end
    if callback=="kalp" then
                tfm.exec.displayParticle(5,175,320,1,-1,0,0,nil)
    end
    if callback=="karanlýk" then
  ui.addTextArea(0, "Gece", nil, -400, -400, 4000, 4000, 0x000000, 0x33cc00, 0.6)
    end
    if callback=="game" then
        ui.addTextArea(76,"<V><font size='15' face='soopafresh'><p align='center'>"..bot.name.."</p></font><br><BV>• <N><a href='event:bootcamp'>Bootcamp</a>    <BV>• <N><a href='event:FFA'>FFA Battle</a>      <BV>• <N><a href='event:survivor'>Survivor</a><br><BV>• <N><a href='event:racing'>Racing</a>         <BV>• <N><a href='event:defilante'>Defilante</a><br><J><a href='event:stop'><p align='right'>Oyunu Durdur</p></a><br> <R><p align='center'><a href='event:tkapat'>[KAPAT]</a></p>",name,250,25,300,115,0x00001,0x000001,0.5,true)
    end
    if callback=="özel" then
        ui.addPopup(1,2,"<font color='#2ecf73'>"..bot.name.."</font><font color='#ddffdd'>'un Ünvanýný Seç</font>",name,250,130,300)
    end
    if callback=="3" then
 ui.addTextArea(0,"<p align='center'>"..bot.name.."<br>«"..bot.titles[3].."»</p>",playerList,120,250,85,35,0x00001,0x000001,0.4,true)
    end
    if callback=="2" then
 ui.addTextArea(0,"<p align='center'>"..bot.name.."<br>«"..bot.titles[2].."»</p>",playerList,120,250,85,35,0x00001,0x000001,0.4,true)
    end
    if callback=="1" then
 ui.addTextArea(0,"<p align='center'>"..bot.name.."<br>«"..bot.titles[1].."»</p>",playerList,120,250,85,35,0x00001,0x000001,0.4,true)
    end
    if callback=="FFA" then
        ffa=true
        racing=false
        survivor=false
        defilante=false
        bootcamp=false
        tfm.exec.bindKeyboard(name,32,true,true)
        tfm.exec.bindKeyboard(name, 40, true, true)
        tfm.exec.bindKeyboard(name, 83, true, true)
        tfm.exec.newGame(ffamaps[math.random(#ffamaps)])
        tfm.exec.disableAutoShaman(true)    
        ui.removeTextArea(0,playerList)
    end
    if callback=="bootcamp" then
        tfm.exec.bindKeyboard(name,32,true,false)
        tfm.exec.setGameTime(300)
        tfm.exec.disableAutoShaman(true)
        tfm.exec.newGame(bootmaps[math.random(#bootmaps)])
        bootcamp=true
        ui.removeTextArea(0,playerList)
    else
        bootcamp=false
    end
    end
    if callback=="racing" then
        racing=true
        ffa=false
        bootcamp=false
        defilante=false
        survivor=false
        tfm.exec.bindKeyboard(name,32,true,false)
        tfm.exec.setGameTime(60)
        tfm.exec.disableAutoShaman(true)
        tfm.exec.newGame(racemaps[math.random(#racemaps)])
        ui.addTextArea(1,"<V>["..bot.name.."]<N> "..bot.racing.."",name,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
        ui.removeTextArea(0,playerList)
    end
    if callback=="survivor" then
        ui.removeTextArea(0,playerList)
        survivor=true
        ffa=false
        bootcamp=false
        defilante=false
        racing=false
        tfm.exec.disableAutoShaman(false)
        tfm.exec.bindKeyboard(name,32,true,false)
        tfm.exec.newGame(survmaps[math.random(#survmaps)])
        ui.addTextArea(1,"<V>["..bot.name.."]<N> "..bot.survivor.."",name,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
    end
    if callback=="defilante" then
        ui.removeTextArea(0,playerList)
        defilante=true
        ffa=false
        bootcamp=false
        survivor=false
        racing=false
        ui.addTextArea(1,"<V>["..bot.name.."]<N> "..bot.defilante.."",name,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
        tfm.exec.disableAutoShaman(true)
        tfm.exec.newGame(defilmaps[math.random(#defilmaps)])
    end
    if callback=="stop" then
        defilante=false
        ffa=false
        bootcamp=false
        racing=false
        survivor=false
        tfm.exec.newGame(4743936)
        ui.addTextArea(0,"<p align='center'>"..bot.name.."<br>«"..bot.titles[1].."»</p>",name,120,255,75,30,0x00001,0x000001,0.4,true)
    end
    if callback=="tkapat" then
        ui.removeTextArea(76,name) ui.removeTextArea(67,name) ui.removeTextArea(68,name)
                ui.addPopup(1,2,"",name,-1000,-1000,300)
    end
    if callback=="party" then
    numbers=90
    function eventLoop()
    for i=5,numbers do
                tfm.exec.displayParticle(display[math.random(#display)], math.random(20,800), math.random(20,400),-10,-1,0,0,nil)
                tfm.exec.displayParticle(display[math.random(#display)], math.random(20,800), math.random(20,400),-10,-1,0,0,nil)
                tfm.exec.displayParticle(display[math.random(#display)], math.random(20,800), math.random(20,400),-10,-1,0,0,nil)
    end
    end
    end
    if callback=="snowy" then
    tfm.exec.snow()
    end
    end
 
function eventPlayerDied(name)
    if bootcamp==true then
     tfm.exec.respawnPlayer(name)
    elseif ffa==true then
                local i=0
        local n
        for pname,player in pairs(tfm.get.room.playerList) do
                if not player.isDead then
                        i=i+1
                        n=pname
                end
        end
        if i==0 then
                tfm.exec.newGame(maps[math.random(#maps)])
        elseif i==1 then
                tfm.exec.giveCheese(n)
                tfm.exec.playerVictory(n)
                tfm.exec.setGameTime(5)
        end
     end
end
 
function eventPopupAnswer(popupId, name, command)
        if (popupId == 1) then
 ui.addTextArea(0,"<p align='center'>"..bot.name.."<br>«"..command.."»</p>",playerList,120,250,85,35,0x00001,0x000001,0.4,true)
        end
end
 
function isAdmin(name) return (admins[name] or false) end
function eventChatCommand(name, cmd)
    local args={}
    for arg in cmd:gmatch("%S+") do
        table.insert(args,arg)
    end
    -- Normal oyuncu komutlarý
    if args[1]=="c" then
    if args[2]=="Trbot" then
    if args[3]=="help" then
    ui.addTextArea(1," <font color='#F0A78E'>> ["..bot.lang.."] [</font><font color='#E88F4F'>"..bot.name.."</font><font color='#F0A78E'>] "..bot.help.."", name, 5,378,475,50,0x324650,0x4F6C7B,0.9,true)
end
    end    
end
    if isAdmin(name) then
    if args[1]=="b" then
        ui.addTextArea(22,cmd:sub(#args[1]+2),nil,117,220,80,nil, 0x3C5064, 0x3C5064,1,true)
    timer=0    
    end
    if args[1]=="close" then
    system.exit()
    end
    if args[1]=="bm" then
        ui.addTextArea(1,"<V>["..bot.name.."]<N> "..cmd:sub(#args[1]+2).."",nil,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
    end
    if args[1]=="bc" then
        ui.addTextArea(22,cmd:sub(#args[1]+2),nil,117,220,80,nil, 0x3C5064, 0x3C5064,1,true)
        ui.addTextArea(1,"<V>["..bot.name.."]<N> "..cmd:sub(#args[1]+2).."",nil,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
    end
    end
end
 
 
 
timer=0
 
function eventLoop()
    timer=timer+0.5
        if timer==5 then
        ui.removeTextArea(22,name)
    end
end    
 
function eventNewPlayer(name)
    ui.addTextArea(0,"<p align='center'>"..bot.name.."<br>«"..bot.titles[1].."»</p>",name,120,255,75,30,0x00001,0x000001,0.4,true)
    tfm.exec.bindKeyboard(name,32,true,false)
    tfm.exec.respawnPlayer(name)
    tfm.exec.bindKeyboard(name,17,true,true)
    ui.addTextArea(1," <font color='#F0A78E'> > ["..bot.lang.."] [</font><font color='#E88F4F'>"..bot.name.."</font><font color='#F0A78E'>] "..tfm.get.room.playerList[name].tribeName.." "..bot.welcome.."",name,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
end
for name,player in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
 
 
local sonDragSuresi = {}
local dragMesafesi  = 5
local dragHizi      = 100
local dragFlood     = true
local dragFloodSure = 1000
 
function eventKeyboard(name, key, down,x,y)
if admins[name] then
        if key==17 then
        ui.addTextArea(68,"<a href='event:emote'>Ýfadeler</a>",name,150,60,75,20,0x00001,0x000001,0.5,true)
        ui.addTextArea(67,"<a href='event:game'>Oyunlar</a>",name,150,25,75,20,0x00001,0x000001,0.5,true)
        ui.addTextArea(76,"<V><font size='15' face='soopafresh'><p align='center'>"..bot.name.."</p></font><br><N>Bot Cinsiyeti = <ROSE><a href='event:girl'>Kadýn +</a> <CH><a href='event:boy'>Erkek ></a><br><VP>Bot Ünvaný : <BV> <a href='event:1'>«" .. bot.titles[1] .. "»</a> <a href='event:2'>«" .. bot.titles[2] .. "»</a> <a href='event:3'>«" .. bot.titles[3] .. "»</a> <R><a href='event:özel'>Ünvaný Kendin Seç</a><br><N>"..bot.name.."'u konuþturmak için <J> !b [mesaj] <N>komutunu kullanabilirsiniz.<br><a href='event:party'><J>Party <VP>Mod</a> <a href='event:karanlýk'><N>Snowy Mod</a><br><R><p align='center'><a href='event:tkapat'>[KAPAT]</a></p>",name,250,25,300,120,0x00001,0x000001,0.5,true)
end
end
  if key == 40 or key == 83 or key == 32 then
    if sonDragSuresi[name] == nil or not dragFlood or os.difftime(os.time(), sonDragSuresi[name]) > dragFloodSure then
      local oyuncu = tfm.get.room.playerList[name]
      tfm.exec.addShamanObject(
        oyuncu.isFacingRight and tfm.enum.shamanObject.cannon or tfm.enum.shamanObject.cannon+1,
        oyuncu.x, oyuncu.y+dragMesafesi, 0,
        oyuncu.isFacingRight and -dragHizi or dragHizi, 0, false)
      sonDragSuresi[name] = os.time()
    end
  end
end