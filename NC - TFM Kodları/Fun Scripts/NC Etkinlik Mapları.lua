admin = "devilstrkpro#0000"
 

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
 
function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerWon(playerName)
tfm.exec.respawnPlayer(playerName)
end
 
tfm.exec.newGame('@7178848')
tfm.exec.setUIMapName("<R>Night Club'e Hoþgeldiniz! <bl> - <VP>Night Club")

-------------------------------Liste
 
ui.addTextArea(5,"<a href='event:etk'>Etkinlik</a>",admin,0,25,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(6,"<a href='event:neko'>Nekodancer</a>",admin,0,75,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(7,"<a href='event:spor'>Spor</a>",admin,0,125,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(8,"<a href='event:ev'>Ev</a>",admin,0,175,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(9,"<a href='event:ev2'>Ev</a>",admin,0,225,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(10,"<a href='event:iþ'>Ýþ - Eðlence</a>",admin,0,275,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(11,"<a href='event:çiz'>Çizim</a>",admin,0,325,00,20,0x00001,0xFF0000,0.9,true)
ui.addTextArea(12,"<a href='event:Çiz2'>Çizim</a>",admin,0,375,00,20,0x00001,0xFF0000,0.9,true)





------------------------------- Fonksiyonlar

function chooseHouse(event)

        if event=="etk" then
ui.addTextArea(3,"<p align='center'><vp>Etkinlikler : <j><a href='event:carnaval2014'>Karnaval 2014 </a><vp>- <j><a href='event:noel2013'>Noel 2013 </a><vp>- <j><a href='event:sevgililergünü'>Sevgililer restorandý </a><vp>- <j><a href='event:balýk2013'>Balýk 2013 </a><vp>- <j><a href='event:cadýlarbar'>Cadýlar Bayramý Bar </a><vp>- <j><a href='event:cadýlarev'>Cadýlar Bayramý Ev </a><vp>- <j><a href='event:801'>Oda 801</a><vp>- <j><a href='event:balýk1'>Balýk 1</a><vp>- <j><a href='event:balýk2'>Balýk 2</a><vp>- <j><a href='event:balýk3'>Balýk 3</a><vp>- <j><a href='event:balýk4'>Balýk 4</a><vp>- <j><a href='event:balýk5'>Balýk 5</a><vp>- <j><a href='event:balýk6'>Balýk 6</a><vp>- <j><a href='event:balýk7'>Balýk 7</a><vp>- <j><a href='event:balýk8'>Balýk 8</a><vp>- <j><a href='event:müze'>Müze</a><vp>-<j><a href='event:sandal'>Sandal</a><vp>- <j><a href='event:cadýlar1'>Cadýlar 1 </a><vp>- <j><a href='event:cadýlar2'>Cadýlar 2</a><vp>- <j><a href='event:tatlý1'>Tatlý 1</a><vp>- <j><a href='event:tatlý2'>Tatlý 2</a><vp>- <j><a href='event:tatlý3'>Tatlý 3</a><vp>- <j><a href='event:tatlý4'>Tatlý 4</a><vp>- <j><a href='event:tatlý 5'>Tatlý 5</a><vp>- <j><a href='event:tatlý6'>Tatlý 6</a></p>- <j><a href='event:okul1'>Okul 1<a><p>- <j><a href='event:okul2'>Okul 2<a><p>- <j><a href='event:ejder'>Çin<a><p> - <j><a href='event:gökkuþaðý'>Gökkuþaðý<a><p> - <j><a href='event:kamp'>Kamp<a><p> - <j><a href='event:sýcak'>Sýcak Hava Balonu<a><p> - <j><a href='event:kral'>Kraliyet<a><p>",admin,20,35,750,00,nil,FFEF00,0.9,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,170,790,20,nil,n,n,true)



        elseif event=="neko" then
ui.addTextArea(3,"<p align='center'><ch>Nekodancer: \n<j><a href='event:nd1'>Nekodancer Odasý 1</a><CH> | <j><a href='event:nd2'>Nekodancer Odasý 2</a><CH> | <j><a href='event:nd3'>Nekodancer Odasý 3</a><CH> | <j><a href='event:nd4'>Nekodancer Odasý 4</a><CH> | <j><a href='event:nd5'>Nekodancer Odasý 5</a><CH> | <j><a href='event:nd6'>Nekodancer Odasý 6</a><CH> | <j><a href='event:nd7'>Nekodancer Odasý 7</a><CH> | <j><a href='event:nd8'>Nekodancer Odasý 8</a><CH> | <j><a href='event:nd9'>Nekodancer Odasý 9</a><CH> | <j><a href='event:nd10'>Nekodancer odasý 10</a><CH> | <j><a href='event:nd11'>Nekodancer Odasý 11</a><CH> | <j><a href='event:nd12'>Nekodancer Odasý 12</a><CH> | <j><a href='event:nd13'>Nekodancer Odasý 13</a><CH> | <j><a href='event:nd14'>Nekodancer Odasý 14</a><CH> | <j><a href='event:nd15'>Nekodancer Odasý 15</a><CH> | <j><a href='event:nd16'>Nekodancer Odasý 16</a>",admin,5,54,790,84,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,150,790,20,nil,n,n,true)



        elseif event=="spor" then
ui.addTextArea(3,"<p align='center'><ch>Spor: \n<j><a href='event:sp1'>Kornerli Futbol</a><CH> | <j><a href='event:sp2'>Uzun Futbol</a><CH> | <j><a href='event:sp3'>Kýsa Futbol</a><CH> | <j><a href='event:sp4'>Çimenli Futbol</a><CH> | <j><a href='event:sp5'>Küplü Futbol</a><CH> | <j><a href='event:sp6'>Kýsa 3D Futbol</a><CH> | <j><a href='event:sp7'>Kýrmýzý Toplu Futbol</a><CH> | <j><a href='event:sp8'>Orta Sahalý Futbol</a><CH> | <j><a href='event:sp9'>NC Futbol Stadyumu</a><CH> | <j><a href='event:sp10'>NC Futbol Stadyumu (2)</a><CH> | <j><a href='event:sp11'>Büyük 3D Basketbol</a><CH> | <j><a href='event:sp12'>Orjinal Toplu Basket</a><CH> | <j><a href='event:sp13'>3D Turuncu Modül Basketbolu</a><CH> | <j><a href='event:sp14'>3D Mavi Modül Basketbolu</a><CH> | <j><a href='event:sp15'>Plaj Voleybolu</a><CH> | <j><a href='event:sp16'>Buz Hokeyi</a><CH> | <j><a href='event:sp17'>Su Topu</a>",admin,5,54,790,84,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,150,790,20,nil,n,n,true)


        elseif event=="ev" then
ui.addTextArea(3,"<p align='center'><ch>Ev: \n<j><a href='event:ev1'>Büyük Lüküs Ev</a><CH> | <j><a href='event:Ev2'>Þömineli Ev</a><CH> | <j><a href='event:ev3'>Köprülü Ev</a><CH> | <j><a href='event:ev4'>Teleferikli Kýþ Evi</a><CH> | <j><a href='event:ev5'>Doða Manzaralý Ev</a><CH> | <j><a href='event:ev6'>Lacivert- Siyah Ev</a><CH> | <j><a href='event:ev7'>Araba Yarýþlý Büyük Ev</a><CH> | <j><a href='event:ev8'>Gerçek Asansörlü Ev</a><CH> | <j><a href='event:ev9'>Kristal Avizeli Ev</a><CH> | <j><a href='event:ev10'>Þelaleli Aðaç Ev</a><CH> | <j><a href='event:ev11'>Modern Ev</a><CH> | <j><a href='event:ev12'>Doða Manzaralý Lüks Ev</a><CH> | <j><a href='event:ev13'>Çin Evi</a><CH> | <j><a href='event:ev14'>Doða Manzaralý Büyük Ev</a><CH> | <j><a href='event:ev15'>Uzay Evi</a><CH> | <j><a href='event:ev16'>Aðaç Ev</a><CH> \n<j><a href='event:ev17'>Disko Efektli Çok Odalý Ev</a><CH> | <j><a href='event:ev18'>Gemi Ev</a><CH> | <j><a href='event:ev19'>Ahþap Ev</a><CH> | <j><a href='event:ev20'>Nehir Kenarýnda Ev</a>",admin,5,54,790,84,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,150,790,20,nil,n,n,true)


        elseif event=="ev2" then
ui.addTextArea(3,"<p align='center'><ch>Ev: \n<j><a href='event:ev21'>Kiraz Aðaçlý Ev</a><CH> | <j><a href='event:ev22'>Disko Efektli Ev</a><CH> | <j><a href='event:ev23'>Uzakdoðu Evi</a><CH> | <j><a href='event:ev24'>Iþýnlanma Geçitli Ev</a><CH> | <j><a href='event:ev25'>Romantik Bahçeli Ev</a><CH> | <j><a href='event:ev26'>Kýrmýzýlý Büyük Ev</a><CH> | <j><a href='event:ev27'>2 Aslan Efektli Ev</a><CH> | <j><a href='event:ev28'>Büyük Dað Manzaralý Ev</a><CH> | <j><a href='event:ev29'>Kuyulu Aðaç Ev</a><CH> | <j><a href='event:ev30'>Plaj Evi</a><CH> | <j><a href='event:ev31'>Su Kaydýraklý Ev</a><CH> | <j><a href='event:ev32'>Çizimli Aðaç Ev</a><CH> \n<j><a href='event:ev33'>Uzakdoðu Dövüþ Evi</a><CH> | <j><a href='event:ev34'>Neon Ev</a><CH> | <j><a href='event:ev35'>Büyük Havuzlu Ev</a><CH> | <j><a href='event:ev36'>Korku Efektli Ev</a><CH> | <j><a href='event:ev37'>Renkli Ev</a><CH> | <j><a href='event:ev38'>Gizli Üslü Kýþ Evi</a><CH> | <j><a href='event:ev39'>Merdivenli Küçük Ev</a><CH> | <j><a href='event:ev40'>Ahþap Ev</a><CH> | <j><a href='event:ev41'>Helikopterli Ev</a>",admin,5,54,790,84,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,150,790,20,nil,n,n,true)


        elseif event=="iþ" then
ui.addTextArea(3,"<p align='center'><ch>ÝÞ Ve Eðlence: \n<j><a href='event:iþ1'>Lunapark</a><CH> | <j><a href='event:iþ2'>Büyük Disco</a><CH> | <j><a href='event:iþ3'>Mavi - Beyaz Cafe</a><CH> | <j><a href='event:iþ4'>Spor Salonu</a><CH> | <j><a href='event:iþ5'>Kumsal Partisi</a><CH> | <j><a href='event:iþ6'>Kale</a><CH> | <j><a href='event:iþ7'>Plaj Cafe</a><CH> | <j><a href='event:iþ8'>Atlantis</a><CH> | <j><a href='event:iþ9'>Uzay Üssü</a><CH> | <j><a href='event:iþ10'>Okul</a><CH> | <j><a href='event:iþ11'>Merdivenli Ev</a><CH> | <j><a href='event:iþ12'>Sinema Salonu</a><CH> \n<j><a href='event:iþ13'>Çizimli Sinema</a><CH> | <j><a href='event:iþ14'>Bar Disco</a><CH> | <j><a href='event:iþ15'>Holding</a><CH> | <j><a href='event:iþ16'>DJ'yli Disco</a><CH> | <j><a href='event:iþ17'>Renkli Disco</a><CH> | <j><a href='event:iþ18'>Yeþil Sinema</a><CH> | <j><a href='event:iþ19'>Hastane</a><CH> | <j><a href='event:iþ20'>Cadýlar Bayramý Sinemasý</a><CH> | <j><a href='event:iþ21'>Hastane</a><CH> | <j><a href='event:iþ22'>Evlilik Dairesi</a><CH> | <j><a href='event:iþ23'>Çift Katlý Sinema</a><CH> | <j><a href='event:iþ24'>Toplu Sinema</a><CH> | <j><a href='event:iþ25'>AVM</a><CH> | <j><a href='event:iþ26'>Asansörlü Otel</a><CH> | <j><a href='event:iþ27'>Sinemalý Cafe</a><CH> | <j><a href='event:iþ28'>DJ'yli Disco</a><CH> | <j><a href='event:iþ29'>Biletli Sinema</a><CH> | <j><a href='event:iþ30'>NC Otel</a><CH> | <j><a href='event:iþ31'>Barlý Disco</a><CH> | <j><a href='event:iþ32'>Bar</a><CH> \n<j><a href='event:iþ33'>Aðaç Evli Mangal</a><CH> | <j><a href='event:iþ34'>Kaykay Pist</a><CH> | <j><a href='event:iþ35'>Su Parký</a><CH> | <j><a href='event:iþ36'>Okul</a>",admin,5,54,790,100,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,160,790,20,nil,n,n,true)



        elseif event=="çiz" then
ui.addTextArea(3,"<p align='center'><ch>Çizim: \n<j><a href='event:çiz1'>Tank</a><CH> | <j><a href='event:çiz2'>Konser</a><CH> | <j><a href='event:çiz3'>Uzay Gemisi</a><CH> | <j><a href='event:çiz4'>Piknik</a><CH> | <j><a href='event:çiz5'>Yanardað</a><CH> | <j><a href='event:çiz8'>Atatürk</a><CH> | <j><a href='event:çiz9'>Türk Bayraðý</a><CH> | <j><a href='event:çiz10'>Laðam</a><CH> | <j><a href='event:çiz11'>Tank</a><CH> | <j><a href='event:çiz12'>Korsan Gemili Issýz Ada</a><CH> \n<j><a href='event:çiz13'>Maymun</a><CH> | <j><a href='event:çiz14'>Köpek</a><CH> | <j><a href='event:çiz15'>DM Çöl</a><CH> | <j><a href='event:çiz16'>DM Bogeda Bay</a><CH> | <j><a href='event:çiz17'>DM Yanan Þehir</a><CH> | <j><a href='event:çiz18'>DM Yanan Þehir (2)</a><CH> | <j><a href='event:çiz19'>DM Ýtemli Kamp</a><CH> | <j><a href='event:çiz20'>DM Kamp Alaný</a><CH> | <j><a href='event:çiz21'>Bulut Sinemasý</a><CH> | <j><a href='event:çiz22'>Hamster Topu</a><CH> | <j><a href='event:çiz23'>Ýnternet Kafe</a><CH> | <j><a href='event:çiz24'>Noel Baba Evi</a><CH> | <j><a href='event:çiz25'>Cadýlar Bayramý</a><CH> | <j><a href='event:çiz26'>Kamp</a><CH> | <j><a href='event:çiz27'>Ateþ Ve Su</a><CH> | <j><a href='event:çiz28'>Radyoaktif Bölge</a><CH> | <j><a href='event:çiz29'>Gökbilim Evi</a><CH> | <j><a href='event:çiz30'>Basketbol Stadyumu</a><CH> | <j><a href='event:çiz31'>Zindan</a><CH> | <j><a href='event:çiz32'>Romantik Bahçe</a><CH> \n<j><a href='event:çiz33'>Savaþ Alaný</a><CH> | <j><a href='event:çiz34'>Cadý Evi</a><CH> | <j><a href='event:çiz35'>Þelaleli Sinema</a><CH> | <j><a href='event:çiz36'>Havuzlu Villa</a>",admin,5,54,790,100,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,160,790,20,nil,n,n,true)



        elseif event=="Çiz2" then
ui.addTextArea(3,"<p align='center'><ch>Çizim: \n<j><a href='event:çiz37'>Þelale</a><CH> | <j><a href='event:çiz38'>Sýcak Hava Balonu</a><CH> | <j><a href='event:çiz39'>Büyük Yat</a><CH> | <j><a href='event:çiz40'>Küçük Yat</a><CH> | <j><a href='event:çiz41'>Roket</a><CH> | <j><a href='event:çiz42'>Korku Efektli Balon</a><CH> \n<j><a href='event:çiz43'>Köprülü Bahçe</a><CH> | <j><a href='event:çiz44'>Korsan Gemisi</a><CH> | <j><a href='event:çiz45'>Kamp Ateþi Festivalý</a><CH> | <j><a href='event:çiz46'>Ayý Parký</a><CH> | <j><a href='event:çiz47'>Tren</a><CH> | <j><a href='event:çiz48'>Zeplin</a><CH> | <j><a href='event:çiz49'>Hýz Treni</a><CH> | <j><a href='event:çiz50'>Gemi</a><CH> | <j><a href='event:çiz51'>Füze</a><CH> | <j><a href='event:çiz52'>Gizli Üslü Kamp</a><CH> | <j><a href='event:çiz53'>Korku Efektli Sinema</a><CH> | <j><a href='event:çiz54'>Kaykay Yarýþý</a><CH> | <j><a href='event:çiz55'>Korku Bahçesi</a><CH> | <j><a href='event:çiz56'>Kýþ Evi</a><CH> | <j><a href='event:çiz57'>TFM Uçaðý</a><CH> | <j><a href='event:çiz58'>Balýkçý Gemisi</a><CH> | <j><a href='event:çiz59'>Korsan Gemisi</a><CH> | <j><a href='event:çiz60'>Maðaradaki Ayý</a><CH> | <j><a href='event:çiz61'>Eyfel Kulesi</a><CH> | <j><a href='event:çiz62'>Kamp</a><CH> \n<j><a href='event:çiz63'>Romantik Uçan Ada</a><CH> | <j><a href='event:çiz64'>Kuðulu Gemi</a><CH> | <j><a href='event:çiz65'Noel Sinemasý</a><CH> | <j><a href='event:çiz66'>Deðirmen</a>",admin,5,54,790,100,nil,n,n,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",admin,5,160,790,20,nil,n,n,true)




elseif event=="zam" then
ui.removeTextArea(3,nil)
ui.removeTextArea(4,nil)





---------------------------------Etkinlik

elseif event=="carnaval2014" then         
tfm.exec.newGame('<C><P L="1600"D="x_evenements/x_carnaval2014.jpg"mc=""/><Z><S ><S L="140"o="324650"X="130"H="40"Y="345"m=""P="1,,0.3,0.2"/><S c="2"L="10"o="31324f"X="65"H="110"Y="310"m=""P="1,,0.3,0.2"/><S c="2"L="10"o="31324f"X="195"H="110"Y="310"m=""P="1,,0.3,0.2"/><S L="10"o="19cbba"X="55"H="70"Y="360"m=""P="1,,,0.2,90"/><S L="10"o="19cbba"X="205"H="70"Y="360"m=""P="1,,,0.2,-90"/><S Y="280"L="140"o="324650"X="130"H="10"N=""i="-30,-30,x_evenements/x_carnaval/x_char.png"P="1,,0.3,0.2"/><S Y="360"L="20"o="324650"X="30"H="10"N=""i="-20,-20,x_evenements/x_carnaval/x_roue.png"T="13"P="1,,0.3,0.2"/><S Y="360"L="20"o="324650"X="230"H="10"N=""i="-20,-20,x_evenements/x_carnaval/x_roue.png"T="13"P="1,,0.3,0.2"/><S L="300"X="149"Y="390"T="0"H="20"/><S L="400"H="20"Y="390"T="0"X="1402"/><S P=",,0.3,0.2,-50"L="400"H="20"Y="355"T="0"X="544"/><S P=",,0.3,0.2,50"L="400"X="950"Y="355"T="0"H="20"/></S><D><DS Y="311"X="118"/><DC Y="260"X="120"/><F Y="312"X="1488"/><T Y="316"X="1589"/></D><O ><O C="14"Y="360"P="0"X="30"/><O C="14"Y="280"P="0"X="195"/><O C="14"Y="330"P="0"X="195"/><O C="14"Y="280"P="0"X="65"/><O C="14"Y="330"P="0"X="65"/><O C="14"Y="360"P="0"X="65"/><O C="14"Y="360"P="0"X="85"/><O C="14"Y="360"P="0"X="175"/><O C="14"Y="360"P="0"X="195"/><O C="14"Y="360"P="0"X="230"/></O></Z></C>');
tfm.exec.setUIMapName("<R-VP>Karnaval 2014 - <VP>Night Club")        


elseif event=="bn" then
tfm.exec.newGame('<C><P D="x_evenements/x_fondNowel2013.jpg" /><Z><S><S Y="397" T="12" P="0,0,0.3,0.2,0,0,0,0" L="800" o="12bd94" m="" X="400" H="25" /><S Y="361" T="12" P="0,0,0.3,0.2,0,0,0,0" L="125" o="12bd94" m="" X="254" H="25" /><S Y="361" T="12" P="0,0,0.3,0.2,0,0,0,0" L="300" o="12bd94" m="" X="136" H="60" /><S Y="201" T="12" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" m="" X="-10" H="400" /><S Y="201" T="12" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" m="" X="811" H="400" /><S Y="372" T="12" P="0,0,0.3,0.2,0,0,0,0" L="125" o="12bd94" m="" X="284" H="25" /><S Y="385" T="12" P="0,0,0.3,0.2,0,0,0,0" L="125" o="12bd94" m="" X="312" H="25" /><S Y="316" T="12" P="0,0,0.3,0.2,0,0,0,0" L="140" o="12bd94" m="" X="495" H="10" /><S Y="210" T="12" P="0,0,0.3,0.2,-70,0,0,0" L="160" o="12bd94" m="" X="233" H="10" /><S Y="212" T="12" P="0,0,0.3,0.2,-70,0,0,0" L="160" o="12bd94" m="" X="249" H="10" /><S Y="187" T="12" P="0,0,0.3,0.2,0,0,0,0" L="170" o="12bd94" m="" X="80" H="10" /><S Y="135" T="12" P="0,0,0.3,0.2,0,0,0,0" L="560" o="12bd94" m="" X="536" H="10" /><S Y="108" T="12" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" m="" X="422" H="40" /><S Y="120" T="12" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" m="" X="365" H="40" /><S Y="115" T="12" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" m="" X="656" H="40" /><S Y="107" T="12" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" m="" X="752" H="50" /><S Y="119" T="12" P="0,0,0.3,0.8,0,0,0,0" L="90" o="12bd94" m="" X="705" H="40" /><S Y="-9" T="12" P="0,0,0.3,0.2,90,0,0,0" L="20" o="12bd94" m="" X="404" H="900" /></S><D><T Y="329" X="91" /><DS Y="317" X="89" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Oda 801 - <VP>Night Club")  


tfm.exec.newGame('<C><P APS="x_evenements/x_fondSVb.png,0,940,0,800,400" L="1660" D="x_evenements/x_fondSVa.jpg" d="x_evenements/x_fondSVc.png" /><Z><S><S Y="201" T="12" P="0,0,0,0.2,90,0,0,0" L="400" o="12bd94" m="" X="-4" H="10" /><S Y="390" T="12" P="0,0,0.3,0.2,0,0,0,0" L="200" o="12bd94" m="" X="101" H="20" /><S Y="403" T="12" P="0,0,0.3,0.2,0,0,0,0" L="310" o="12bd94" m="" X="354" H="20" /><S Y="389" T="12" P="0,0,0.3,0.2,0,0,0,0" L="400" o="12bd94" m="" X="706" H="20" /><S Y="401" T="12" P="0,0,0.3,0.2,0,0,0,0" L="720" o="12bd94" m="" X="1300" H="20" /><S Y="390" T="12" P="0,0,0.3,0.2,-30,0,0,0" L="30" o="12bd94" m="" X="497" H="10" /><S Y="393" T="12" P="0,0,0.3,0.2,40,0,0,0" L="30" o="12bd94" m="" X="210" H="10" /><S Y="390" T="12" P="0,0,0.3,0.2,15,0,0,0" L="50" o="12bd94" m="" X="927" H="10" /><S Y="241" T="9" P="0,0,,,,0,0,0" L="57" m="" X="1630" H="300" /><S Y="265" T="12" P="0,0,0.3,0.2,0,0,0,0" L="850" o="12bd94" m="" X="1174" H="10" /><S Y="148" T="12" P="0,0,0.3,0.2,0,0,0,0" L="850" o="12bd94" m="" X="1176" H="10" /><S Y="201" T="12" P="0,0,0,0.2,-90,0,0,0" L="420" o="12bd94" m="" X="1664" H="10" /><S Y="-10" T="12" P="0,0,0.3,0,0,0,0,0" L="720" o="12bd94" m="" X="1309" H="20" /><S Y="273" T="12" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" m="" X="629" H="10" /><S Y="214" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="565" H="10" /><S Y="66" T="12" P="0,0,0.3,0.2,0,0,0,0" L="280" o="12bd94" m="" X="266" H="10" /><S Y="218" T="12" P="0,0,0.3,0.2,90,0,0,0" L="200" o="12bd94" m="" X="429" H="10" /></S><D><DS Y="362" X="89" /><P Y="143" T="68" X="844" P="0,0" /><P Y="142" T="67" X="801" P="0,0" /><P Y="143" T="67" X="890" P="0,1" /><P Y="259" T="68" X="850" P="0,0" /><P Y="143" T="68" X="1017" P="0,0" /><P Y="143" T="68" X="1182" P="0,0" /><P Y="143" T="68" X="1334" P="0,0" /><P Y="143" T="68" X="1507" P="0,0" /><P Y="260" T="68" X="1513" P="0,0" /><P Y="260" T="68" X="1339" P="0,0" /><P Y="260" T="68" X="1174" P="0,0" /><P Y="260" T="68" X="1019" P="0,0" /><P Y="390" T="68" X="1115" P="0,0" /><P Y="389" T="68" X="1285" P="0,0" /><P Y="391" T="68" X="1459" P="0,0" /><P Y="260" T="67" X="809" P="0,0" /><P Y="143" T="67" X="975" P="0,0" /><P Y="144" T="67" X="1137" P="0,0" /><P Y="144" T="67" X="1290" P="0,0" /><P Y="144" T="67" X="1464" P="0,0" /><P Y="260" T="67" X="971" P="0,0" /><P Y="260" T="67" X="1131" P="0,0" /><P Y="259" T="67" X="1296" P="0,0" /><P Y="260" T="67" X="1468" P="0,0" /><P Y="391" T="67" X="1415" P="0,0" /><P Y="390" T="67" X="1240" P="0,0" /><P Y="391" T="67" X="1070" P="0,0" /><P Y="260" T="67" X="894" P="0,1" /><P Y="390" T="67" X="1504" P="0,1" /><P Y="391" T="67" X="1331" P="0,1" /><P Y="390" T="67" X="1160" P="0,1" /><P Y="144" T="67" X="1552" P="0,1" /><P Y="144" T="67" X="1380" P="0,1" /><P Y="143" T="67" X="1230" P="0,1" /><P Y="143" T="67" X="1063" P="0,1" /><P Y="260" T="67" X="1063" P="0,1" /><P Y="260" T="67" X="1220" P="0,1" /><P Y="260" T="67" X="1387" P="0,1" /><P Y="259" T="67" X="1558" P="0,1" /></D><O><O C="22" Y="282" X="1108" P="0" /></O></Z></C>')
tfm.exec.setUIMapName("<VP>Noel Bayramý - <VP>Night Club")  
        

elseif event=="cadýlarev"then
tfm.exec.newGame('<C><P L="3000"H="734"DS="m;175,680,2961,696,2017,221"D="x_evenements/x_fondHalloween.jpg"d="x_evenements/x_fondHalloween2.png"/><Z><S ><S L="1070"X="1330"H="25"Y="710"m=""/><S L="734"X="3005"H="20"Y="368"m=""P=",,20,0.2,-90"/><S L="734"X="0"H="10"Y="367"m=""P=",,,0.2,90"/><S L="580"X="2421"H="10"Y="398"m=""/><S L="1000"X="2394"H="10"Y="481"m=""/><S L="50"X="1871"H="25"Y="697"m=""P=",,0.3,0.2,-30"/><S L="800"X="396"H="25"Y="710"m=""/><S L="70"X="1932"H="25"Y="705"m=""P=",,0.3,0.2,40"/><S L="30"X="1900"H="25"Y="686"m=""/><S L="1070"X="2480"H="25"Y="725"m=""/><S L="80"X="2020"H="10"Y="633"m=""/><S L="80"X="2258"H="10"Y="597"m=""/><S L="150"X="2443"H="20"Y="659"m=""P=",,1,0.2"/><S L="400"X="2833"H="10"Y="583"m=""P=",,,0.2,-28"/><S L="170"X="2445"H="10"Y="603"m=""/><S L="240"X="2416"H="10"Y="326"m=""/><S L="40"X="2768"H="10"Y="441"m=""/><S L="40"X="2672"H="10"Y="356"m=""/><S L="40"X="2733"H="10"Y="336"m=""/><S L="40"X="2791"H="10"Y="314"m=""/><S L="40"X="2850"H="10"Y="296"m=""/><S L="40"X="2904"H="10"Y="274"m=""/><S L="40"X="2958"H="10"Y="256"m=""/><S L="40"X="2903"H="10"Y="214"m=""/><S L="890"X="2389"H="10"Y="244"m=""/><S L="160"X="2850"H="10"Y="89"m=""P=",,20,0.2,-90"/><S L="10"X="2731"H="10"Y="181"m=""P=",,,0.2"/><S L="10"X="2790"H="10"Y="98"m=""/><S L="10"X="2738"H="10"Y="59"m=""/><S L="10"X="2606"H="10"Y="129"m=""/><S L="10"X="2479"H="10"Y="73"m=""/><S L="10"X="2430"H="10"Y="194"m=""/><S L="10"X="2305"H="10"Y="119"m=""/><S L="330"X="2069"H="10"Y="142"m=""P=",,0.0,0.2,22"/><S L="310"X="2167"H="10"Y="67"m=""/><S L="70"X="2324"H="10"Y="37"m=""P=",,0.3,0.2,-90"/><S L="50"X="1893"H="10"Y="80"m=""/><S L="240"X="1773"H="10"Y="147"m=""P=",,,0.2,-35"/><S L="340"X="1734"H="10"Y="475"m=""/><S L="150"X="1545"H="40"Y="545"m=""P=",,,0.2,-90"/><S L="120"X="1546"H="20"Y="393"m=""/><S L="120"X="1523"H="20"Y="344"m=""P=",,0.3,0.2,-70"/><S L="120"X="1568"H="20"Y="341"m=""P=",,0.3,0.2,60"/><S L="70"X="1531"H="50"Y="264"m=""P=",,,0.2"/><S L="40"X="1107"H="20"Y="313"m=""/><S L="40"X="1666"H="10"Y="213"m=""P=",,,0.2,-5"/><S L="10"X="1898"H="260"Y="211"m=""/><S L="100"X="995"H="20"Y="374"m=""P=",,,0.2,-20"/><S L="40"X="648"H="20"Y="486"m=""/><S L="695"X="2667"H="10"Y="-2"m=""/><S L="40"X="2077"H="10"Y="441"m=""/><S L="10"X="602"H="10"Y="429"m=""/><S L="100"X="430"H="20"Y="504"m=""P=",,,0.2,-20"/><S L="40"X="1028"H="20"Y="496"m=""/><S L="40"X="1167"H="20"Y="413"m=""/><S L="40"X="1286"H="20"Y="481"m=""/><S L="40"X="1427"H="20"Y="495"m=""/><S L="695"X="2134"H="10"Y="-1"m=""/><S L="80"X="1899"H="10"Y="514"m=""P=",,0.3,0.2,-90"/><S L="40"X="1899"H="10"Y="551"m=""/><S L="40"X="85"H="10"Y="662"m=""/></S><D/><O ><O X="1027"C="22"Y="471"P="0"/><O X="1167"C="22"Y="387"P="0"/><O X="1285"C="22"Y="455"P="0"/><O X="1425"C="22"Y="469"P="0"/><O X="1108"C="22"Y="282"P="0"/><O X="982"C="22"Y="346"P="0"/><O X="1682"C="22"Y="184"P="0"/><O X="1727"C="22"Y="153"P="0"/><O X="2276"C="22"Y="45"P="0"/><O C="22"Y="45"P="0"X="2301"/><O C="22"Y="25"P="0"X="2399"/><O P="0"C="22"Y="37"X="2424"/><O C="22"Y="29"X="2375"P="0"/><O C="22"Y="100"X="2306"P="0"/><O X="2606"C="22"Y="105"P="0"/><O X="2479"C="22"Y="50"P="0"/><O X="2738"C="22"Y="36"P="0"/><O X="2876"C="22"Y="38"P="0"/><O X="2370"C="22"Y="304"P="0"/><O X="2469"C="22"Y="304"P="0"/><O X="2422"C="22"Y="373"P="0"/><O X="2420"C="22"Y="449"P="0"/><O X="2444"C="22"Y="560"P="0"/><O X="2274"C="22"Y="580"P="0"/><O X="551"C="22"Y="649"P="0"/><O X="866"C="22"Y="648"P="0"/><O X="1276"C="22"Y="651"P="0"/><O X="120"C="22"Y="518"P="0"/><O X="418"C="22"Y="476"P="0"/><O X="140"C="22"Y="518"P="0"/><O X="120"C="22"Y="533"P="0"/><O X="140"C="22"Y="533"P="0"/><O X="603"C="22"Y="411"P="0"/><O X="1900"C="22"Y="650"P="0"/><O X="1615"C="22"Y="450"P="0"/><O X="2080"C="22"Y="416"P="0"/><O X="2533"C="22"Y="220"P="0"/><O X="1941"C="22"Y="62"P="0"/><O X="648"C="22"Y="456"P="0"/><O X="388"C="22"Y="486"P="0"/><O X="442"C="22"Y="467"P="0"/><O X="960"C="22"Y="355"P="0"/><O X="2349"C="22"Y="37"P="0"/></O></Z></C>');
tfm.exec.setUIMapName("<VP>Cadýlar Bayramý Ev<bl> - <j>Night Club")


elseif event=="noel2013"then
tfm.exec.newGame('<C><P D="x_evenements/x_fondNowel2013.jpg"/><Z><S ><S Y="397"L="800"m=""X="400"H="25"/><S Y="361"L="125"m=""X="254"H="25"/><S Y="361"L="300"m=""X="136"H="60"/><S Y="201"L="20"m=""X="-10"H="400"/><S Y="201"L="20"m=""X="811"H="400"/><S Y="372"L="125"m=""X="284"H="25"/><S Y="385"L="125"m=""X="312"H="25"/><S Y="316"L="140"m=""X="495"H="10"/><S Y="210"P=",,0.3,0.2,-70"L="160"m=""X="233"H="10"/><S Y="212"P=",,0.3,0.2,-70"L="160"m=""X="249"H="10"/><S Y="187"L="170"m=""X="80"H="10"/><S Y="135"L="560"m=""X="536"H="10"/><S Y="108"L="40"m=""X="422"H="40"/><S Y="120"L="20"m=""X="365"H="40"/><S Y="115"L="10"m=""X="656"H="40"/><S Y="107"L="10"m=""X="752"H="50"/><S Y="119"P=",,0.3,0.8"L="90"m=""X="705"H="40"/><S Y="-9"P=",,0.3,0.2,90"L="20"m=""X="404"H="900"/></S><D><T Y="329"X="91"/><DS Y="317"X="89"/></D><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Noel 2013<bl> - <j>Devilstrkpro-Devilstrk")



elseif event=="sevgililergünü"then
tfm.exec.newGame('<C><P APS="x_evenements/x_fondSVb.png,,940,,800,400"L="1660"D="x_evenements/x_fondSVa.jpg"d="x_evenements/x_fondSVc.png"/><Z><S ><S Y="201"P=",,,0.2,90"L="400"m=""X="-4"H="10"/><S Y="390"L="200"m=""X="101"H="20"/><S Y="403"L="310"m=""X="354"H="20"/><S Y="389"L="400"m=""X="706"H="20"/><S Y="401"L="720"m=""X="1300"H="20"/><S Y="390"P=",,0.3,0.2,-30"L="30"m=""X="497"H="10"/><S Y="393"P=",,0.3,0.2,40"L="30"m=""X="210"H="10"/><S Y="390"P=",,0.3,0.2,15"L="50"m=""X="927"H="10"/><S Y="241"T="9"P=""L="57"m=""X="1630"H="300"/><S Y="265"L="850"m=""X="1174"H="10"/><S Y="148"L="850"m=""X="1176"H="10"/><S Y="201"P=",,,0.2,-90"L="420"m=""X="1664"H="10"/><S Y="-10"P=",,0.3"L="720"m=""X="1309"H="20"/><S Y="273"L="40"m=""X="629"H="10"/><S Y="214"L="60"m=""X="565"H="10"/><S Y="66"L="280"m=""X="266"H="10"/><S Y="218"P=",,0.3,0.2,90"L="200"m=""X="429"H="10"/></S><D><DS Y="362"X="89"/><P Y="143"T="68"X="844"P=","/><P Y="142"T="67"X="801"P=","/><P Y="143"T="67"X="890"P=",1"/><P Y="259"T="68"X="850"P=","/><P Y="143"T="68"X="1017"P=","/><P Y="143"T="68"X="1182"P=","/><P Y="143"T="68"X="1334"P=","/><P Y="143"T="68"X="1507"P=","/><P Y="260"T="68"X="1513"P=","/><P Y="260"T="68"X="1339"P=","/><P Y="260"T="68"X="1174"P=","/><P Y="260"T="68"X="1019"P=","/><P Y="390"T="68"X="1115"P=","/><P Y="389"T="68"X="1285"P=","/><P Y="391"T="68"X="1459"P=","/><P Y="260"T="67"X="809"P=","/><P Y="143"T="67"X="975"P=","/><P Y="144"T="67"X="1137"P=","/><P Y="144"T="67"X="1290"P=","/><P Y="144"T="67"X="1464"P=","/><P Y="260"T="67"X="971"P=","/><P Y="260"T="67"X="1131"P=","/><P Y="259"T="67"X="1296"P=","/><P Y="260"T="67"X="1468"P=","/><P Y="391"T="67"X="1415"P=","/><P Y="390"T="67"X="1240"P=","/><P Y="391"T="67"X="1070"P=","/><P Y="260"T="67"X="894"P=",1"/><P Y="390"T="67"X="1504"P=",1"/><P Y="391"T="67"X="1331"P=",1"/><P Y="390"T="67"X="1160"P=",1"/><P Y="144"T="67"X="1552"P=",1"/><P Y="144"T="67"X="1380"P=",1"/><P Y="143"T="67"X="1230"P=",1"/><P Y="143"T="67"X="1063"P=",1"/><P Y="260"T="67"X="1063"P=",1"/><P Y="260"T="67"X="1220"P=",1"/><P Y="260"T="67"X="1387"P=",1"/><P Y="259"T="67"X="1558"P=",1"/></D><O ><O C="22"Y="282"X="1108"P="0"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Sevgililer Restorandý<bl> - <j>Night Club")


elseif event=="balýk2013"then
tfm.exec.newGame('<C><P D="x_fondpeche1.jpg"d="x_fondpeche2.png"L="3600"/><Z><S ><S Y="390"L="180"m=""X="91"H="20"/><S Y="287"L="130"m=""X="333"H="10"/><S Y="216"L="80"m=""X="314"H="10"/><S Y="199"L="80"m=""X="91"H="10"/><S Y="125"L="200"m=""X="548"H="10"/><S Y="388"L="1000"m=""X="1308"H="25"/><S Y="200"P=",,0.3,0.2,-90"L="400"m=""X="3601"H="10"/><S Y="201"P=",,0.3,0.2,90"L="400"m=""X="0"H="10"/><S Y="360"L="170"m=""X="362"H="10"/><S Y="300"L="100"m=""X="1012"H="10"/><S Y="270"L="90"m=""X="1684"H="10"/><S Y="61"L="80"m=""X="1515"H="10"/><S Y="48"L="40"m=""X="1409"H="10"/><S Y="173"L="40"m=""X="1806"H="10"/><S Y="166"P=",,0.3,0.2,-30"L="40"m=""X="1833"H="10"/><S Y="135"L="60"m=""X="1866"H="10"/><S Y="150"P=",,0.3,0.2,-10"L="60"m=""X="1896"H="10"/><S Y="145"L="60"m=""X="1943"H="10"/><S Y="145"L="60"m=""X="1981"H="10"/><S Y="149"P=",,0.3,0.2,10"L="60"m=""X="2036"H="10"/><S Y="156"P=",,0.3,0.2,10"L="60"m=""X="2076"H="10"/><S Y="62"L="100"m=""X="1943"H="10"/><S Y="132"L="40"m=""X="1734"H="10"/><S Y="236"P=",,0.3,0.2,90"L="150"m=""X="2101"H="10"/><S Y="278"L="100"m=""X="2454"H="10"/><S Y="179"L="270"m=""X="2746"H="40"/><S Y="145"L="300"m=""X="2972"H="40"/><S Y="106"P=",,0.3,0.2,90"L="100"m=""X="3107"H="30"/><S Y="69"L="100"m=""X="3145"H="30"/><S Y="44"P=",,0.3,0.2,-90"L="80"m=""X="3203"H="30"/><S Y="67"L="110"m=""X="2579"H="10"/><S Y="273"L="200"m=""X="3279"H="10"/><S Y="99"L="100"m=""X="3529"H="10"/><S Y="314"P=",,0.3,0.2,-15"L="60"m=""X="723"H="10"/><S Y="388"L="1000"m=""X="2529"H="25"/><S Y="396"L="300"m=""X="1910"H="25"/><S Y="388"L="600"m=""X="3306"H="25"/><S Y="388"L="300"m=""X="720"H="25"/></S><D><DS Y="358"X="1460"/><DC Y="247"X="1683"/></D><O /></Z></C>');
tfm.exec.setUIMapName("<VP>Balýk Mapý 2013<bl> - <j>Night Club")


elseif event=="cadýlarbar" then
tfm.exec.newGame('<C><P Ca="" DS="y;362" D="x_evenements/x_fondHalloweenMap2.jpg" /><Z><S><S Y="390" T="12" P="0,0,0.3,0.2,0,0,0,0" L="800" o="12bd94" m="" X="400" H="25" /><S Y="200" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="400" o="12bd94" m="" X="-10" H="20" /><S Y="200" T="12" P="0,0,0,0.2,-90,0,0,0" L="400" o="12bd94" m="" X="810" H="20" /><S Y="231" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="27" H="10" /><S Y="221" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="30" o="12bd94" m="" X="61" H="10" /><S Y="221" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="30" o="12bd94" m="" X="153" H="10" /><S Y="223" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="30" o="12bd94" m="" X="237" H="10" /><S Y="223" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="30" o="12bd94" m="" X="332" H="10" /><S Y="222" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="30" o="12bd94" m="" X="398" H="10" /><S Y="222" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="30" o="12bd94" m="" X="491" H="10" /><S Y="231" T="12" P="0,0,0.3,0.2,0,0,0,0" L="50" o="12bd94" m="" X="517" H="10" /><S Y="197" T="12" P="0,0,0.3,0.2,30,0,0,0" L="60" o="12bd94" m="" X="468" H="10" /><S Y="198" T="12" P="0,0,0.3,0.2,30,0,0,0" L="60" o="12bd94" m="" X="308" H="10" /><S Y="196" T="12" P="0,0,0.3,0.2,30,0,0,0" L="60" o="12bd94" m="" X="130" H="10" /><S Y="195" T="12" P="0,0,0.3,0.2,-30,0,0,0" L="60" o="12bd94" m="" X="84" H="10" /><S Y="198" T="12" P="0,0,0.3,0.2,-30,0,0,0" L="60" o="12bd94" m="" X="261" H="10" /><S Y="197" T="12" P="0,0,0.3,0.2,-30,0,0,0" L="60" o="12bd94" m="" X="421" H="10" /><S Y="114" T="12" P="0,0,0.3,0.2,0,0,0,0" L="150" o="12bd94" m="" X="531" H="10" /><S Y="231" T="12" P="0,0,0.3,0.2,0,0,0,0" L="80" o="12bd94" m="" X="194" H="10" /><S Y="284" T="12" P="0,0,20,0.2,0,0,0,0" L="140" o="12bd94" m="" X="733" H="110" /><S Y="222" T="12" P="0,0,0.3,0.2,40,0,0,0" L="110" o="12bd94" m="" X="741" H="110" /><S Y="150" T="12" P="0,0,0.3,0.2,0,0,0,0" L="110" o="12bd94" m="" X="747" H="120" /><S Y="231" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="366" H="10" /><S Y="115" T="12" P="0,0,0.3,0.2,0,0,0,0" L="325" o="12bd94" m="" X="245" H="10" /><S Y="-4" T="12" P="0,0,0.3,0.2,0,0,0,0" L="840" o="12bd94" m="" X="400" H="25" /></S><D /><O /></Z></C>');
tfm.exec.setUIMapName("<VP>Cadýlar Bayramý Bar - <VP>Night Club")  


elseif event=="h" then
tfm.exec.newGame('<C><P L="3000" H="734" DS="m;175,680,2961,696,2017,221" D="x_evenements/x_fondHalloween.jpg" d="x_evenements/x_fondHalloween2.png" /><Z><S><S L="1070" o="12bd94" X="1330" H="25" Y="710" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="734" o="12bd94" X="3005" H="20" Y="368" T="12" m="" P="0,0,20,0.2,-90,0,0,0" /><S L="734" o="12bd94" X="0" H="10" Y="367" T="12" m="" P="0,0,0,0.2,90,0,0,0" /><S L="580" o="12bd94" X="2421" H="10" Y="398" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="1000" o="12bd94" X="2394" H="10" Y="481" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="50" o="12bd94" X="1871" H="25" Y="697" T="12" m="" P="0,0,0.3,0.2,-30,0,0,0" /><S L="800" o="12bd94" X="396" H="25" Y="710" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="70" o="12bd94" X="1932" H="25" Y="705" T="12" m="" P="0,0,0.3,0.2,40,0,0,0" /><S L="30" o="12bd94" X="1900" H="25" Y="686" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="1070" o="12bd94" X="2480" H="25" Y="725" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="80" o="12bd94" X="2020" H="10" Y="633" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="80" o="12bd94" X="2258" H="10" Y="597" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="150" o="12bd94" X="2443" H="20" Y="659" T="12" m="" P="0,0,1,0.2,0,0,0,0" /><S L="400" o="12bd94" X="2833" H="10" Y="583" T="12" m="" P="0,0,0,0.2,-28,0,0,0" /><S L="170" o="12bd94" X="2445" H="10" Y="603" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="240" o="12bd94" X="2416" H="10" Y="326" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2768" H="10" Y="441" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2672" H="10" Y="356" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2733" H="10" Y="336" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2791" H="10" Y="314" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2850" H="10" Y="296" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2904" H="10" Y="274" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2958" H="10" Y="256" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2903" H="10" Y="214" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="890" o="12bd94" X="2389" H="10" Y="244" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="160" o="12bd94" X="2850" H="10" Y="89" T="12" m="" P="0,0,20,0.2,-90,0,0,0" /><S L="10" o="12bd94" X="2731" H="10" Y="181" T="12" m="" P="0,0,0,0.2,0,0,0,0" /><S L="10" o="12bd94" X="2790" H="10" Y="98" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="12bd94" X="2738" H="10" Y="59" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="12bd94" X="2606" H="10" Y="129" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="12bd94" X="2479" H="10" Y="73" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="12bd94" X="2430" H="10" Y="194" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="12bd94" X="2305" H="10" Y="119" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="330" o="12bd94" X="2069" H="10" Y="142" T="12" m="" P="0,0,0.0,0.2,22,0,0,0" /><S L="310" o="12bd94" X="2167" H="10" Y="67" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="70" o="12bd94" X="2324" H="10" Y="37" T="12" m="" P="0,0,0.3,0.2,-90,0,0,0" /><S L="50" o="12bd94" X="1893" H="10" Y="80" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="240" o="12bd94" X="1773" H="10" Y="147" T="12" m="" P="0,0,0,0.2,-35,0,0,0" /><S L="340" o="12bd94" X="1734" H="10" Y="475" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="150" o="12bd94" X="1545" H="40" Y="545" T="12" m="" P="0,0,0,0.2,-90,0,0,0" /><S L="120" o="12bd94" X="1546" H="20" Y="393" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="120" o="12bd94" X="1523" H="20" Y="344" T="12" m="" P="0,0,0.3,0.2,-70,0,0,0" /><S L="120" o="12bd94" X="1568" H="20" Y="341" T="12" m="" P="0,0,0.3,0.2,60,0,0,0" /><S L="70" o="12bd94" X="1531" H="50" Y="264" T="12" m="" P="0,0,0,0.2,0,0,0,0" /><S L="40" o="12bd94" X="1107" H="20" Y="313" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="1666" H="10" Y="213" T="12" m="" P="0,0,0,0.2,-5,0,0,0" /><S L="10" o="12bd94" X="1898" H="260" Y="211" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="100" o="12bd94" X="995" H="20" Y="374" T="12" m="" P="0,0,0,0.2,-20,0,0,0" /><S L="40" o="12bd94" X="648" H="20" Y="486" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="695" o="12bd94" X="2667" H="10" Y="-2" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="2077" H="10" Y="441" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="12bd94" X="602" H="10" Y="429" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="100" o="12bd94" X="430" H="20" Y="504" T="12" m="" P="0,0,0,0.2,-20,0,0,0" /><S L="40" o="12bd94" X="1028" H="20" Y="496" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="1167" H="20" Y="413" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="1286" H="20" Y="481" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="1427" H="20" Y="495" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="695" o="12bd94" X="2134" H="10" Y="-1" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="80" o="12bd94" X="1899" H="10" Y="514" T="12" m="" P="0,0,0.3,0.2,-90,0,0,0" /><S L="40" o="12bd94" X="1899" H="10" Y="551" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /><S L="40" o="12bd94" X="85" H="10" Y="662" T="12" m="" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O><O X="1027" C="22" Y="471" P="0" /><O X="1167" C="22" Y="387" P="0" /><O X="1285" C="22" Y="455" P="0" /><O X="1425" C="22" Y="469" P="0" /><O X="1108" C="22" Y="282" P="0" /><O X="982" C="22" Y="346" P="0" /><O X="1682" C="22" Y="184" P="0" /><O X="1727" C="22" Y="153" P="0" /><O X="2276" C="22" Y="45" P="0" /><O C="22" Y="45" P="0" X="2301" /><O C="22" Y="25" P="0" X="2399" /><O P="0" C="22" Y="37" X="2424" /><O C="22" Y="29" X="2375" P="0" /><O C="22" Y="100" X="2306" P="0" /><O X="2606" C="22" Y="105" P="0" /><O X="2479" C="22" Y="50" P="0" /><O X="2738" C="22" Y="36" P="0" /><O X="2876" C="22" Y="38" P="0" /><O X="2370" C="22" Y="304" P="0" /><O X="2469" C="22" Y="304" P="0" /><O X="2422" C="22" Y="373" P="0" /><O X="2420" C="22" Y="449" P="0" /><O X="2444" C="22" Y="560" P="0" /><O X="2274" C="22" Y="580" P="0" /><O X="551" C="22" Y="649" P="0" /><O X="866" C="22" Y="648" P="0" /><O X="1276" C="22" Y="651" P="0" /><O X="120" C="22" Y="518" P="0" /><O X="418" C="22" Y="476" P="0" /><O X="140" C="22" Y="518" P="0" /><O X="120" C="22" Y="533" P="0" /><O X="140" C="22" Y="533" P="0" /><O X="603" C="22" Y="411" P="0" /><O X="1900" C="22" Y="650" P="0" /><O X="1615" C="22" Y="450" P="0" /><O X="2080" C="22" Y="416" P="0" /><O X="2533" C="22" Y="220" P="0" /><O X="1941" C="22" Y="62" P="0" /><O X="648" C="22" Y="456" P="0" /><O X="388" C="22" Y="486" P="0" /><O X="442" C="22" Y="467" P="0" /><O X="960" C="22" Y="355" P="0" /><O X="2349" C="22" Y="37" P="0" /></O></Z></C>');
tfm.exec.setUIMapName("<VP>Cadýlar Bayramý Ev - <VP>Night Club")  


elseif event=="801" then
tfm.exec.newGame('<C><P D="x_transformice/x_salon801/x_place.jpg,1600,400,x_transformice/x_salon801/x_jardin1.jpg,800,400,x_transformice/x_salon801/x_bar.jpg,2400,400,x_transformice/x_salon801/x_jardin2.jpg,0,400,x_transformice/x_salon801/x_resto.jpg,2400,0,x_transformice/x_salon801/x_pont.jpg,1600,0,x_transformice/x_salon801/x_sona.jpg,800,0,x_transformice/x_salon801/x_ciel.jpg,0,0" H="800" L="3200" APS="x_transformice/x_salon801/x_av_jardin.png,1,0,0,0,0,0,608;x_transformice/x_salon801/x_ap_cabane.png,0,2182,0,581,271,2165,0;x_transformice/x_salon801/x_ap_cabane2.png,0,1515,46,275,181,1472,38;x_transformice/x_salon801/x_av_sona.png,1,0,0,0,0,859,0" /><Z><S><S m="" P="0,0,0.3,0.2,0,0,0,0" L="200" o="12bd94" X="1739" H="25" Y="788" T="12" /><S m="" P="0,0,0.3,0.2,-90,0,0,0" L="800" o="12bd94" X="-9" H="20" Y="400" T="12" /><S m="" P="0,0,0.3,0.2,-90,0,0,0" L="800" o="12bd94" X="3210" H="20" Y="401" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2037" H="10" Y="708" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="300" o="12bd94" X="1988" H="25" Y="799" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="280" o="12bd94" X="2276" H="25" Y="786" T="12" /><S m="" P="0,0,0.3,0.2,-20,0,0,0" L="40" o="12bd94" X="2121" H="10" Y="785" T="12" /><S m="" P="0,0,0.3,0.2,20,0,0,0" L="40" o="12bd94" X="1855" H="10" Y="786" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="230" o="12bd94" X="2213" H="10" Y="664" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2191" H="10" Y="549" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2358" H="10" Y="548" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="160" o="12bd94" X="1718" H="10" Y="608" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="65" o="12bd94" X="1705" H="10" Y="547" T="12" /><S m="" P="0,0,0,0.2,38,0,0,0" L="100" o="12bd94" X="1794" H="10" Y="476" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="80" o="12bd94" X="1877" H="10" Y="519" T="12" /><S m="" P="0,0,0,0.2,-62,0,0,0" L="100" o="12bd94" X="2095" H="10" Y="523" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="65" o="12bd94" X="1827" H="10" Y="706" T="12" /><S m="" P="0,0,0.3,0.2,-18,0,0,0" L="100" o="12bd94" X="2455" H="25" Y="774" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="260" o="12bd94" X="2629" H="25" Y="760" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2596" H="10" Y="712" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2674" H="10" Y="712" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="25" o="12bd94" X="2635" H="10" Y="704" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="25" o="12bd94" X="2638" H="10" Y="522" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="25" o="12bd94" X="2938" H="10" Y="520" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="25" o="12bd94" X="3075" H="10" Y="521" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2568" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="280" o="12bd94" X="2648" H="10" Y="569" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2601" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2678" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2711" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2897" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2977" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="3036" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="3115" H="10" Y="529" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="290" o="12bd94" X="2998" H="10" Y="569" T="12" /><S m="" P="0,0,0.3,0.2,40,0,0,0" L="50" o="12bd94" X="2770" H="25" Y="773" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="430" o="12bd94" X="3002" H="25" Y="788" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2821" H="10" Y="740" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2856" H="10" Y="740" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="200" o="12bd94" X="3039" H="10" Y="719" T="12" /><S m="" P="0,0,,,,0,0,0" L="60" X="3172" H="420" Y="579" T="9" /><S m="" P="0,0,0.3,0.2,-55,0,0,0" L="175" o="12bd94" X="2807" H="10" Y="638" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="50" o="12bd94" X="2483" H="285" Y="543" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="350" o="12bd94" X="2333" H="10" Y="401" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="730" o="12bd94" X="2778" H="10" Y="385" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2590" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2677" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2732" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2821" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2878" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2968" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="3020" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="3109" H="10" Y="344" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2635" H="10" Y="335" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2779" H="10" Y="335" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2927" H="10" Y="335" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="3069" H="10" Y="335" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="50" o="12bd94" X="1684" H="10" Y="398" T="12" /><S m="" P="0,0,0.3,0.2,-30,0,0,0" L="80" o="12bd94" X="3165" H="10" Y="203" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" X="2514" H="10" Y="333" T="12" /><S m="" P="0,0,0.3,0.2,40,0,0,0" L="40" o="12bd94" X="2484" H="10" Y="321" T="12" /><S m="" P="0,0,0.3,0.2,60,0,0,0" L="95" o="12bd94" X="2446" H="10" Y="267" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="230" o="12bd94" X="2312" H="10" Y="229" T="12" /><S m="" P="0,0,0.3,0.2,-45,0,0,0" L="60" o="12bd94" X="2328" H="10" Y="168" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="110" o="12bd94" X="2405" H="10" Y="144" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="90" o="12bd94" X="2228" H="10" Y="158" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="80" o="12bd94" X="2410" H="10" Y="124" T="12" /><S m="" P="0,0,0.3,0.2,-90,0,0,0" L="60" o="12bd94" X="2455" H="10" Y="140" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="250" o="12bd94" X="2326" H="10" Y="53" T="12" /><S m="" P="0,0,0.3,0.2,-70,0,0,0" L="90" o="12bd94" X="2186" H="10" Y="91" T="12" /><S m="" P="0,0,0.3,0.2,60,0,0,0" L="30" o="12bd94" X="2179" H="10" Y="146" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="30" o="12bd94" X="2218" H="10" Y="141" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2194" H="10" Y="134" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2242" H="10" Y="134" T="12" /><S m="" P="0,0,0.3,0.2,-15,0,0,0" L="90" o="12bd94" X="2162" H="10" Y="248" T="12" /><S m="" P="0,0,0.3,0.2,-10,0,0,0" L="90" o="12bd94" X="2076" H="10" Y="268" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="90" o="12bd94" X="1988" H="10" Y="277" T="12" /><S m="" P="0,0,0.3,0.2,10,0,0,0" L="90" o="12bd94" X="1904" H="10" Y="271" T="12" /><S m="" P="0,0,0.3,0.2,30,0,0,0" L="60" o="12bd94" X="1789" H="10" Y="237" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" X="1717" H="10" Y="223" T="12" /><S m="" P="0,0,0.3,0.2,-6,0,0,0" L="210" o="12bd94" X="1564" H="10" Y="227" T="12" /><S m="" P="0,0,0.3,0.2,-35,0,0,0" L="30" o="12bd94" X="2188" H="10" Y="236" T="12" /><S m="" P="0,0,0.3,0.2,-20,0,0,0" L="70" o="12bd94" X="2487" H="10" Y="102" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2526" H="10" Y="91" T="12" /><S m="" P="0,0,0.3,0.2,37,0,0,0" L="70" o="12bd94" X="2562" H="10" Y="111" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="20" o="12bd94" X="2632" H="10" Y="154" T="12" /><S m="" P="0,0,0.3,0.2,-10,0,0,0" L="20" o="12bd94" X="2696" H="10" Y="136" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="150" o="12bd94" X="2935" H="10" Y="159" T="12" /><S m="" P="0,0,0.3,0.2,20,0,0,0" L="20" o="12bd94" X="1675" H="10" Y="219" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="270" o="12bd94" X="1338" H="10" Y="238" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" X="1278" H="10" Y="217" T="12" /><S m="" P="0,0,0.3,0.2,-40,0,0,0" L="80" o="12bd94" X="1176" H="10" Y="262" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="220" o="12bd94" X="1052" H="10" Y="278" T="12" /><S m="" P="0,0,0.3,0.2,40,0,0,0" L="100" o="12bd94" X="909" H="10" Y="250" T="12" /><S m="" P="0,0,,,,0,0,0" L="300" X="1049" H="50" Y="258" T="9" /><S m="" P="0,0,2,0.2,-3,0,0,0" L="10" o="12bd94" X="870" H="200" Y="69" T="12" /><S m="" P="0,0,0.3,0.2,-10,0,0,0" L="100" o="12bd94" X="985" H="10" Y="119" T="12" /><S m="" P="0,0,0.3,0.2,-20,0,0,0" L="100" o="12bd94" X="1078" H="10" Y="95" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="430" o="12bd94" X="1424" H="25" Y="781" T="12" /><S m="" P="0,0,0.3,0.2,20,0,0,0" L="40" o="12bd94" X="1655" H="10" Y="780" T="12" /><S m="" P="0,0,0.3,0.2,100,0,0,0" L="65" o="12bd94" X="1569" H="10" Y="699" T="12" /><S m="" P="0,0,0.3,0.2,10,0,0,0" L="40" o="12bd94" X="1571" H="10" Y="668" T="12" /><S m="" P="0,0,0.3,0.2,-40,0,0,0" L="40" o="12bd94" X="1627" H="10" Y="618" T="12" /><S m="" P="0,0,10,0.2,110,0,0,0" L="150" o="12bd94" X="1600" H="10" Y="510" T="12" /><S m="" P="0,0,0,0.2,-41,0,0,0" L="200" o="12bd94" X="1519" H="10" Y="468" T="12" /><S m="" P="0,0,2,0.2,20,0,0,0" L="100" o="12bd94" X="1173" H="10" Y="673" T="12" /><S m="" P="0,0,2,0.2,30,0,0,0" L="100" o="12bd94" X="1169" H="10" Y="751" T="12" /><S m="" P="0,0,2,0.2,10,0,0,0" L="100" o="12bd94" X="1079" H="10" Y="718" T="12" /><S m="" P="0,0,2,0.2,-10,0,0,0" L="100" o="12bd94" X="984" H="10" Y="718" T="12" /><S m="" P="0,0,2,0.2,-30,0,0,0" L="100" o="12bd94" X="893" H="10" Y="751" T="12" /><S m="" P="0,0,2,0.2,10,0,0,0" L="100" o="12bd94" X="1085" H="10" Y="649" T="12" /><S m="" P="0,0,2,0.2,-10,0,0,0" L="100" o="12bd94" X="988" H="10" Y="648" T="12" /><S m="" P="0,0,2,0.2,-20,0,0,0" L="100" o="12bd94" X="898" H="10" Y="672" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="430" o="12bd94" X="635" H="25" Y="782" T="12" /><S m="" P="0,0,0.3,0.2,30,0,0,0" L="80" o="12bd94" X="447" H="10" Y="753" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="360" o="12bd94" X="235" H="10" Y="735" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="62" H="170" Y="651" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="430" o="12bd94" X="211" H="25" Y="784" T="12" /><S m="" P="0,0,1,0.2,-7,0,0,0" L="100" o="12bd94" X="183" H="10" Y="542" T="12" /><S m="" P="0,0,1,0.2,6,0,0,0" L="220" o="12bd94" X="341" H="10" Y="547" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="235" H="80" Y="454" T="12" /><S m="" P="0,0,0.3,10,-30,0,0,0" L="10" o="12bd94" X="188" H="40" Y="401" T="12" /></S><D><DS Y="771" X="1930" /></D><O /></Z></C>'); 
tfm.exec.setUIMapName("<VP>Oda 801 - <VP>Night Club")  
 

elseif event=="balýk1" then
tfm.exec.newGame('<C><P D="x_transformice/x_maps/x_peche2014/x_montagne.jpg" d="x_transformice/x_maps/x_peche2014/x_montagne2.png" /><Z><S><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="-5" H="400" Y="200" T="12" /><S m="" P="0,0,0.3,0.2,20,0,0,0" L="100" o="12bd94" X="46" H="10" Y="66" T="12" /><S m="" P="0,0,0.5,0.2,40,0,0,0" L="80" o="12bd94" X="121" H="10" Y="107" T="12" /><S m="" P="0,0,0.5,0.2,60,0,0,0" L="80" o="12bd94" X="169" H="10" Y="165" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="80" o="12bd94" X="216" H="10" Y="207" T="12" /><S m="" P="0,0,0.5,0.2,60,0,0,0" L="80" o="12bd94" X="270" H="10" Y="241" T="12" /><S m="" P="0,0,0.5,0.2,-40,0,0,0" L="100" o="12bd94" X="468" H="10" Y="249" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="100" o="12bd94" X="559" H="10" Y="168" T="12" /><S m="" P="0,0,0.5,0.2,-70,0,0,0" L="100" o="12bd94" X="500" H="10" Y="219" T="12" /><S m="" P="0,0,0.5,0.2,-50,0,0,0" L="100" o="12bd94" X="627" H="10" Y="118" T="12" /><S m="" P="0,0,0.5,0.2,-90,0,0,0" L="50" o="12bd94" X="708" H="10" Y="90" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="728" H="10" Y="65" T="12" /><S m="" P="0,0,0.5,0.2,-60,0,0,0" L="50" o="12bd94" X="754" H="10" Y="42" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="806" H="400" Y="200" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="100" o="12bd94" X="461" H="10" Y="353" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="379" H="10" Y="361" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="100" o="12bd94" X="304" H="10" Y="358" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="212" H="10" Y="349" T="12" /><S m="" P="0,0,0.5,0.2,90,0,0,0" L="100" o="12bd94" X="22" H="10" Y="315" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="689" H="10" Y="93" T="12" /><S m="" P="0,0,0.5,0.2,-90,0,0,0" L="50" o="12bd94" X="660" H="10" Y="92" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="100" o="12bd94" X="58" H="10" Y="374" T="12" /><S m="" P="0,0,0.5,0.2,-20,0,0,0" L="100" o="12bd94" X="123" H="10" Y="365" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="550" H="10" Y="346" T="12" /><S m="" P="0,0,0.5,0.2,20,0,0,0" L="100" o="12bd94" X="638" H="10" Y="362" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="691" H="10" Y="363" T="12" /><S m="" P="0,0,0.5,0.2,-80,0,0,0" L="100" o="12bd94" X="769" H="10" Y="317" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="70" o="12bd94" X="371" H="10" Y="319" T="12" /></S><D><DS Y="148" X="558" /></D><O /></Z></C>');
tfm.exec.setUIMapName("<VP>Balýk Tutma 1- <VP>Night Club")    


elseif event=="balýk2" then
tfm.exec.newGame('<C><P D="x_transformice/x_maps/x_peche2014/x_plage.jpg" d="x_transformice/x_maps/x_peche2014/x_plage2.png" /><Z><S><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="-5" H="400" Y="200" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" X="51" H="10" Y="311" T="12" /><S m="" P="0,0,0.5,0.2,-40,0,0,0" L="80" o="12bd94" X="335" H="10" Y="248" T="12" /><S m="" P="0,0,0.5,0.2,-40,0,0,0" L="80" o="12bd94" X="176" H="10" Y="352" T="12" /><S m="" P="0,0,0.5,0.2,-40,0,0,0" L="80" o="12bd94" X="130" H="10" Y="392" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="80" o="12bd94" X="40" H="10" Y="401" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="80" o="12bd94" X="473" H="10" Y="178" T="12" /><S m="" P="0,0,0.5,0.2,-33,0,0,0" L="100" o="12bd94" X="396" H="10" Y="204" T="12" /><S m="" P="0,0,0.5,0.2,-5,0,0,0" L="100" o="12bd94" X="639" H="10" Y="161" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="692" H="10" Y="140" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="709" H="10" Y="140" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="806" H="400" Y="200" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="400" o="12bd94" X="449" H="10" Y="313" T="12" /><S m="" P="0,0,0.5,0.2,-20,0,0,0" L="50" o="12bd94" X="228" H="10" Y="320" T="12" /><S m="" P="0,0,0.5,0.2,-30,0,0,0" L="50" o="12bd94" X="649" H="10" Y="151" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="761" H="10" Y="399" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="95" H="10" Y="402" T="12" /><S m="" P="0,0,0.5,0.2,30,0,0,0" L="50" o="12bd94" X="667" H="10" Y="324" T="12" /><S m="" P="0,0,0.5,0.2,40,0,0,0" L="50" o="12bd94" X="704" H="10" Y="351" T="12" /><S m="" P="0,0,0.5,0.2,40,0,0,0" L="50" o="12bd94" X="736" H="10" Y="380" T="12" /><S m="" P="0,0,0.5,0.2,70,0,0,0" L="50" o="12bd94" X="446" H="10" Y="109" T="12" /><S m="" P="0,0,0.5,0.2,70,0,0,0" L="50" o="12bd94" X="431" H="10" Y="62" T="12" /><S m="" P="0,0,0.5,0.2,60,0,0,0" L="50" o="12bd94" X="413" H="10" Y="21" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="381" H="10" Y="3" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="328" H="10" Y="6" T="12" /></S><D><DS Y="290" X="67" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Balýk Tutma 2 - <VP>Night Club")  
        

elseif event=="balýk3" then
tfm.exec.newGame('<C><P  D="x_transformice/x_maps/x_peche2014/x_jungle.jpg" d="x_transformice/x_maps/x_peche2014/x_jungle2.png" /><Z><S><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="-5" H="400" Y="200" T="12" /><S m="" P="0,0,0.3,0.2,10,0,0,0" L="100" o="12bd94" X="40" H="10" Y="117" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="80" o="12bd94" X="127" H="10" Y="132" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="80" o="12bd94" X="204" H="10" Y="148" T="12" /><S m="" P="0,0,0.5,0.2,20,0,0,0" L="80" o="12bd94" X="279" H="10" Y="168" T="12" /><S m="" P="0,0,0.5,0.2,40,0,0,0" L="80" o="12bd94" X="341" H="10" Y="204" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="408" H="10" Y="226" T="12" /><S m="" P="0,0,0.5,0.2,-30,0,0,0" L="100" o="12bd94" X="557" H="10" Y="213" T="12" /><S m="" P="0,0,0.5,0.2,-70,0,0,0" L="100" o="12bd94" X="501" H="10" Y="279" T="12" /><S m="" P="0,0,0.5,0.2,-40,0,0,0" L="100" o="12bd94" X="636" H="10" Y="160" T="12" /><S m="" P="0,0,0.5,0.2,-70,0,0,0" L="50" o="12bd94" X="679" H="10" Y="114" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="708" H="10" Y="93" T="12" /><S m="" P="0,0,0.5,0.2,-50,0,0,0" L="50" o="12bd94" X="745" H="10" Y="75" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="806" H="400" Y="200" T="12" /><S m="" P="0,0,0.5,0.2,-30,0,0,0" L="100" o="12bd94" X="450" H="10" Y="331" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="360" H="10" Y="358" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="100" o="12bd94" X="267" H="10" Y="367" T="12" /><S m="" P="0,0,0.5,0.2,30,0,0,0" L="100" o="12bd94" X="194" H="10" Y="359" T="12" /><S m="" P="0,0,0.5,0.2,-90,0,0,0" L="50" o="12bd94" X="159" H="10" Y="342" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="113" H="10" Y="328" T="12" /><S m="" P="0,0,0.5,0.2,-110,0,0,0" L="50" o="12bd94" X="56" H="10" Y="302" T="12" /></S><D><DS Y="98" X="50" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Balýk Tutma 3 - <VP>Night Club")  
        

elseif event=="balýk4" then
tfm.exec.newGame('<C><P  d="x_transformice/x_maps/x_peche2014/x_nuages2.png" D="x_transformice/x_maps/x_peche2014/x_nuages.jpg" /><Z><S><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="-5" H="400" Y="200" T="12" /><S m="" P="0,0,0.3,0.2,30,0,0,0" L="100" o="12bd94" X="19" H="10" Y="108" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="80" o="12bd94" X="62" H="10" Y="134" T="12" /><S m="" P="0,0,0.5,0.2,40,0,0,0" L="80" o="12bd94" X="118" H="10" Y="157" T="12" /><S m="" P="0,0,0.5,0.2,30,0,0,0" L="80" o="12bd94" X="178" H="10" Y="201" T="12" /><S m="" P="0,0,0.5,0.2,30,0,0,0" L="80" o="12bd94" X="243" H="10" Y="240" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="360" H="10" Y="224" T="12" /><S m="" P="0,0,0.5,0.2,-20,0,0,0" L="100" o="12bd94" X="531" H="10" Y="194" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="100" o="12bd94" X="443" H="10" Y="216" T="12" /><S m="" P="0,0,0.5,0.2,-15,0,0,0" L="100" o="12bd94" X="623" H="10" Y="164" T="12" /><S m="" P="0,0,0.5,0.2,-40,0,0,0" L="50" o="12bd94" X="730" H="10" Y="137" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="773" H="10" Y="120" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="806" H="400" Y="200" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="100" o="12bd94" X="323" H="10" Y="268" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="395" H="10" Y="276" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="692" H="10" Y="152" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="627" H="10" Y="378" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="150" o="12bd94" X="732" H="10" Y="395" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="441" H="10" Y="286" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="480" H="10" Y="298" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="510" H="10" Y="319" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="543" H="10" Y="339" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="50" o="12bd94" X="579" H="10" Y="358" T="12" /></S><D><DS Y="358" X="636" /></D><O /></Z></C>');
tfm.exec.setUIMapName("<VP>Balýk Tutma 4 - <VP>Night Club")  
        

elseif event=="balýk5" then
tfm.exec.newGame('<C><P  d="x_transformice/x_maps/x_peche2014/x_temple2.png" D="x_transformice/x_maps/x_peche2014/x_temple.jpg" /><Z><S><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="-5" H="400" Y="200" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" X="132" H="10" Y="93" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="400" o="12bd94" X="566" H="10" Y="395" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="538" H="10" Y="108" T="12" /><S m="" P="0,0,0.5,0.2,5,0,0,0" L="100" o="12bd94" X="685" H="10" Y="115" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="50" o="12bd94" X="621" H="10" Y="106" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="50" o="12bd94" X="578" H="10" Y="105" T="12" /><S m="" P="0,0,0.3,0.2,0,0,0,0" L="10" o="12bd94" X="806" H="400" Y="200" T="12" /><S m="" P="0,0,0,0.2,40,0,0,0" L="200" o="12bd94" X="62" H="10" Y="153" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="50" o="12bd94" X="201" H="10" Y="90" T="12" /><S m="" P="0,0,0.5,0.2,-110,0,0,0" L="100" o="12bd94" X="725" H="10" Y="351" T="12" /><S m="" P="0,0,0.5,0.2,-10,0,0,0" L="50" o="12bd94" X="415" H="10" Y="98" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="100" o="12bd94" X="271" H="10" Y="96" T="12" /><S m="" P="0,0,0.5,0.2,5,0,0,0" L="100" o="12bd94" X="369" H="10" Y="101" T="12" /><S m="" P="0,0,0.5,0.2,10,0,0,0" L="50" o="12bd94" X="461" H="10" Y="99" T="12" /><S m="" P="0,0,0.3,0.2,-40,0,0,0" L="100" o="12bd94" X="764" H="10" Y="89" T="12" /><S m="" P="0,0,0,0.2,44,0,0,0" L="100" o="12bd94" X="172" H="10" Y="250" T="12" /><S m="" P="0,0,0,0.2,34,0,0,0" L="100" o="12bd94" X="245" H="10" Y="310" T="12" /><S m="" P="0,0,0,0.2,34,0,0,0" L="100" o="12bd94" X="326" H="10" Y="366" T="12" /><S m="" P="0,0,0.5,0.2,0,0,0,0" L="40" o="12bd94" X="235" H="10" Y="55" T="12" /><S m="" P="0,0,0.5,0.2,-70,0,0,0" L="40" o="12bd94" X="215" H="10" Y="74" T="12" /><S m="" P="0,0,0.5,0.2,-110,0,0,0" L="40" o="12bd94" X="255" H="10" Y="75" T="12" /></S><D><DS Y="73" X="134" /></D><O /></Z></C>');
tfm.exec.setUIMapName("<VP>Balýk Tutma 5 - <VP>Night Club")  



elseif event=="balýk6" then
tfm.exec.newGame('@6026172')
tfm.exec.setUIMapName("<VP>Balýk Mapý 6<bl> - <VP>Night Club")


elseif event=="balýk7" then
tfm.exec.newGame('@6030416')
tfm.exec.setUIMapName("<VP>Balýk Mapý 7<bl> - <VP>Night Club")


elseif event=="müze" then
tfm.exec.newGame('@6030429')
tfm.exec.setUIMapName("<VP>Müze<bl> - <VP>Night Club")


elseif event=="sandal" then
tfm.exec.newGame('@4332508')
tfm.exec.setUIMapName("<VP>Sandal<bl> - <j>Night Club")


elseif event=="r" then
tfm.exec.newGame('<C><P D="x_fondpeche1.jpg" d="x_fondpeche2.png" L="3600" /><Z><S><S Y="390" T="12" P="0,0,0.3,0.2,0,0,0,0" L="180" o="12bd94" m="" X="91" H="20" /><S Y="287" T="12" P="0,0,0.3,0.2,0,0,0,0" L="130" o="12bd94" m="" X="333" H="10" /><S Y="216" T="12" P="0,0,0.3,0.2,0,0,0,0" L="80" o="12bd94" m="" X="314" H="10" /><S Y="199" T="12" P="0,0,0.3,0.2,0,0,0,0" L="80" o="12bd94" m="" X="91" H="10" /><S Y="125" T="12" P="0,0,0.3,0.2,0,0,0,0" L="200" o="12bd94" m="" X="548" H="10" /><S Y="388" T="12" P="0,0,0.3,0.2,0,0,0,0" L="1000" o="12bd94" m="" X="1308" H="25" /><S Y="200" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="400" o="12bd94" m="" X="3601" H="10" /><S Y="201" T="12" P="0,0,0.3,0.2,90,0,0,0" L="400" o="12bd94" m="" X="0" H="10" /><S Y="360" T="12" P="0,0,0.3,0.2,0,0,0,0" L="170" o="12bd94" m="" X="362" H="10" /><S Y="300" T="12" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" m="" X="1012" H="10" /><S Y="270" T="12" P="0,0,0.3,0.2,0,0,0,0" L="90" o="12bd94" m="" X="1684" H="10" /><S Y="61" T="12" P="0,0,0.3,0.2,0,0,0,0" L="80" o="12bd94" m="" X="1515" H="10" /><S Y="48" T="12" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" m="" X="1409" H="10" /><S Y="173" T="12" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" m="" X="1806" H="10" /><S Y="166" T="12" P="0,0,0.3,0.2,-30,0,0,0" L="40" o="12bd94" m="" X="1833" H="10" /><S Y="135" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="1866" H="10" /><S Y="150" T="12" P="0,0,0.3,0.2,-10,0,0,0" L="60" o="12bd94" m="" X="1896" H="10" /><S Y="145" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="1943" H="10" /><S Y="145" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="1981" H="10" /><S Y="149" T="12" P="0,0,0.3,0.2,10,0,0,0" L="60" o="12bd94" m="" X="2036" H="10" /><S Y="156" T="12" P="0,0,0.3,0.2,10,0,0,0" L="60" o="12bd94" m="" X="2076" H="10" /><S Y="62" T="12" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" m="" X="1943" H="10" /><S Y="132" T="12" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" m="" X="1734" H="10" /><S Y="236" T="12" P="0,0,0.3,0.2,90,0,0,0" L="150" o="12bd94" m="" X="2101" H="10" /><S Y="278" T="12" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" m="" X="2454" H="10" /><S Y="179" T="12" P="0,0,0.3,0.2,0,0,0,0" L="270" o="12bd94" m="" X="2746" H="40" /><S Y="145" T="12" P="0,0,0.3,0.2,0,0,0,0" L="300" o="12bd94" m="" X="2972" H="40" /><S Y="106" T="12" P="0,0,0.3,0.2,90,0,0,0" L="100" o="12bd94" m="" X="3107" H="30" /><S Y="69" T="12" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" m="" X="3145" H="30" /><S Y="44" T="12" P="0,0,0.3,0.2,-90,0,0,0" L="80" o="12bd94" m="" X="3203" H="30" /><S Y="67" T="12" P="0,0,0.3,0.2,0,0,0,0" L="110" o="12bd94" m="" X="2579" H="10" /><S Y="273" T="12" P="0,0,0.3,0.2,0,0,0,0" L="200" o="12bd94" m="" X="3279" H="10" /><S Y="99" T="12" P="0,0,0.3,0.2,0,0,0,0" L="100" o="12bd94" m="" X="3529" H="10" /><S Y="314" T="12" P="0,0,0.3,0.2,-15,0,0,0" L="60" o="12bd94" m="" X="723" H="10" /><S Y="388" T="12" P="0,0,0.3,0.2,0,0,0,0" L="1000" o="12bd94" m="" X="2529" H="25" /><S Y="396" T="12" P="0,0,0.3,0.2,0,0,0,0" L="300" o="12bd94" m="" X="1910" H="25" /><S Y="388" T="12" P="0,0,0.3,0.2,0,0,0,0" L="600" o="12bd94" m="" X="3306" H="25" /><S Y="388" T="12" P="0,0,0.3,0.2,0,0,0,0" L="300" o="12bd94" m="" X="720" H="25" /></S><D><DS Y="358" X="1460" /><DC Y="247" X="1683" /></D><O /></Z></C>');
tfm.exec.setUIMapName("<VP>Balýk Eventi 2013 - <VP>Night Club")  


elseif event=="cadýlar1"then
tfm.exec.newGame('<C><P D="x_transformice/x_maps/x_hw2014/x_1.jpg"IP="x_transformice/x_maps/x_hw2014/x_p1.jpg,45,178;x_transformice/x_maps/x_hw2014/x_p2.jpg,198,229;x_transformice/x_maps/x_hw2014/x_p4.jpg,335,197;x_transformice/x_maps/x_hw2014/x_p5.jpg,554,229;x_transformice/x_maps/x_hw2014/x_p0.jpg,684,172"DS="m;58,329,176,298,328,270,500,269,652,295,762,325"d="x_transformice/x_maps/x_hw2014/x_1av.png"Ca=""/><Z><S><S m=""P=",,0.3,0.2,133,,,"H="10"L="30"X="726"c="3"Y="188"/><S m=""P=",,0.3,0.2,-18,,,"H="10"L="30"X="97"c="3"Y="189"/><S m=""P=",,0.3,0.2,-70,,,"H="10"L="30"X="81"c="3"Y="206"/><S m=""P=",,0.3,0.2,20,,,"H="10"L="13"X="251"c="3"Y="60"/><S m=""P=",,0.3,0.2,-130,,,"H="10"L="30"X="116"c="3"Y="196"/><S m=""P=",,0.3,0.2,-2,,,"H="10"L="58"X="418"c="3"Y="147"/><S m=""P=",,0.6,0.2,-10,,,"lua="1"L="145"X="248"H="10"Y="304"/><S m=""P=",,0.3,0.2,43,,,"H="10"L="65"X="605"c="3"Y="202"/><S m=""P=",,0.3,0.2,35,,,"H="10"L="80"X="447"c="3"Y="157"/><S m=""P=",,0.3,0.2,25,,,"H="10"L="60"X="259"c="3"Y="200"/><S m=""P=",,0.3,0.2,20,,,"H="10"L="30"X="745"c="3"Y="183"/><S m=""P=",,0.3,0.2,-10,,,"H="10"L="60"X="103"c="3"Y="99"/><S m=""P=",,0.3,0.2,-43,,,"H="10"L="60"X="213"c="3"Y="209"/><S m=""P=",,0.3,0.2,-36,,,"H="10"L="80"X="389"c="3"Y="158"/><S m=""P=",,0.6,0.2,0,,,"lua="2"L="140"X="421"H="10"Y="287"/><S m=""P=",,0.3,0.2,25,,,"H="10"L="90"X="670"c="3"Y="92"/><S m=""P=",,0.3,0.2,-24,,,"H="10"L="60"X="558"c="3"Y="194"/><S m=""P=",,0.3,0.2,-21,,,"L="80"X="35"H="10"Y="358"/><S m=""P=",,0.6,0.2,16,,,"lua="4"L="114"X="702"H="10"Y="329"/><S m=""P=",,0.6,0.2,10,,,"lua="3"L="116"X="568"H="10"Y="298"/><S m=""P=",,0.3,0.2,10,,,"H="10"L="20"X="360"c="3"Y="80"/><S m=""P=",,0.6,0.2,-15,,,"lua="0"L="110"X="125"H="10"Y="330"/><S m=""P=",,0.3,0.2,14,,,"L="23"X="636"H="10"Y="311"/><S m=""P=",,0.3,0.2,-8,,,"L="35"X="335"H="10"Y="289"/><S m=""P=",,0.3,0.2,4,,,"L="23"X="502"H="10"Y="288"/><S m=""P=",,0.3,0.2,20,,,"L="52"X="781"H="10"Y="354"/></S><D /><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Cadýlar Mapý 2<bl> - <VP>Night Club")


elseif event=="cadýlar2"then
tfm.exec.newGame('<C><P D="x_transformice/x_maps/x_hw2014/x_3.jpg"IP="x_transformice/x_maps/x_hw2014/x_p11.jpg,21,167;x_transformice/x_maps/x_hw2014/x_p12.jpg,184,175;x_transformice/x_maps/x_hw2014/x_p13.jpg,373,148;x_transformice/x_maps/x_hw2014/x_p14.jpg,530,201;x_transformice/x_maps/x_hw2014/x_p15.jpg,686,152"DS="y;351"d="x_transformice/x_maps/x_hw2014/x_3av.png"Ca=""/><Z><S><S m=""X="664"L="56"H="10"c="3"Y="293"/><S m=""P=",,0.3,0.2,-61"X="513"L="50"H="10"c="3"Y="214"/><S m=""X="578"L="90"H="10"c="3"Y="138"/><S m=""P=",,0.3,0.2,25"X="410"L="90"H="10"c="3"Y="117"/><S m=""P=",,0.3,0.2,-3"X="714"L="64"H="10"c="3"Y="110"/><S m=""X="112"L="20"H="10"c="3"Y="166"T="13"/><S m=""X="307"L="16"H="10"c="3"Y="101"T="13"/><S m=""X="577"L="90"H="10"c="3"Y="94"/><S m=""X="353"L="10"H="10"c="3"Y="253"T="13"/><S m=""X="198"L="14"H="10"c="3"Y="159"T="13"/><S m=""X="217"L="14"H="10"c="3"Y="159"T="13"/><S m=""X="207"L="30"H="28"c="3"Y="159"/><S m=""P=",,0.3,0.2,-1"X="578"L="100"H="10"c="3"Y="195"/><S m=""lua="0"L="150"H="40"X="75"Y="385"/><S m=""lua="1"L="150"H="40"X="245"Y="385"/><S m=""lua="2"L="150"H="40"X="405"Y="385"/><S m=""lua="3"L="150"H="40"X="576"Y="385"/><S m=""lua="4"L="150"H="40"X="726"Y="385"/><S m=""L="20"X="160"H="40"Y="385"/><S m=""L="10"X="325"H="40"Y="385"/><S m=""L="22"X="491"H="40"Y="385"/></S><D /><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Cadýlar Mapý 3<bl> - <VP>Night Club")


elseif event=="tatlý1" then
tfm.exec.newGame('<C><P bh=""mgoc="1000"Ca=""D="x_transformice/x_maps/x_papaques_2015/map2.jpg"/><Z><S><S m=""P="0,0,1,0.2,,,,"H="50"L="800"o="12bd94"X="400"C="104"Y="385"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="830"H="1000"Y="-72"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="-30"H="1000"Y="-75"T="12"/><S P="0,0,0.3,5,,,,"L="800"o="324650"X="400"H="50"Y="-25"T="12"/></S><D><DS Y="344"X="528"/><DC Y="347"X="85"/></D><O><O P="0"C="104"X="125"Y="345"/><O P="0"C="104"X="40"Y="345"/><O P="0"C="104"X="40"Y="315"/><O P="0"C="104"X="125"Y="314"/><O P="0"C="305"X="82"Y="294"/><O P="0"C="104"X="366"Y="344"/><O X="354"C="305"P="-50"Y="319"/><O X="413"C="207"P="0"Y="332"/><O X="545"C="407"P="0,1"Y="254"/><O X="82"P="0"C="11"Y="290"/><O X="123"P="0"C="11"Y="313"/><O X="41"P="0"C="11"Y="318"/><O X="41"P="0"C="11"Y="342"/><O X="123"P="0"C="11"Y="345"/><O X="470"P="0"C="104"Y="347"/><O X="582"C="104"P="0"Y="345"/><O P="0"X="640"C="104"Y="287"/><O P="0"X="627"C="207"Y="331"/><O P="-90"X="452"C="305"Y="309"/><O P="0"C="305"X="499"Y="244"/><O P="-90"C="305"X="479"Y="179"/><O X="459"C="104"P="0"Y="223"/><O P="0"X="497"C="104"Y="223"/><O P="90,0"X="662"C="407"Y="261"/><O P="0"X="686"C="104"Y="347"/><O P="10,0"X="573"C="407"Y="138"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Tatlý Mapý 1<bl> - <VP>Night Club")


elseif event=="tatlý2" then
tfm.exec.newGame('<C><P bh=""Ca=""mgoc="1000"D="x_transformice/x_maps/x_papaques_2015/map2.jpg"/><Z><S><S m=""P="0,0,1,0.2,,,,"H="50"L="800"o="12bd94"X="400"C="104"Y="386"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="830"H="1000"Y="-72"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="-30"H="1000"Y="-75"T="12"/><S P="0,0,0,1,,,,"L="800"o="324650"X="400"H="50"Y="-25"T="12"/></S><D><DS Y="131"X="467"/><DC Y="348"X="84"/></D><O><O P="0"C="207"X="346"Y="327"/><O P="-90,0"X="380"C="407"Y="259"/><O P="90,0"C="407"X="555"Y="260"/><O X="468"P="0,0"C="407"Y="156"/><O X="397"P="0"C="104"Y="345"/><O P="-90,0"C="407"X="294"Y="257"/><O X="304"P="90,0"C="407"Y="258"/><O P="90,0"X="305"C="305"Y="107"/><O P="-90,0"C="305"X="293"Y="103"/><O X="591"P="0"C="207"Y="332"/><O X="536"C="104"P="0"Y="344"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Tatlý Mapý 2<bl> - <VP>Night Club")


elseif event=="tatlý3" then
tfm.exec.newGame('<C><P Ca=""bh=""mgoc="1000"D="x_transformice/x_maps/x_papaques_2015/map1.jpg"/><Z><S><S m=""P="0,0,1,0.2,,,,"X="400"L="800"o="12bd94"H="50"C="104"Y="395"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="830"H="1000"Y="-72"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="-30"H="1000"Y="-75"T="12"/><S P="0,0,0,1,,,,"L="800"o="324650"X="400"H="50"Y="-25"T="12"/></S><D><DS Y="356"X="622"/><DC Y="356"X="83"/></D><O><O P="0"X="437"C="305"Y="165"/><O X="125"C="104"P="0"Y="354"/><O X="40"C="104"P="0"Y="354"/><O X="40"C="104"P="0"Y="324"/><O X="125"C="104"P="0"Y="323"/><O X="84"C="305"P="0"Y="303"/><O X="786"C="104"P="0"Y="354"/><O P="0"C="207"X="434"Y="126"/><O P="-90"C="407"X="431"Y="270"/><O X="441"P="90"C="407"Y="270"/><O P="0"C="11"X="82"Y="303"/><O P="0"C="11"X="123"Y="326"/><O P="0"C="11"X="41"Y="327"/><O P="0"C="11"X="41"Y="356"/><O P="0"C="11"X="124"Y="354"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Tatlý Mapý 3<bl> - <VP>Night Club")


elseif event=="tatlý4" then
tfm.exec.newGame('<C><P bh=""mgoc="1000"Ca=""D="x_transformice/x_maps/x_papaques_2015/map1.jpg"/><Z><S><S m=""P="0,0,1,0.2,,,,"H="50"L="800"o="12bd94"X="400"C="104"Y="395"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="830"H="1000"Y="-72"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="-30"H="1000"Y="-75"T="12"/><S P="0,0,0,1,,,,"L="800"o="324650"X="400"H="50"Y="-25"T="12"/></S><D><DC Y="356"X="81"/><DS Y="236"X="609"/></D><O><O X="360"P="-90"C="305"Y="317"/><O X="449"P="0"C="407"Y="263"/><O X="316"P="0"C="207"Y="338"/><O P="0"C="104"X="125"Y="354"/><O P="0"C="104"X="40"Y="354"/><O P="0"C="104"X="40"Y="324"/><O P="0"C="104"X="125"Y="323"/><O P="0"C="305"X="82"Y="303"/><O P="0"C="104"X="366"Y="235"/><O X="83"P="0"C="11"Y="300"/><O X="124"P="0"C="11"Y="326"/><O X="39"P="0"C="11"Y="325"/><O X="41"P="0"C="11"Y="352"/><O X="125"P="0"C="11"Y="353"/><O X="460"C="305"P="-90"Y="318"/><O P="-90"X="600"C="305"Y="319"/><O P="-90"C="305"X="700"Y="317"/><O P="-90"X="787"C="305"Y="318"/><O X="693"C="407"P="0"Y="262"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Tatlý Mapý 4<bl> - <VP>Night Club")


elseif event=="tatlý5" then
tfm.exec.newGame('<C><P bh=""mgoc="1000"Ca=""D="x_transformice/x_maps/x_papaques_2015/map2.jpg"/><Z><S><S m=""P="0,0,1,0.2,,,,"C="104"L="800"o="12bd94"X="400"H="50"Y="386"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="830"H="1000"Y="-72"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="-30"H="1000"Y="-75"T="12"/><S P="0,0,0,1,,,,"L="800"o="324650"X="400"H="50"Y="-25"T="12"/></S><D><DS Y="131"X="467"/><DC Y="348"X="84"/></D><O><O X="412"P="-50,0"C="407"Y="95"/><O P="0"X="346"C="207"Y="327"/><O X="528"C="407"P="50,0"Y="94"/><O X="380"C="407"P="-90,0"Y="259"/><O P="90,0"X="555"C="407"Y="260"/><O X="470"P="0"C="14"Y="22"/><O P="0,0"C="407"X="468"Y="156"/><O P="-90,1"C="305"X="465"Y="95"/><O X="475"P="90,1"C="305"Y="96"/><O P="60,0"C="407"X="438"Y="275"/><O X="518"P="-80,0"C="407"Y="260"/><O P="0"C="104"X="397"Y="345"/><O P="-90,0"X="294"C="407"Y="257"/><O P="90,0"C="407"X="304"Y="258"/><O X="305"C="305"P="90,0"Y="107"/><O P="-90,0"X="293"C="305"Y="103"/><O P="0"C="207"X="591"Y="332"/><O X="536"P="0"C="104"Y="344"/><O X="423"P="0,1"C="104"Y="128"/><O X="521"C="104"P="0,1"Y="130"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Tatlý Mapý 5<bl> - <VP>Night Club")


elseif event=="tatlý6" then
tfm.exec.newGame('<C><P bh=""mgoc="1000"Ca=""D="x_transformice/x_maps/x_papaques_2015/map1.jpg"/><Z><S><S m=""P="0,0,1,0.2,,,,"C="104"L="800"o="12bd94"X="400"H="50"Y="395"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="830"H="1000"Y="-72"T="12"/><S P="0,0,0,1,,,,"L="60"o="324650"X="-30"H="1000"Y="-75"T="12"/><S P="0,0,0,1,,,,"L="800"o="324650"X="400"H="50"Y="-25"T="12"/></S><D><DS Y="245"X="535"/><DC Y="356"X="81"/></D><O><O P="-90"C="305"X="408"Y="321"/><O P="0"C="104"X="430"Y="355"/><O X="654"P="-90"C="305"Y="321"/><O X="535"P="-90"C="305"Y="320"/><O P="-50"C="407"X="470"Y="202"/><O X="593"P="-130"C="407"Y="201"/><O P="0"C="14"X="408"Y="274"/><O P="0"C="14"X="653"Y="274"/><O P="0"C="14"X="532"Y="129"/><O P="0"C="207"X="372"Y="339"/><O P="0"C="207"X="691"Y="340"/><O P="0"C="305"X="534"Y="264"/><O P="0"X="125"C="104"Y="354"/><O P="0"X="40"C="104"Y="354"/><O P="0"X="40"C="104"Y="324"/><O P="0"X="125"C="104"Y="323"/><O P="0"X="82"C="305"Y="303"/><O P="0"X="322"C="104"Y="355"/><O P="0"X="322"C="104"Y="325"/><O P="0"X="276"C="104"Y="355"/><O P="0"X="276"C="104"Y="324"/><O P="0"C="11"X="83"Y="300"/><O P="0"C="11"X="124"Y="326"/><O P="0"C="11"X="39"Y="325"/><O P="0"C="11"X="41"Y="352"/><O P="0"C="11"X="125"Y="353"/></O></Z></C>')
tfm.exec.setUIMapName("<VP>Tatlý Mapý 6 - <VP>Night Club")


elseif event=="f1" then
tfm.exec.newGame('@4332508')
tfm.exec.setUIMapName("<VP>Sandal - <VP>Devilstrkpro-Salsalb")  


elseif event=="h11" then
tfm.exec.newGame('@4332385')
tfm.exec.setUIMapName("<VP>Cadýlar Bayramý 2012 - <VP>Night Club")  


elseif event=="s" then
tfm.exec.newGame('<C><P APS="x_evenements/x_fondSVb.png,0,940,0,800,400" L="1660" D="x_evenements/x_fondSVa.jpg" d="x_evenements/x_fondSVc.png" /><Z><S><S Y="201" T="12" P="0,0,0,0.2,90,0,0,0" L="400" o="12bd94" m="" X="-4" H="10" /><S Y="390" T="12" P="0,0,0.3,0.2,0,0,0,0" L="200" o="12bd94" m="" X="101" H="20" /><S Y="403" T="12" P="0,0,0.3,0.2,0,0,0,0" L="310" o="12bd94" m="" X="354" H="20" /><S Y="389" T="12" P="0,0,0.3,0.2,0,0,0,0" L="400" o="12bd94" m="" X="706" H="20" /><S Y="401" T="12" P="0,0,0.3,0.2,0,0,0,0" L="720" o="12bd94" m="" X="1300" H="20" /><S Y="390" T="12" P="0,0,0.3,0.2,-30,0,0,0" L="30" o="12bd94" m="" X="497" H="10" /><S Y="393" T="12" P="0,0,0.3,0.2,40,0,0,0" L="30" o="12bd94" m="" X="210" H="10" /><S Y="390" T="12" P="0,0,0.3,0.2,15,0,0,0" L="50" o="12bd94" m="" X="927" H="10" /><S Y="241" T="9" P="0,0,,,,0,0,0" L="57" m="" X="1630" H="300" /><S Y="265" T="12" P="0,0,0.3,0.2,0,0,0,0" L="850" o="12bd94" m="" X="1174" H="10" /><S Y="148" T="12" P="0,0,0.3,0.2,0,0,0,0" L="850" o="12bd94" m="" X="1176" H="10" /><S Y="201" T="12" P="0,0,0,0.2,-90,0,0,0" L="420" o="12bd94" m="" X="1664" H="10" /><S Y="-10" T="12" P="0,0,0.3,0,0,0,0,0" L="720" o="12bd94" m="" X="1309" H="20" /><S Y="273" T="12" P="0,0,0.3,0.2,0,0,0,0" L="40" o="12bd94" m="" X="629" H="10" /><S Y="214" T="12" P="0,0,0.3,0.2,0,0,0,0" L="60" o="12bd94" m="" X="565" H="10" /><S Y="66" T="12" P="0,0,0.3,0.2,0,0,0,0" L="280" o="12bd94" m="" X="266" H="10" /><S Y="218" T="12" P="0,0,0.3,0.2,90,0,0,0" L="200" o="12bd94" m="" X="429" H="10" /></S><D><DS Y="362" X="89" /><P Y="143" T="68" X="844" P="0,0" /><P Y="142" T="67" X="801" P="0,0" /><P Y="143" T="67" X="890" P="0,1" /><P Y="259" T="68" X="850" P="0,0" /><P Y="143" T="68" X="1017" P="0,0" /><P Y="143" T="68" X="1182" P="0,0" /><P Y="143" T="68" X="1334" P="0,0" /><P Y="143" T="68" X="1507" P="0,0" /><P Y="260" T="68" X="1513" P="0,0" /><P Y="260" T="68" X="1339" P="0,0" /><P Y="260" T="68" X="1174" P="0,0" /><P Y="260" T="68" X="1019" P="0,0" /><P Y="390" T="68" X="1115" P="0,0" /><P Y="389" T="68" X="1285" P="0,0" /><P Y="391" T="68" X="1459" P="0,0" /><P Y="260" T="67" X="809" P="0,0" /><P Y="143" T="67" X="975" P="0,0" /><P Y="144" T="67" X="1137" P="0,0" /><P Y="144" T="67" X="1290" P="0,0" /><P Y="144" T="67" X="1464" P="0,0" /><P Y="260" T="67" X="971" P="0,0" /><P Y="260" T="67" X="1131" P="0,0" /><P Y="259" T="67" X="1296" P="0,0" /><P Y="260" T="67" X="1468" P="0,0" /><P Y="391" T="67" X="1415" P="0,0" /><P Y="390" T="67" X="1240" P="0,0" /><P Y="391" T="67" X="1070" P="0,0" /><P Y="260" T="67" X="894" P="0,1" /><P Y="390" T="67" X="1504" P="0,1" /><P Y="391" T="67" X="1331" P="0,1" /><P Y="390" T="67" X="1160" P="0,1" /><P Y="144" T="67" X="1552" P="0,1" /><P Y="144" T="67" X="1380" P="0,1" /><P Y="143" T="67" X="1230" P="0,1" /><P Y="143" T="67" X="1063" P="0,1" /><P Y="260" T="67" X="1063" P="0,1" /><P Y="260" T="67" X="1220" P="0,1" /><P Y="260" T="67" X="1387" P="0,1" /><P Y="259" T="67" X="1558" P="0,1" /></D><O><O C="22" Y="282" X="1108" P="0" /></O></Z></C>')
tfm.exec.setUIMapName("<VP>Sevgililer Mapý - <VP>Night Club") 


elseif event=="Ou2011" then
tfm.exec.newGame([[@4334401]])
tfm.exec.setUIMapName("<VP>Cadýlar Bayramý 2011 - <CH> <VP>Night Club")  


elseif event=="okul1" then
tfm.exec.newGame('@6168087')
tfm.exec.setUIMapName("<VP>Okul Mapý 1<bl> - <VP>Night Club")


elseif event=="okul2" then
tfm.exec.newGame('@6168113')
tfm.exec.setUIMapName("<VP>Okul Mapý 2<bl> - <VP>Night Club")


elseif event=="ejder" then
tfm.exec.newGame('<C><P Ca="" d="x_transformice/x_evt/x_evt_06/jobnpcgy/premier plan.png" D="x_transformice/x_evt/x_evt_06/jobnpcgy/dragon.jpg" mc="" H="2225" /><Z><S><S i="-20,0,x_transformice/x_evt/x_evt_06/jobnpcgy/lumiere.png" L="160" H="450" c="1" N="" Y="335" T="9" X="130" P="0,0,,,,0,0,0" /><S i="355,-502,x_transformice/x_evt/x_evt_06/jobnpcgy/tete.png" L="500" o="" H="10" X="250" N="" Y="560" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="-200,-57,x_transformice/x_evt/x_evt_06/jobnpcgy/arbre.png" L="300" o="" X="350" N="" Y="1265" T="12" H="50" /><S P="1,5,0.3,0.2,0,1,9999,9999" i="-10,-15,x_transformice/x_evt/x_evt_06/jobnpcgy/patte4.png" L="130" o="324650" X="350" c="3" N="" Y="1200" T="12" H="40" /><S i="0,0,x_transformice/x_evt/x_evt_06/jobnpcgy/patte3.png" L="40" o="324650" H="130" c="4" Y="1154" T="12" X="405" P="1,0,0.3,0.2,40,0,9999,9999" /><S P="1,0,0.3,0.2,-30,0,9999,9999" i="-15,0,x_transformice/x_evt/x_evt_06/jobnpcgy/patte2.png" L="40" o="324650" H="130" c="4" Y="1081" T="12" X="414" /><S i="-130,-180,x_transformice/x_evt/x_evt_06/jobnpcgy/dragon morceau.png" L="129" o="324650" X="301" c="4" Y="867" T="13" H="10" P="0,0,0.3,0.2,0,0,0,0" /><S Y="728" L="40" o="324650" H="130" c="4" i="-15,0,x_transformice/x_evt/x_evt_06/jobnpcgy/patte2.png" T="12" X="729" P="1,0,0.3,0.2,-30,0,9999,9999" /><S P="1,0,0.3,0.2,-20,0,9999,9999" Y="831" L="40" o="324650" H="130" c="4" i="0,-20,x_transformice/x_evt/x_evt_06/jobnpcgy/patte3.png" T="12" X="776" /><S Y="913" L="130" o="324650" X="757" c="3" N="" i="-10,-15,x_transformice/x_evt/x_evt_06/jobnpcgy/patte4.png" T="12" H="40" P="1,5,0.3,0.2,-40,1,9999,9999" /><S Y="675" L="10" o="324650" X="690" c="4" i="-50,-50,x_transformice/x_evt/x_evt_06/jobnpcgy/patte1.png" T="13" H="10" P="0,0,0.3,0.2,0,0,0,0" /><S L="130" o="" X="356" H="40" Y="224" T="12" P="0,0,0.3,0.2,-50,0,0,0" /><S P="0,0,0.3,0.2,10,0,0,0" L="130" o="" H="40" Y="193" T="12" X="442" /><S P="0,0,0.3,0.2,-70,0,0,0" L="150" o="" H="40" Y="340" T="12" X="325" /><S L="150" o="" H="40" X="329" Y="329" T="12" P="0,0,0.3,0.2,-95,0,0,0" /><S L="130" o="" H="40" X="563" Y="225" T="12" P="0,0,0.3,0.2,20,0,0,0" /><S P="0,0,0.3,0.2,30,0,0,0" L="100" o="" X="663" Y="270" T="12" H="40" /><S P="0,0,0.3,0.2,65,0,0,0" L="130" o="" X="724" Y="344" T="12" H="40" /><S L="130" o="" X="776" H="40" Y="455" T="12" P="0,0,0.3,0.2,65,0,0,0" /><S L="60" o="" H="20" X="515" Y="582" T="12" P="0,0,0,0.2,40,0,0,0" /><S P="0,0,0,0.2,60,0,0,0" L="100" o="" X="560" Y="642" T="12" H="20" /><S L="100" o="" X="620" H="20" Y="713" T="12" P="0,0,0,0.2,40,0,0,0" /><S L="100" o="" X="601" H="20" Y="993" T="12" P="0,0,0,0.2,130,0,0,0" /><S P="0,0,0,0.2,140,0,0,0" L="100" o="" H="20" Y="1033" T="12" X="558" /><S P="0,0,0,0.2,215,0,0,0" L="80" o="" H="20" Y="992" T="12" X="665" /><S L="80" o="" H="20" X="727" Y="1040" T="12" P="0,0,0,0.2,220,0,0,0" /><S P="0,0,0,0.2,235,0,0,0" L="80" o="" X="778" Y="1097" T="12" H="20" /><S H="10" L="300" o="" X="124" c="3" Y="1099" T="12" P="0,0,0,0.2,14,0,0,0" /><S P="0,0,0,0.2,-33,0,0,0" L="500" o="" X="427" Y="1514" T="12" H="50" /><S L="500" o="" X="479" H="50" Y="1463" T="12" P="0,0,0,0.2,-40,0,0,0" /><S P="0,0,0,0.2,-40,0,0,0" L="100" o="" H="50" Y="1679" T="12" X="183" /><S L="50" o="" H="10" X="122" Y="1712" T="12" P="0,0,0,0.2,-55,0,0,0" /><S P="0,0,0,0.2,38,0,0,0" L="150" o="" X="26" Y="1769" T="12" H="10" /><S L="50" o="" X="99" H="10" Y="1834" T="12" P="0,0,0.3,0.2,50,0,0,0" /><S L="160" o="" H="10" X="46" Y="1935" T="12" P="0,0,0.3,0.2,-45,0,0,0" /><S L="22" o="" X="97" H="10" Y="1861" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0,0.2,-70,0,0,0" L="100" o="" H="50" Y="1276" T="12" X="681" /><S L="100" o="" H="50" X="684" Y="1222" T="12" P="0,0,0,0.2,-90,0,0,0" /><S P="0,0,0,0.2,-120,0,0,0" L="100" o="" X="653" Y="1137" T="12" H="50" /><S L="100" o="" X="622" H="50" Y="1104" T="12" P="0,0,0,0.2,-140,0,0,0" /><S P="0,0,0,0.2,-150,0,0,0" L="100" o="" H="50" Y="1074" T="12" X="581" /><S P="0,0,0,0.2,14,0,0,0" L="300" o="" H="50" c="3" Y="1062" T="12" X="23" /><S X="-73" L="300" o="" H="50" c="3" Y="1012" T="12" P="0,0,0,0.2,14,0,0,0" /><S L="100" o="" H="50" X="366" Y="1245" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-15,0,0,0" L="104" o="" X="278" Y="1259" T="12" H="52" /><S L="100" o="" X="174" H="50" Y="1290" T="12" P="0,0,0.3,0.2,-35,0,0,0" /><S P="0,0,0.3,0.2,-35,0,0,0" L="100" o="" H="50" Y="1342" T="12" X="100" /><S P="0,0,0.3,0.2,20,0,0,0" L="70" o="" X="521" Y="1276" T="12" H="50" /><S L="50" o="" X="538" H="30" Y="1292" T="12" P="0,0,0.3,0.2,20,0,0,0" /><S L="350" o="" H="50" X="335" Y="1920" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="100" o="" H="50" X="675" Y="1950" T="12" P="0,0,0,0.2,-205,0,0,0" /><S P="0,0,0,0.2,-215,0,0,0" L="100" o="" X="724" Y="1920" T="12" H="50" /><S P="0,0,0,0.2,-165,0,0,0" L="100" o="" X="665" Y="1980" T="12" H="30" /><S L="300" o="" X="511" H="50" Y="2102" T="12" P="0,0,0,0.2,0,0,0,0" /><S P="0,0,0,0.2,-13,0,0,0" L="100" o="" H="50" Y="2113" T="12" X="317" /><S L="100" o="" H="50" X="236" Y="2148" T="12" P="0,0,0,0.2,-33,0,0,0" /><S P="0,0,0,0.2,-50,0,0,0" L="100" o="" X="171" Y="2205" T="12" H="50" /><S L="100" o="" X="545" H="50" Y="2083" T="12" P="0,0,0,0.2,-20,0,0,0" /><S P="0,0,0,0.2,-40,0,0,0" L="100" o="" H="50" Y="2041" T="12" X="600" /><S L="100" o="" H="50" X="623" Y="2011" T="12" P="0,0,0,0.2,-60,0,0,0" /><S P="0,0,0.3,0.2,-20,0,0,0" L="350" o="" X="892" Y="1501" T="12" H="100" /><S L="50" o="" X="716" H="100" Y="1570" T="12" P="0,0,0.3,0.2,-30,0,0,0" /><S P="0,0,0.3,0.2,-50,0,0,0" L="30" o="" H="100" Y="1582" T="12" X="699" /><S P="0,0,0.3,0.2,25,0,0,0" L="101" o="" X="450" Y="1267" T="12" H="51" /><S L="60" o="324650" X="205" c="4" Y="1025" T="13" m="" P="1,0,0.3,0.2,0,0,0,0" /><S P="1,0,0.3,0.2,0,1,0,0" L="10" o="ffffff" X="205" c="4" Y="1080" T="12" m="" H="10" /><S L="100" o="324650" X="500" c="4" Y="800" T="13" m="" P="1,0,0.3,0.2,0,0,0,0" /><S P="1,0,0.3,0.2,0,1,0,0" L="10" o="ffffff" X="500" c="4" Y="895" T="12" m="" H="10" /></S><D><DC Y="535" X="284" /><DS Y="2056" X="393" /><F Y="351" X="131" /><T Y="359" X="133" /></D><O><O C="22" Y="1197" X="374" P="0" /><O C="14" Y="1118" X="434" P="0" /><O C="11" Y="1029" X="388" P="0" /><O C="12" Y="1025" P="0" X="205" /><O C="11" Y="681" P="0" X="700" /><O C="14" Y="776" P="0" X="754" /><O C="22" Y="882" P="0" X="796" /><O C="12" Y="800" P="0" X="500" /></O><L><JR M2="65" P1="205,1080" M1="64" /><JP M2="3" AXIS="1,0" M1="65" /><JR M2="67" P1="500,895" M1="66" /><JP M2="9" AXIS="1,0" M1="67" /></L></Z></C>')
tfm.exec.setUIMapName("<VP>Çin Yeni Yýl!<bl> - <VP>Night Club")


elseif event=="gökkuþaðý" then
tfm.exec.newGame('<C><P L="5400" D="x_transformice/x_evt/x_evt_04/cwlb1bml/fond.jpg" DS="m;5360,350,40,350" mc="" Ca="" /><Z><S><S Y="380" L="120" o="324650" H="40" c="1" N="" i="-30,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage11.png" T="12" X="60" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,50,0,0,0" L="50" o="0" H="27" c="3" N="" Y="388" T="12" m="" X="125" /><S P="1,0,0.3,0.2,0,0,0,0" L="150" o="324650" X="80" c="4" Y="200" T="13" m="" H="10" /><S P="1,0,0.3,1.2,0,1,9999,9999" i="-10,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage_plateforme.png" L="150" o="324650" H="40" c="1" N="" Y="380" T="12" X="215" /><S X="80" L="10" o="0" H="10" c="4" Y="340" T="12" m="" P="1,0,0.3,0.2,0,1,0,0" /><S Y="150" L="150" o="324650" H="40" c="1" N="" i="-10,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage_plateforme.png" T="12" X="360" P="1,0,0.3,0.2,0,1,9999,9999" /><S P="1,0,0.3,0.2,0,1,0,0" L="10" o="0" H="10" c="4" Y="200" T="12" m="" X="-65" /><S P="0,0,0.3,0.2,0,0,0,0" i="-90,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage2.png" L="150" o="324650" H="40" c="1" N="" Y="380" T="12" X="830" /><S P="1,0,0.3,0.2,0,0,0,0" L="400" o="324650" X="1120" c="4" Y="700" T="13" m="" H="10" /><S Y="380" L="150" o="324650" H="40" c="1" N="" i="-90,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage2.png" T="12" X="1370" P="0,0,0.3,0.2,0,0,0,0" /><S Y="315" L="100" o="324650" X="1120" c="3" N="" i="-250,0,x_transformice/x_evt/x_evt_04/cwlb1bml/arc en ciel petit.png" T="12" H="30" P="1,0,0.3,0.2,0,0,0,0" /><S X="1215" L="100" o="324650" H="30" c="3" Y="329" T="12" m="" P="1,0,0.3,0.2,15,0,0,0" /><S P="1,0,0.3,0.2,30,0,0,0" L="100" o="324650" H="30" c="3" Y="365" T="12" m="" X="1302" /><S P="1,0,0.3,0.2,-15,0,0,0" L="100" o="0" H="30" c="3" Y="327" T="12" m="" X="1027" /><S X="939" L="100" o="324650" H="30" c="3" Y="364" T="12" m="" P="1,0,0.3,0.2,-30,0,0,0" /><S P="1,0,0.3,0.2,-40,0,0,0" L="50" o="324650" H="30" c="3" Y="400" T="12" m="" X="880" /><S X="1358" L="50" o="324650" H="30" c="3" Y="402" T="12" m="" P="1,0,0.3,0.2,40,0,0,0" /><S Y="380" L="150" o="324650" H="40" c="1" N="" i="-10,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage_plateforme.png" T="12" X="1530" P="1,0,50,0.2,0,1,0,0" /><S P="1,0,0.3,0.2,0,0,0,0" L="300" o="324650" X="1800" c="4" Y="-300" T="13" H="10" /><S X="1505" L="10" o="0" H="10" c="4" Y="-300" T="12" m="" P="1,0,0.3,0.2,0,1,0,0" /><S P="0,0,0,0.2,0,0,0,0" L="2500" o="324650" X="2734" c="2" Y="405" T="12" H="10" /><S Y="200" L="100" o="324650" H="40" c="1" N="" i="-390,0,x_transformice/x_evt/x_evt_04/cwlb1bml/arc en ciel grand.png" T="12" X="2700" P="0,0,5,0.2,0,0,0,0" /><S Y="380" L="150" o="324650" H="40" c="1" N="" i="-90,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage2.png" T="12" X="3100" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="-90,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage2.png" L="150" o="324650" H="40" c="1" N="" Y="380" T="12" X="2300" /><S L="100" o="324650" H="40" X="2605" Y="208" T="12" m="" P="0,0,5,0.2,-10,0,0,0" /><S P="0,0,5,0.2,-20,0,0,0" L="100" o="324650" X="2514" Y="233" T="12" m="" H="40" /><S L="100" o="324650" X="2428" H="40" Y="273" T="12" m="" P="0,0,5,0.2,-30,0,0,0" /><S P="0,0,5,0.2,-40,0,0,0" L="100" o="324650" H="40" Y="327" T="12" m="" X="2351" /><S L="100" o="324650" H="40" X="2287" Y="391" T="12" m="" P="0,0,5,0.2,-50,0,0,0" /><S P="0,0,5,0.2,10,0,0,0" L="100" o="324650" X="2796" Y="208" T="12" m="" H="40" /><S L="100" o="324650" X="2889" H="40" Y="233" T="12" m="" P="0,0,5,0.2,20,0,0,0" /><S P="0,0,5,0.2,30,0,0,0" L="100" o="324650" H="40" Y="273" T="12" m="" X="2976" /><S L="100" o="324650" H="40" X="3054" Y="328" T="12" m="" P="0,0,5,0.2,40,0,0,0" /><S P="0,0,5,0.2,50,0,0,0" L="100" o="324650" X="3119" Y="393" T="12" m="" H="40" /><S Y="380" L="120" o="324650" H="40" c="1" N="" i="-80,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage1.png" T="12" X="5340" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-50,0,0,0" L="50" o="0" H="27" c="3" N="" Y="388" T="12" m="" X="5275" /><S P="1,0,0.3,1.2,0,1,9999,9999" i="-10,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage_plateforme.png" L="150" o="324650" H="40" c="1" N="" Y="380" T="12" X="5185" /><S X="225" L="10" o="0" H="10" c="4" Y="203" T="12" m="" P="1,0,0.3,0.2,0,1,0,0" /><S Y="150" L="150" o="324650" H="40" c="1" N="" i="-10,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage_plateforme.png" T="12" X="5040" P="1,0,0.3,0.2,0,1,9999,9999" /><S P="0,0,0.3,0.2,0,0,0,0" i="-90,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage2.png" L="150" o="324650" H="40" c="3" N="" Y="380" T="12" X="4540" /><S P="1,0,0,0.2,0,0,0,0" L="400" o="324650" X="4280" c="2" Y="700" T="13" m="" H="10" /><S Y="380" L="150" o="324650" H="40" c="3" N="" i="-90,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage2.png" T="12" X="4050" P="0,0,0.3,0.2,0,0,0,0" /><S Y="315" L="100" o="324650" X="4280" c="3" N="" i="-250,0,x_transformice/x_evt/x_evt_04/cwlb1bml/arc en ciel petit.png" T="12" H="30" P="1,0,0.3,0.2,0,0,0,0" /><S X="4185" L="100" o="324650" H="30" c="3" Y="329" T="12" m="" P="1,0,0.3,0.2,-15,0,0,0" /><S P="1,0,0.3,0.2,-30,0,0,0" L="100" o="324650" H="30" c="3" Y="365" T="12" m="" X="4098" /><S P="1,0,0.3,0.2,15,0,0,0" L="100" o="0" H="30" c="3" Y="327" T="12" m="" X="4373" /><S X="4461" L="100" o="324650" H="30" c="3" Y="364" T="12" m="" P="1,0,0.3,0.2,30,0,0,0" /><S P="1,0,0.3,0.2,40,0,0,0" L="50" o="324650" H="30" c="3" Y="400" T="12" m="" X="4520" /><S X="4042" L="50" o="324650" H="30" c="3" Y="402" T="12" m="" P="1,0,0.3,0.2,-40,0,0,0" /><S Y="380" L="150" o="324650" H="40" c="1" N="" i="-10,-10,x_transformice/x_evt/x_evt_04/cwlb1bml/nuage_plateforme.png" T="12" X="3255" P="1,0,50,0.2,0,1,0,0" /><S X="2095" L="10" o="0" H="10" c="4" Y="-300" T="12" m="" P="1,0,0.3,0.2,0,1,0,0" /><S P="0,0,0,0.2,0,0,0,0" L="1000" o="324650" X="3450" c="2" Y="405" T="12" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="1074" o="324650" X="4283" Y="1124" T="12" H="35" /><S P="0,0,0.3,0.2,0,0,0,0" L="129" o="324650" X="3805" Y="808" T="12" H="743" /><S P="0,0,0.3,0.2,0,0,0,0" L="147" o="324650" X="4761" Y="787" T="12" H="739" /><S L="13" o="324650" H="40" X="3985" Y="380" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D><DC Y="325" X="1420" /></D><O><O C="12" Y="200" X="80" P="0" /><O C="13" Y="700" P="0" X="1120" /><O C="12" Y="-300" X="1800" P="0" /></O><L><JP M1="3" M2="4" AXIS="1,0" /><JP M1="5" M2="6" AXIS="0,1" /><JR M1="2" M2="6" P1="-65,200" /><JR M1="2" M2="4" P1="80,340" /><JR M1="18" M2="19" P1="1505,-300" /><JP M1="19" M2="17" AXIS="0,1" /><JP M1="38" M2="37" AXIS="0,1" /><JP M1="4" M2="36" AXIS="1,0" /><JR M1="19" M2="50" P1="2095,-300" /><JP M1="50" M2="49" AXIS="0,1" /><JR M1="2" M2="37" P1="225,202" /><JR M1="42" M2="40" MV="Infinity,-0.2" /><JR M1="45" M2="40" MV="Infinity,-0.2" /><JR M1="46" M2="40" MV="Infinity,-0.2" /><JR M1="47" M2="40" MV="Infinity,-0.2" /><JR M1="43" M2="40" MV="Infinity,-0.2" /><JR M1="44" M2="40" MV="Infinity,-0.2" /><JR M1="48" M2="40" MV="Infinity,-0.2" /><JR M1="10" M2="8" MV="Infinity,0.05" /><JR M1="11" M2="8" MV="Infinity,0.05" /><JR M1="12" M2="8" MV="Infinity,0.05" /><JR M1="16" M2="8" MV="Infinity,0.05" /><JR M1="13" M2="8" MV="Infinity,0.05" /><JR M1="14" M2="8" MV="Infinity,0.05" /><JR M1="15" M2="8" MV="Infinity,0.05" /></L></Z></C>')
tfm.exec.setUIMapName("<VP> Gökkuþaðý<bl> - <VP>Night Club")


elseif event=="kamp" then
tfm.exec.newGame('<C><P D="x_transformice/x_evt/x_evt_01/kjneb75/map-nouvel-an.jpg" /><Z><S><S L="800" o="" X="400" H="40" Y="390" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="" X="-5" H="406" Y="204" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="" H="406" Y="200" T="12" X="805" /><S L="10" o="" H="800" X="385" Y="15" T="12" P="0,0,0.3,0.2,90,0,0,0" /><S L="25" o="" X="458" H="20" Y="368" T="12" P="0,0,0.3,0.2,10,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="25" o="" H="20" Y="368" T="12" X="591" /><S L="70" o="" X="191" H="10" Y="219" T="12" P="0,0,0.3,0.2,-10,0,0,0" /><S P="0,0,0.3,0.2,5,0,0,0" L="80" o="" H="10" Y="217" T="12" X="263" /><S L="140" o="" H="10" X="338" Y="276" T="12" P="0,0,0.3,0.2,55,0,0,0" /><S P="0,0,0.3,0.2,-70,0,0,0" L="70" o="" H="10" Y="255" T="12" X="149" /><S L="50" o="" H="10" X="140" Y="294" T="12" P="0,0,0.3,0.2,-80,0,0,0" /><S P="0,0,0.3,0.2,20,0,0,0" L="50" o="" X="21" Y="272" T="12" H="10" /><S L="100" o="" X="19" H="10" Y="315" T="12" P="0,0,0.3,0.2,-60,0,0,0" /><S L="36" o="" X="680" H="10" Y="332" T="13" P="0,0,0.3,1.2,0,0,0,0" /><S P="0,0,0.3,1.2,0,0,0,0" L="36" o="" H="10" Y="328" T="13" X="714" /><S L="20" o="" H="10" X="505" Y="357" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="20" o="" X="514" Y="341" T="13" H="10" /><S L="20" o="" X="520" H="10" Y="320" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="20" o="" H="10" Y="297" T="13" X="527" /><S L="20" o="" H="10" X="541" Y="271" T="13" P="0,0,0.3,1.2,0,0,0,0" /><S P="0,0,0.3,1.2,0,0,0,0" L="20" o="" X="566" Y="267" T="13" H="10" /><S L="20" o="" X="594" H="10" Y="267" T="13" P="0,0,0.3,1.2,0,0,0,0" /><S P="0,0,0.3,1.2,0,0,0,0" L="20" o="" H="10" Y="275" T="13" X="619" /><S L="20" o="" H="10" X="625" Y="289" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="20" o="" X="635" Y="307" T="13" H="10" /><S L="10" o="" X="577" H="67" Y="228" T="12" P="0,0,0.3,0.2,-10,0,0,0" /><S L="70" o="" H="10" X="732" Y="372" T="12" P="0,0,0.3,0.2,-70,0,0,0" /></S><D><DS Y="355" X="215" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Kamp Ateþi<bl> - <VP>Night Club")


elseif event=="sýcak" then
tfm.exec.newGame('<C><P defilante="-1,-1,-1,1" L="2400" d="x_transformice/x_evt/x_evt_03/0or8meuj/mongolfiere.png,300,150" G="8,10" D="x_transformice/x_evt/x_evt_03/0or8meuj/map-mongolfiere.jpg" /><Z><S><S L="40" o="" H="10" X="199" Y="356" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="40" o="" X="276" Y="354" T="13" H="10" /><S L="40" o="" X="471" H="10" Y="344" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="153" o="" H="65" X="377" Y="358" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="62" o="" H="57" X="149" Y="371" T="12" P="0,0,0.3,0.2,30,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="" X="193" Y="419" T="13" H="10" /><S L="100" o="" X="442" H="10" Y="412" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="40" o="" H="10" Y="356" T="13" X="493" /><S L="40" o="" H="10" X="382" Y="355" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="40" o="" X="300" Y="357" T="13" H="10" /><S L="40" o="" H="200" X="621" Y="341" T="12" P="0,0,0.3,0.2,10,0,0,0" /><S L="20" o="" H="160" X="913" Y="80" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-10,0,0,0" L="20" o="" X="1156" Y="342" T="12" H="200" /><S L="20" o="" H="50" X="1147" Y="226" T="12" P="0,0,0.3,0.2,20,0,0,0" /><S L="50" o="" H="10" X="1180" Y="199" T="12" P="0,0,0.3,0.2,-10,0,0,0" /><S P="0,0,0.3,0.2,5,0,0,0" L="70" o="" X="1239" Y="196" T="12" H="10" /><S L="10" o="" H="165" X="1569" Y="48" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="" H="57" X="1563" Y="153" T="12" P="0,0,0.3,0.2,10,0,0,0" /><S L="20" o="" H="53" X="1800" Y="278" T="12" P="0,0,0.3,0.2,-20,0,0,0" /><S L="20" o="" H="80" X="1798" Y="338" T="12" P="0,0,0.3,0.2,15,0,0,0" /><S L="100" o="" H="86" X="1906" Y="350" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,10,0,0,0" L="100" o="" X="1993" Y="360" T="12" H="86" /><S L="26" o="" H="10" X="2025" Y="340" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="" X="2117" Y="348" T="12" H="86" /><S L="50" o="" X="2062" H="86" Y="354" T="12" P="0,0,0.3,0.2,-20,0,0,0" /><S P="0,0,0.3,0.2,20,0,0,0" L="50" o="" H="86" Y="355" T="12" X="2170" /><S L="36" o="" H="10" X="2211" Y="353" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="36" o="" X="2227" Y="356" T="13" H="10" /><S L="36" o="" X="2247" H="10" Y="365" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="29" o="" H="62" X="2281" Y="380" T="12" P="0,0,0.3,0.2,-30,0,0,0" /><S P="0,0,0.3,0.2,30,0,0,0" L="30" o="" X="1845" Y="357" T="12" H="100" /><S P="0,0,9999,0.2,0,0,0,0" L="80" o="" H="20" Y="290" T="12" X="361" /><S P="0,0,9999,0.2,0,0,0,0" L="50" o="" H="10" Y="230" T="12" X="358" /><S P="0,0,0.3,0.2,50,0,0,0" L="10" o="" X="1827" Y="286" T="12" H="40" /></S><D><DS Y="270" X="360" /><DC Y="216" X="360" /><T Y="307" D="" X="2087" /><F Y="304" X="2086" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<VP>Kamp Ateþi<bl> - <VP>Night Club")


elseif event=="kral" then
tfm.exec.newGame('<C><P Ca="" mc="" L="2000" D="x_transformice/x_evt/rs4otmym/epiphanie.jpg" /><Z><S><S L="300" o="" H="53" X="145" Y="385" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="1000" o="" X="1052" Y="385" T="12" H="50" /><S L="1000" o="" X="1900" H="53" Y="370" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="1000" o="" H="53" Y="362" T="12" X="1982" /><S L="1000" o="" H="53" X="2061" Y="354" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="1000" o="" X="2134" Y="345" T="12" H="53" /><S L="1000" o="" X="2226" H="53" Y="333" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="" H="44" X="1864" Y="303" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S P="0,0,0.3,0.2,50,0,0,0" L="10" o="" X="1882" Y="285" T="12" H="20" /><S L="40" o="" H="10" X="1907" Y="280" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,100,0,0,0" L="100" o="" X="1933" Y="230" T="12" H="10" /><S P="0,0,0.3,0.2,-40,0,0,0" L="10" o="" X="1943" Y="296" T="12" H="44" /><S Y="265" L="70" o="" H="30" X="100" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique2.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="" H="374" X="-5" Y="185" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S X="726" L="3000" o="" H="10" c="3" Y="-5" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="" H="376" X="2005" Y="180" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="1,100,0.3,0.2,5,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/pont.png" L="270" o="324650" H="20" N="" Y="360" T="12" X="415" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique2.png" L="70" o="" X="230" N="" Y="200" T="12" H="30" /><S Y="125" L="70" o="" X="345" H="30" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique2.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique2.png" L="70" o="" H="30" N="" Y="180" T="12" X="540" /><S Y="350" L="10" o="324650" X="340" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,185,0,0,0" /><S P="1,0,0.3,0.2,195,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="344" c="2" N="" Y="326" T="12" H="30" /><S Y="305" L="10" o="324650" X="350" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,195,0,0,0" /><S Y="281" L="10" o="324650" X="361" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,215,0,0,0" /><S P="1,0,0.3,0.2,215,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="375" c="2" N="" Y="260" T="12" H="30" /><S Y="240" L="10" o="324650" X="389" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,215,0,0,0" /><S P="1,0,0.3,0.2,225,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="406" c="2" N="" Y="219" T="12" H="30" /><S Y="199" L="10" o="324650" X="427" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,225,0,0,0" /><S P="1,0,0.3,0.2,225,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="447" c="2" N="" Y="179" T="12" H="35" /><S Y="157" L="10" o="324650" X="465" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="40" P="1,0,0.3,0.2,215,0,0,0" /><S Y="135" L="10" o="324650" X="480" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,215,0,0,0" /><S P="1,0,0.3,0.2,225,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="495" c="2" N="" Y="118" T="12" H="30" /><S Y="99" L="10" o="324650" X="514" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,225,0,0,0" /><S Y="50" L="13" o="324650" X="600" c="2" i="-18,-18,x_transformice/x_evt/rs4otmym/rouage.png" T="13" H="10" P="1,0,0.3,0.2,0,0,0,0" /><S Y="20" L="13" o="324650" X="650" c="2" i="-18,-18,x_transformice/x_evt/rs4otmym/rouage.png" T="13" H="10" P="1,0,0.3,0.2,0,0,0,0" /><S Y="35" L="13" o="324650" X="700" c="2" i="-18,-18,x_transformice/x_evt/rs4otmym/rouage.png" T="13" H="10" P="1,0,0.3,0.2,0,0,0,0" /><S P="1,0,0.3,0.2,215,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="529" c="2" N="" Y="81" T="12" H="30" /><S Y="65" L="10" o="324650" X="542" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,225,0,0,0" /><S P="1,0,0.3,0.2,235,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="562" c="2" N="" Y="49" T="12" H="30" /><S Y="36" L="10" o="324650" X="583" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,245,0,0,0" /><S P="1,0,0.3,0.2,275,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="610" c="2" N="" Y="32" T="12" H="30" /><S Y="38" L="10" o="324650" X="634" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,295,0,0,0" /><S P="1,0,0.3,0.2,255,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="658" c="2" N="" Y="41" T="12" H="30" /><S Y="30" L="10" o="324650" X="677" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,225,0,0,0" /><S P="1,0,0.3,0.2,225,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="694" c="2" N="" Y="14" T="12" H="30" /><S Y="-5" L="10" o="324650" X="706" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,195,0,0,0" /><S H="10" L="100" o="324650" X="710" c="4" Y="-110" T="13" P="1,0,0.3,0.2,0,0,9999,9999" /><S Y="200" L="70" o="" X="665" H="30" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" H="30" N="" Y="150" T="12" X="750" /><S Y="180" L="70" o="" H="30" X="930" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" X="930" N="" Y="270" T="12" H="30" /><S Y="345" L="70" o="" X="1000" H="30" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" H="30" N="" Y="315" T="12" X="1070" /><S Y="350" L="70" o="" H="30" X="1145" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S Y="230" L="70" o="" X="1070" H="30" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" H="30" N="" Y="130" T="12" X="1100" /><S Y="160" L="70" o="" H="30" X="1280" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" X="1350" N="" Y="260" T="12" H="30" /><S Y="150" L="70" o="" X="1450" H="30" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" H="30" N="" Y="50" T="12" X="1200" /><S P="0,0,0.3,0.2,0,0,0,0" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" L="70" o="" H="30" N="" Y="180" T="12" X="1800" /><S Y="70" L="70" o="" H="30" X="1860" N="" i="0,0,x_transformice/x_evt/rs4otmym/brique1.png" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S Y="78" L="10" o="324650" X="885" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,400,0,0,0" /><S P="1,0,0.3,0.2,320,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="956" c="4" N="" Y="78" T="12" H="30" /><S P="1,0,0.3,0.2,420,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="906" c="4" N="" Y="62" T="12" H="40" /><S Y="64" L="10" o="324650" X="935" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="40" P="1,0,0.3,0.2,300,0,0,0" /><S P="1,0,0.3,0.2,360,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="920" c="4" N="" Y="45" T="12" H="30" /><S Y="20" L="10" o="324650" X="920" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,360,0,0,0" /><S P="1,0,0.3,0.2,360,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1360" c="4" N="" Y="20" T="12" H="30" /><S Y="45" L="10" o="324650" X="1360" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,360,0,0,0" /><S P="1,0,0.3,0.2,300,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1376" c="4" N="" Y="65" T="12" H="40" /><S Y="80" L="10" o="324650" X="1395" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,320,0,0,0" /><S Y="63" L="10" o="324650" X="1346" c="2" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="40" P="1,0,0.3,0.2,420,0,0,0" /><S P="1,0,0.3,0.2,400,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1325" c="4" N="" Y="80" T="12" H="30" /><S Y="15" L="10" o="324650" X="1650" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,360,0,0,0" /><S P="1,0,0.3,0.2,360,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1650" c="4" N="" Y="41" T="12" H="30" /><S Y="67" L="10" o="324650" X="1650" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,360,0,0,0" /><S P="1,0,0.3,0.2,360,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1650" c="4" N="" Y="93" T="12" H="30" /><S Y="120" L="10" o="324650" X="1650" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,360,0,0,0" /><S P="1,0,0.3,0.2,420,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1637" c="4" N="" Y="138" T="12" H="40" /><S Y="138" L="10" o="324650" X="1663" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="40" P="1,0,0.3,0.2,300,0,0,0" /><S P="1,0,0.3,0.2,320,0,0,0" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" L="10" o="324650" X="1682" c="4" N="" Y="154" T="12" H="30" /><S Y="154" L="10" o="324650" X="1618" c="4" N="" i="-5,0,x_transformice/x_evt/rs4otmym/chaine-3.png" T="12" H="30" P="1,0,0.3,0.2,400,0,0,0" /><S P="1,0,0.3,0.2,0,0,0,0" i="-90,-90,x_transformice/x_evt/rs4otmym/chandelier.png" L="100" o="324650" H="30" N="" Y="100" T="12" X="920" /><S Y="169" L="10" o="324650" X="230" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="1,0,0.3,0.2,0,0,0,0" i="-90,-90,x_transformice/x_evt/rs4otmym/chandelier.png" L="100" o="324650" X="1650" N="" Y="175" T="12" H="30" /><S Y="97" L="10" o="324650" X="433" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="151" L="10" o="324650" X="538" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="345" L="10" o="324650" X="558" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="291" L="10" o="324650" X="728" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="119" L="10" o="324650" X="750" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="147" L="10" o="324650" X="934" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="343" L="10" o="324650" X="821" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="283" L="10" o="324650" X="1067" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="45" L="10" o="324650" X="1016" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="25" L="10" o="324650" X="1200" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="99" L="10" o="324650" X="1102" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="130" L="10" o="324650" X="1277" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="346" L="10" o="324650" X="1204" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="319" L="10" o="324650" X="1253" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="194" L="10" o="324650" X="1384" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="304" L="10" o="324650" X="1645" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="119" L="10" o="324650" X="1438" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="39" L="10" o="324650" X="1512" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="165" L="10" o="324650" X="1941" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="151" L="10" o="324650" X="1796" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="41" L="10" o="324650" X="1855" c="4" i="-15,-15,x_transformice/x_aventure/x_recoltables/x_4.png" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S Y="99" L="100" o="324650" H="30" X="1360" N="" i="-90,-90,x_transformice/x_evt/rs4otmym/chandelier.png" T="12" P="1,0,0.3,0.2,0,0,0,0" /></S><D><DS Y="340" X="40" /></D><O><O C="11" Y="373" X="546" P="0" /><O C="14" Y="360" P="0" X="340" /><O C="14" Y="340" X="341" P="0" /><O C="14" Y="317" P="0" X="347" /><O C="14" Y="292" X="354" P="0" /><O C="14" Y="272" P="0" X="368" /><O C="14" Y="252" P="0" X="381" /><O C="14" Y="230" X="397" P="0" /><O C="14" Y="209" P="0" X="417" /><O C="14" Y="190" X="437" P="0" /><O C="14" Y="170" P="0" X="457" /><O C="14" Y="147" X="472" P="0" /><O C="14" Y="125" P="0" X="487" /><O C="11" Y="50" P="0" X="600" /><O C="11" Y="20" P="0" X="650" /><O C="11" Y="35" P="0" X="700" /><O C="14" Y="109" X="504" P="0" /><O C="14" Y="91" P="0" X="523" /><O C="14" Y="75" X="533" P="0" /><O C="14" Y="56" P="0" X="553" /><O C="14" Y="41" X="573" P="0" /><O C="14" Y="31" P="0" X="596" /><O C="14" Y="43" X="646" P="0" /><O C="14" Y="40" P="0" X="667" /><O C="14" Y="24" X="685" P="0" /><O C="14" Y="34" X="623" P="0" /><O C="12" Y="-110" P="0" X="710" /><O C="14" Y="7" P="0" X="702" /><O C="14" Y="-15" X="707" P="0" /><O C="14" Y="88" P="0" X="877" /><O C="14" Y="89" X="965" P="0" /><O C="14" Y="70" P="0" X="950" /><O C="14" Y="71" X="893" P="0" /><O C="14" Y="55" X="920" P="0" /><O C="14" Y="33" P="0" X="920" /><O C="11" Y="8" P="0" X="920" /><O C="11" Y="8" X="1360" P="0" /><O C="14" Y="33" X="1360" P="0" /><O C="14" Y="55" P="0" X="1360" /><O C="14" Y="70" X="1388" P="0" /><O C="14" Y="70" X="1333" P="0" /><O C="14" Y="87" P="0" X="1317" /><O C="14" Y="89" X="1405" P="0" /><O C="11" Y="5" P="0" X="1650" /><O C="14" Y="27" P="0" X="1650" /><O C="14" Y="54" X="1650" P="0" /><O C="14" Y="80" P="0" X="1650" /><O C="14" Y="106" X="1650" P="0" /><O C="14" Y="129" P="0" X="1650" /><O C="14" Y="145" X="1676" P="0" /><O C="14" Y="145" P="0" X="1625" /><O C="14" Y="164" P="0" X="1689" /><O C="14" Y="164" X="1610" P="0" /></O></Z></C>')
tfm.exec.setUIMapName("<VP>Kraliyet<bl> - <VP>Night Club")


elseif event=="ç" then
tfm.exec.newGame([[<C><P D="x_bateaupirate.png" /><Z><S><S D="x_evenements/x_fondHalloweenMap2.jpg" L="804" H="211" X="401" Y="490" T="0" P="0,0,0.3,0.2,0,0,0,0" /></S><D><DS Y="369" X="25" /></D><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Çizim Korsaný<bl> - <VP>Night Club")







------------NEKODANCER

elseif event=="nd1" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_1.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 1 - <VP>Night Club")  


elseif event=="nd2" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_2.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 2 - <VP>Night Club")  


elseif event=="nd3" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_3.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 3 - <VP>Night Club")  


elseif event=="nd4" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_4.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]]) 
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 4 - <VP>Night Club")  


elseif event=="nd5" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_5.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 5 - <VP>Night Club")  


elseif event=="nd6" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_6.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 6 - <VP>Night Club")  


elseif event=="nd7" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_7.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 7- <VP>Night Club")  


elseif event=="nd8" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_8.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 8 - <VP>Night Club")  


elseif event=="nd9" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_9.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 9- <VP>Night Club")  


elseif event=="nd10" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_10.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 10 - <VP>Night Club")  


elseif event=="nd11" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_11.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 11 - <VP>Night Club")  


elseif event=="nd12" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_12.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 12 - <VP>Night Club")  


elseif event=="nd13" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_13.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 13 - <VP>Night Club")  


elseif event=="nd14" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_14.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 14 - <VP>Night Club")  


elseif event=="nd15" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_15.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 15 - <VP>Night Club")  


elseif event=="nd16" then
tfm.exec.newGame([[<C><P D="x_nekodancer/x_mondes/x_16.jpg" /><Z><S><S m="" X="404" H="130" Y="421" T="0" P="0,0,0.3,0.2,0,0,0,0" L="800" /></S><D /><O /></Z></C>]])
tfm.exec.setUIMapName("<VP>Nekodancer Odasý 16 - <VP>Night Club")  





----------------------------Spor


--@7439560 
elseif event=="sp1" then
tfm.exec.newGame('@7439560')
tfm.exec.setUIMapName("<R>Kornerli Futbol<bl> - <VP>Night Club")


--@6094454 
elseif event=="sp2" then
tfm.exec.newGame('@6094454')
tfm.exec.setUIMapName("<R>Uzun Futbol Sahasý<bl> - <VP>Night Club")


--@7435327 
elseif event=="sp3" then
tfm.exec.newGame('@7435327')
tfm.exec.setUIMapName("<R>Kýsa Futbol Sahasý<bl> - <VP>Night Club")


--@7421732 
elseif event=="sp4" then
tfm.exec.newGame('@7421732')
tfm.exec.setUIMapName("<R>Çimenli Futbol Sahasý<bl> - <VP>Night Club")


--@7344534 
elseif event=="sp5" then
tfm.exec.newGame('@7344534')
tfm.exec.setUIMapName("<R>Küplü Futbol<bl> - <VP>Night Club")


--@7341903 
elseif event=="sp6" then
tfm.exec.newGame('@7341903')
tfm.exec.setUIMapName("<R>Kýsa 3D Futbol<bl> - <VP>Night Club")


--@7214744 
elseif event=="sp7" then
tfm.exec.newGame('@7214744')
tfm.exec.setUIMapName("<R>Kýrmýzý Orjinal Top<bl> - <VP>Night Club")


--@6852807 
elseif event=="sp8" then
tfm.exec.newGame('@6852807')
tfm.exec.setUIMapName("<R>Orta Sahalý Futbol<bl> - <VP>Night Club")


--@6479740 
elseif event=="sp9" then
tfm.exec.newGame('@6479740')
tfm.exec.setUIMapName("<R>NC Futbol Stadyumubl> - <VP>Night Club")


--@5329373 
elseif event=="sp10" then
tfm.exec.newGame('@5329373')
tfm.exec.setUIMapName("<R>NC Futbol Stadyumu (2)<bl> - <VP>Night Club")


--@7363570 
elseif event=="sp11" then
tfm.exec.newGame('@7363570')
tfm.exec.setUIMapName("<R>Büyük 3D Basketbol<bl> - <VP>Night Club")


--@6846365 
elseif event=="sp12" then
tfm.exec.newGame('@6846365')
tfm.exec.setUIMapName("<R>Orjinal Toplu Basket<bl> - <VP>Night Club")


--@5310834 
elseif event=="sp13" then
tfm.exec.newGame('@5310834')
tfm.exec.setUIMapName("<R>3D Turuncu Modül Basketbolu<bl> - <VP>Night Club")


--@7355473 
elseif event=="sp14" then
tfm.exec.newGame('@7355473')
tfm.exec.setUIMapName("<R>3D Mavi Modül Basketbolu<bl> - <VP>Night Club")


--@5247763 
elseif event=="sp15" then
tfm.exec.newGame('@5247763')
tfm.exec.setUIMapName("<R>Plaj Voleybolu<bl> - <VP>Night Club")


--@7390012 
elseif event=="sp16" then
tfm.exec.newGame('<C><P G="0,0" L="1600" /><Z><S><S H="10" L="230" o="0" X="200" c="4" Y="200" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="200" o="8e8e8e" X="200" c="4" Y="200" T="13" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="230" o="0" X="1400" c="4" Y="200" T="13" H="10" /><S H="10" L="200" o="8e8e8e" X="1400" c="4" Y="200" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S H="400" L="1200" o="8e8e8e" X="800" c="4" Y="200" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="180" o="ffffff" X="251" c="4" Y="200" T="13" H="10" /><S P="0,0,0,0.3,0,0,0,0" L="1600" o="8e8e8e" X="800" c="1" Y="399" T="12" m="" H="10" /><S H="10" L="1600" o="8e8e8e" X="813" c="1" Y="6" T="12" m="" P="0,0,0,0.3,0,0,0,0" /><S H="10" L="200" o="8e8e8e" X="56" c="1" Y="345" T="12" m="" P="0,0,0,0,50,0,0,0" /><S P="0,0,0,0,30,0,0,0" L="200" o="8e8e8e" X="96" c="1" Y="373" T="12" m="" H="10" /><S H="10" L="200" o="8e8e8e" X="-5" c="1" Y="225" T="12" m="" P="0,0,0,0,70,0,0,0" /><S P="0,0,0,0,100,0,0,0" L="200" o="8e8e8e" X="6" c="1" Y="152" T="12" m="" H="10" /><S H="10" L="200" o="8e8e8e" X="56" c="1" Y="65" T="12" m="" P="0,0,0,0,140,0,0,0" /><S P="0,0,0,0,-140,0,0,0" L="200" o="8e8e8e" X="1544" c="1" Y="65" T="12" m="" H="10" /><S H="10" L="200" o="8e8e8e" X="1594" c="1" Y="152" T="12" m="" P="0,0,0,0,-100,0,0,0" /><S P="0,0,0,0,-70,0,0,0" L="200" o="8e8e8e" X="1605" c="1" Y="225" T="12" m="" H="10" /><S P="0,0,0,0,-50,0,0,0" L="200" o="8e8e8e" X="1546" c="1" Y="345" T="12" m="" H="10" /><S H="10" L="200" o="8e8e8e" X="1496" c="1" Y="373" T="12" m="" P="0,0,0,0,-30,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="110" o="ffffff" X="800" c="4" Y="200" T="13" H="10" /><S H="10" L="100" o="8e8e8e" X="800" c="4" Y="200" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S H="10" L="15" o="ffffff" X="800" c="4" Y="200" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="ffffff" X="800" c="4" Y="200" T="12" H="400" /><S H="10" L="180" o="8e8e8e" X="232" c="4" Y="200" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="ffffff" X="250" c="4" Y="199" T="12" H="362" /><S P="0,0,0,0,0,0,0,0" L="90" o="811a3a" X="200" Y="140" T="12" H="10" /><S L="90" o="811a3a" X="200" H="10" Y="260" T="12" P="0,0,0,0,0,0,0,0" /><S P="0,0,0,0,-90,0,0,0" L="130" o="811a3a" H="10" Y="200" T="12" X="160" /><S H="10" L="180" o="ffffff" X="1349" c="4" Y="200" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="180" o="8e8e8e" X="1368" c="4" Y="200" T="13" H="10" /><S H="362" L="10" o="ffffff" X="1350" c="4" Y="199" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0,0,0,0,0,0" L="90" o="1f1981" H="10" Y="260" T="12" X="1400" /><S L="90" o="1f1981" X="1400" H="10" Y="140" T="12" P="0,0,0,0,0,0,0,0" /><S L="130" o="1f1981" H="10" X="1440" Y="200" T="12" P="0,0,0,0,-90,0,0,0" /><S P="1,3,1,0.7,0,0,0,0" L="10" o="84b0e" X="800" c="1" Y="200" T="13" H="10" /><S P="0,0,0,0,0,0,0,0" L="1600" o="6a7495" X="800" c="4" Y="-50" T="12" H="100" /><S H="100" L="1600" o="6a7495" X="800" c="4" Y="450" T="12" P="0,0,0,0,0,0,0,0" /></S><D><DS Y="380" X="800" /></D><O /></Z></C>')
tfm.exec.setUIMapName("<R>Buz Hokeyi<bl> - <VP>Night Club")


--@5244282 
elseif event=="sp17" then
tfm.exec.newGame('@5244282')
tfm.exec.setUIMapName("<R>Su Topu<bl> - <VP>Night Club")




--------------------------------------Ev


--@7434978
elseif event=="ev1" then
tfm.exec.newGame('@7434978')
tfm.exec.setUIMapName("<R>Büyük Lüküs Ev<bl> - <VP>Night Club")


--@7434976 
elseif event=="Ev2" then
tfm.exec.newGame('@7434976')
tfm.exec.setUIMapName("<R>Þömineli Ev<bl> - <VP>Night Club")


--@7434972 
elseif event=="ev3" then
tfm.exec.newGame('@7434972')
tfm.exec.setUIMapName("<R>Köprülü Ev<bl> - <VP>Night Club")


--@7434971 
elseif event=="ev4" then
tfm.exec.newGame('@7434971')
tfm.exec.setUIMapName("<R>Teleferikli Kýþ Evi<bl> - <VP>Night Club")


--@7349546 
elseif event=="ev5" then
tfm.exec.newGame('@7349546')
tfm.exec.setUIMapName("<R>Doða Manzaralý Ev<bl> - <VP>Night Club")


--@7345593 
elseif event=="ev6" then
tfm.exec.newGame('@7345593')
tfm.exec.setUIMapName("<R>Lacivert- Siyah Ev<bl> - <VP>Night Club")


--@7345587 
elseif event=="ev7" then
tfm.exec.newGame('@7345587')
tfm.exec.setUIMapName("<R>Araba Yarýþlý Büyük Ev<bl> - <VP>Night Club")


--@7345583 
elseif event=="ev8" then
tfm.exec.newGame('@7345583')
tfm.exec.setUIMapName("<R>Gerçek Asansörlü Ev<bl> - <VP>Night Club")


--@7345564 
elseif event=="ev9" then
tfm.exec.newGame('@7345564')
tfm.exec.setUIMapName("<R>Kristal Avizeli Ev<bl> - <VP>Night Club")


--@7344602 
elseif event=="ev10" then
tfm.exec.newGame('@7344602')
tfm.exec.setUIMapName("<R>Þelaleli Aðaç Ev<bl> - <VP>Night Club")


--@7345581 
elseif event=="ev11" then
tfm.exec.newGame('@7345581')
tfm.exec.setUIMapName("<R>Modern Ev<bl> - <VP>Night Club")


--@7344594 
elseif event=="ev112" then
tfm.exec.newGame('@7344594')
tfm.exec.setUIMapName("<R>Doða Manzaralý Lüks Ev<bl> - <VP>Night Club")



--@7181086 
elseif event=="ev13" then
tfm.exec.newGame('@7181086')
tfm.exec.setUIMapName("<R>Çin Evi<bl> - <VP>Night Club")


--@7177722 
elseif event=="ev14" then
tfm.exec.newGame('@7177722')
tfm.exec.setUIMapName("<R>Doða Manzaralý Büyük Ev<bl> - <VP>Night Club")


--@7176720 
elseif event=="ev15" then
tfm.exec.newGame('@7176720')
tfm.exec.setUIMapName("<R>Uzay Evi<bl> - <VP>Night Club")


--@7162536 
elseif event=="ev16" then
tfm.exec.newGame('@7162536')
tfm.exec.setUIMapName("<R>Aðaç Ev<bl> - <VP>Night Club")


--@7162530 
elseif event=="ev17" then
tfm.exec.newGame('@7162530')
tfm.exec.setUIMapName("<R>Disko Efektli Çok Odalý Ev<bl> - <VP>Night Club")


--@7029315 
elseif event=="ev18" then
tfm.exec.newGame('@7029315')
tfm.exec.setUIMapName("<R>Gemi Ev<bl> - <VP>Night Club")


--@7022366 
elseif event=="ev19" then
tfm.exec.newGame('@7022366')
tfm.exec.setUIMapName("<R>Ahþap Ev<bl> - <VP>Night Club")


--@6839905 
elseif event=="ev20" then
tfm.exec.newGame('@6839905')
tfm.exec.setUIMapName("<R>Nehir Kenarýnda Ev<bl> - <VP>Night Club")


--@6776472 
elseif event=="ev21" then
tfm.exec.newGame('@6776472')
tfm.exec.setUIMapName("<R>Kiraz Aðaçlý Ev<bl> - <VP>Night Club")


--@6766211 
elseif event=="ev22" then
tfm.exec.newGame('@6766211')
tfm.exec.setUIMapName("<R>Disko Efektli Ev<bl> - <VP>Night Club")


--@6758819  
elseif event=="ev23" then
tfm.exec.newGame('@6758819')
tfm.exec.setUIMapName("<R>Uzakdoðu Evi<bl> - <VP>Night Club")


--@6505915 
elseif event=="ev24" then
tfm.exec.newGame('@6505915')
tfm.exec.setUIMapName("<R>Iþýnlanma Geçitli Ev<bl> - <VP>Night Club")


--@6120508 
elseif event=="ev25" then
tfm.exec.newGame('@6120508')
tfm.exec.setUIMapName("<R>Romantik Bahçeli Ev<bl> - <VP>Night Club")


--@6092667 
elseif event=="ev26" then
tfm.exec.newGame('@6092667')
tfm.exec.setUIMapName("<R>Kýrmýzýlý Büyük Ev<bl> - <VP>Night Club")



--@6108643 
elseif event=="ev27" then
tfm.exec.newGame('@6108643')
tfm.exec.setUIMapName("<R>2 Aslan Efektli Ev<bl> - <VP>Night Club")


--@5423722 
elseif event=="ev28" then
tfm.exec.newGame('@5423722')
tfm.exec.setUIMapName("<R>Büyük Dað Manzaralý Ev<bl> - <VP>Night Club")


--@5320463 
elseif event=="ev29" then
tfm.exec.newGame('@5320463')
tfm.exec.setUIMapName("<R>Kuyulu Aðaç Ev<bl> - <VP>Night Club")


--@5310835 
elseif event=="ev30" then
tfm.exec.newGame('@5310835')
tfm.exec.setUIMapName("<R>Plaj Evi<bl> - <VP>Night Club")


--@5304575 
elseif event=="ev31" then
tfm.exec.newGame('@5304575')
tfm.exec.setUIMapName("<R>Su Kaydýraklý Ev<bl> - <VP>Night Club")


--@5304389 
elseif event=="ev32" then
tfm.exec.newGame('@5304389')
tfm.exec.setUIMapName("<R>Çizimli Aðaç Ev<bl> - <VP>Night Club")


--@5291556 
elseif event=="ev33" then
tfm.exec.newGame('@5291556')
tfm.exec.setUIMapName("<R>Uzakdoðu Dövüþ Evi<bl> - <VP>Night Club")


--@5281004
elseif event=="ev34" then
tfm.exec.newGame('@5281004')
tfm.exec.setUIMapName("<R>Neon Ev<bl> - <VP>Night Club")




--@5249716
elseif event=="ev35" then
tfm.exec.newGame('@5249716')
tfm.exec.setUIMapName("<R>Büyük Havuzlu Ev<bl> - <VP>Night Club")


--@5248564
elseif event=="ev36" then
tfm.exec.newGame('@5248564')
tfm.exec.setUIMapName("<R>Korku Efektli Ev<bl> - <VP>Night Club")


--@5244767
elseif event=="ev37" then
tfm.exec.newGame('@5244767')
tfm.exec.setUIMapName("<R>Renkli Ev<bl> - <VP>Night Club")


--@5229838
elseif event=="ev38" then
tfm.exec.newGame('@5229838')
tfm.exec.setUIMapName("<R>Gizli Üslü Kýþ Evi<bl> - <VP>Night Club")


--@5187327
elseif event=="ev39" then
tfm.exec.newGame('@5187327')
tfm.exec.setUIMapName("<R>Merdivenli Küçük Ev<bl> - <VP>Night Club")


--@5180570
elseif event=="ev40" then
tfm.exec.newGame('@5180570')
tfm.exec.setUIMapName("<R>Ahþap Ev<bl> - <VP>Night Club")


--@5185097
elseif event=="ev41" then
tfm.exec.newGame('@5185097')
tfm.exec.setUIMapName("<R>Helikopterli Ev<bl> - <VP>Night Club")



-----------------------Ýþ - Eðlence


--
elseif event=="iþ1" then
tfm.exec.newGame('@7442331')
tfm.exec.setUIMapName("<R>Lunapark<bl> - <VP>Night Club")


--
elseif event=="iþ2" then
tfm.exec.newGame('@7352446')
tfm.exec.setUIMapName("<R>Büyük Disco<bl> - <VP>Night Club")


--
elseif event=="iþ3" then
tfm.exec.newGame('@7345599')
tfm.exec.setUIMapName("<R>Mavi - Beyaz Cafe<bl> - <VP>Night Club")


--
elseif event=="iþ4" then
tfm.exec.newGame('@7345559')
tfm.exec.setUIMapName("<R>Spor Salonu<bl> - <VP>Night Club")


--
elseif event=="iþ5" then
tfm.exec.newGame('@7345552')
tfm.exec.setUIMapName("<R>Kumsal Partisi<bl> - <VP>Night Club")


--
elseif event=="iþ6" then
tfm.exec.newGame('@7344585')
tfm.exec.setUIMapName("<R>Kale<bl> - <VP>Night Club")


--
elseif event=="iþ7" then
tfm.exec.newGame('@7344584')
tfm.exec.setUIMapName("<R>Plaj Cafe<bl> - <VP>Night Club")


--
elseif event=="iþ8" then
tfm.exec.newGame('@7344581')
tfm.exec.setUIMapName("<R>Atlantis<bl> - <VP>Night Club")


--
elseif event=="iþ9" then
tfm.exec.newGame('@7344565')
tfm.exec.setUIMapName("<R>Uzay Üssü<bl> - <VP>Night Club")


--
elseif event=="iþ10" then
tfm.exec.newGame('@7178985')
tfm.exec.setUIMapName("<R>Okul<bl> - <VP>Night Club")


--
elseif event=="iþ11" then
tfm.exec.newGame('@7343505')
tfm.exec.setUIMapName("<R>Merdivenli Ev<bl> - <VP>Night Club")


--
elseif event=="iþ12" then
tfm.exec.newGame('@7342499')
tfm.exec.setUIMapName("<R>Sinema Salonu<bl> - <VP>Night Club")


--
elseif event=="iþ13" then
tfm.exec.newGame('@7176822')
tfm.exec.setUIMapName("<R>Çizimli Sinema<bl> - <VP>Night Club")


--
elseif event=="iþ14" then
tfm.exec.newGame('@7176674')
tfm.exec.setUIMapName("<R>Bar Disco<bl> - <VP>Night Club")


--
elseif event=="iþ15" then
tfm.exec.newGame('@7011149')
tfm.exec.setUIMapName("<R>Holding<bl> - <VP>Night Club")


--
elseif event=="iþ16" then
tfm.exec.newGame('@6863119')
tfm.exec.setUIMapName("<R>DJ'yli Disco<bl> - <VP>Night Club")


--
elseif event=="iþ17" then
tfm.exec.newGame('@6860623')
tfm.exec.setUIMapName("<R>Renkli Disco<bl> - <VP>Night Club")


--
elseif event=="iþ18" then
tfm.exec.newGame('@6854016')
tfm.exec.setUIMapName("<R>Yeþil Sinema<bl> - <VP>Night Club")


--
elseif event=="iþ19" then
tfm.exec.newGame('@6844458')
tfm.exec.setUIMapName("<R>Hastane<bl> - <VP>Night Club")


--
elseif event=="iþ20" then
tfm.exec.newGame('@6844430')
tfm.exec.setUIMapName("<R>Cadýlar Bayramý Sinemasý<bl> - <VP>Night Club")


--
elseif event=="iþ21" then
tfm.exec.newGame('@6766216')
tfm.exec.setUIMapName("<R>Hastane<bl> - <VP>Night Club")


--
elseif event=="iþ22" then
tfm.exec.newGame('@6761999')
tfm.exec.setUIMapName("<R>Evlilik Dairesi<bl> - <VP>Night Club")


--
elseif event=="iþ23" then
tfm.exec.newGame('@6741730')
tfm.exec.setUIMapName("<R>Çift Katlý Sinema<bl> - <VP>Night Club")


--
elseif event=="iþ24" then
tfm.exec.newGame('@6558945')
tfm.exec.setUIMapName("<R>Toplu Sinema<bl> - <VP>Night Club")


--
elseif event=="iþ25" then
tfm.exec.newGame('@6505753')
tfm.exec.setUIMapName("<R>AVM<bl> - <VP>Night Club")


--
elseif event=="iþ26" then
tfm.exec.newGame('@6106335')
tfm.exec.setUIMapName("<R>Asansörlü Otel<bl> - <VP>Night Club")


--
elseif event=="iþ27" then
tfm.exec.newGame('@6094251')
tfm.exec.setUIMapName("<R>Sinemalý Cafe<bl> - <VP>Night Club")


--
elseif event=="iþ28" then
tfm.exec.newGame('@6093955')
tfm.exec.setUIMapName("<R>DJ'yli Disco<bl> - <VP>Night Club")


--
elseif event=="iþ29" then
tfm.exec.newGame('@5705805')
tfm.exec.setUIMapName("<R>Biletli Sinema<bl> - <VP>Night Club")


--
elseif event=="iþ30" then
tfm.exec.newGame('@5327630')
tfm.exec.setUIMapName("<R>NC Otel<bl> - <VP>Night Club")


--
elseif event=="iþ31" then
tfm.exec.newGame('@5312387')
tfm.exec.setUIMapName("<R>Barlý Disco<bl> - <VP>Night Club")


--
elseif event=="iþ32" then
tfm.exec.newGame('@5311993')
tfm.exec.setUIMapName("<R>Bar<bl> - <VP>Night Club")


--
elseif event=="iþ33" then
tfm.exec.newGame('@5308276')
tfm.exec.setUIMapName("<R>Aðaç Evli Mangal<bl> - <VP>Night Club")


--
elseif event=="iþ34" then
tfm.exec.newGame('@5191483')
tfm.exec.setUIMapName("<R>Kaykay Pist<bl> - <VP>Night Club")


--
elseif event=="iþ35" then
tfm.exec.newGame('@5187685')
tfm.exec.setUIMapName("<R>Su Parký<bl> - <VP>Night Club")


--
elseif event=="iþ36" then
tfm.exec.newGame('@5180298')
tfm.exec.setUIMapName("<R>Okul<bl> - <VP>Night Club")




-------------Çizim


--@7346764 
elseif event=="çiz1" then
tfm.exec.newGame('@7346764')
tfm.exec.setUIMapName("<R>Tank<bl> - <VP>Night Club")


--@7345604
elseif event=="çiz2" then
tfm.exec.newGame('@7345604')
tfm.exec.setUIMapName("<R>Konser<bl> - <VP>Night Club")


--@7345578
elseif event=="çiz3" then
tfm.exec.newGame('@7345578')
tfm.exec.setUIMapName("<R>Uzay Gemisi<bl> - <VP>Night Club")


--@7345575
elseif event=="çiz4" then
tfm.exec.newGame('@7345575')
tfm.exec.setUIMapName("<R>Piknik<bl> - <VP>Night Club")


--@7345546
elseif event=="çiz5" then
tfm.exec.newGame('@7345546')
tfm.exec.setUIMapName("<R>Yanardað<bl> - <VP>Night Club")


--@7342488
elseif event=="çiz8" then
tfm.exec.newGame('@7342488')
tfm.exec.setUIMapName("<R>Atatürk<bl> - <VP>Night Club")


--@7247094
elseif event=="çiz9" then
tfm.exec.newGame('@7247094')
tfm.exec.setUIMapName("<R>Türk Bayraðý<bl> - <VP>Night Club")


---@7200057
elseif event=="çiz10" then
tfm.exec.newGame('@7200057')
tfm.exec.setUIMapName("<R>Laðam<bl> - <VP>Night Club")


--@7179785
elseif event=="çiz11" then
tfm.exec.newGame('@7179785')
tfm.exec.setUIMapName("<R>Tank<bl> - <VP>Night Club")


--@7180041
elseif event=="çiz12" then
tfm.exec.newGame('@7180041')
tfm.exec.setUIMapName("<R>Korsan Gemili Issýz Ada<bl> - <VP>Night Club")


--@7195811
elseif event=="çiz13" then
tfm.exec.newGame('@7195811')
tfm.exec.setUIMapName("<R>Maymun<bl> - <VP>Night Club")


--@7179060
elseif event=="çiz14" then
tfm.exec.newGame('@7179060')
tfm.exec.setUIMapName("<R>Köpek<bl> - <VP>Night Club")


--@7179433
elseif event=="çiz15" then
tfm.exec.newGame('@7179433')
tfm.exec.setUIMapName("<R>DM Çöl<bl> - <VP>Night Club")


--@7179421
elseif event=="çiz16" then
tfm.exec.newGame('@7179421')
tfm.exec.setUIMapName("<R>DM Bogeda Bay<bl> - <VP>Night Club")


--@7179422
elseif event=="çiz17" then
tfm.exec.newGame('@7179422')
tfm.exec.setUIMapName("<R>DM Yanan Þehir<bl> - <VP>Night Club")


--@7179809
elseif event=="çiz18" then
tfm.exec.newGame('@7179809')
tfm.exec.setUIMapName("<R>DM Yanan Þehir (2)<bl> - <VP>Night Club")


--@5304128
elseif event=="çiz19" then
tfm.exec.newGame('@5304128')
tfm.exec.setUIMapName("<R>DM Ýtemli Kamp<bl> - <VP>Night Club")


--@6108168
elseif event=="çiz20" then
tfm.exec.newGame('@6108168')
tfm.exec.setUIMapName("<R>DM Kamp Alaný<bl> - <VP>Night Club")


--@7177734
elseif event=="çiz21" then
tfm.exec.newGame('@7177734')
tfm.exec.setUIMapName("<R>Bulut Sinemasý<bl> - <VP>Night Club")


--@7163798
elseif event=="çiz22" then
tfm.exec.newGame('@7163798')
tfm.exec.setUIMapName("<R>Hamster Topu<bl> - <VP>Night Club")


--@7162542
elseif event=="çiz23" then
tfm.exec.newGame('@7162542')
tfm.exec.setUIMapName("<R>Ýnternet Kafe<bl> - <VP>Night Club")


--@7162527
elseif event=="çiz24" then
tfm.exec.newGame('@7162527')
tfm.exec.setUIMapName("<R>Noel Baba Evi<bl> - <VP>Night Club")


--@7013631
elseif event=="çiz25" then
tfm.exec.newGame('@7013631')
tfm.exec.setUIMapName("<R>Cadýlar Bayramý<bl> - <VP>Night Club")


--@6983081
elseif event=="çiz26" then
tfm.exec.newGame('@6983081')
tfm.exec.setUIMapName("<R>Kamp<bl> - <VP>Night Club")


--@6872912
elseif event=="çiz27" then
tfm.exec.newGame('@6872912')
tfm.exec.setUIMapName("<R>Ateþ Ve Su<bl> - <VP>Night Club")


--@6863422
elseif event=="çiz28" then
tfm.exec.newGame('@6863422')
tfm.exec.setUIMapName("<R>Radyoaktif Bölge<bl> - <VP>Night Club")


--@6862835
elseif event=="çiz29" then
tfm.exec.newGame('@6862835')
tfm.exec.setUIMapName("<R>Gökbilim Evi<bl> - <VP>Night Club")


--@6860675
elseif event=="çiz30" then
tfm.exec.newGame('@6860675')
tfm.exec.setUIMapName("<R>Basketbol Stadyumu<bl> - <VP>Night Club")


--@6860490
elseif event=="çiz31" then
tfm.exec.newGame('@6860490')
tfm.exec.setUIMapName("<R>Zindan<bl> - <VP>Night Club")


--@6849098
elseif event=="çiz32" then
tfm.exec.newGame('@6849098')
tfm.exec.setUIMapName("<R>Romantik Bahçe<bl> - <VP>Night Club")


--@6849097
elseif event=="çiz33" then
tfm.exec.newGame('@6849097')
tfm.exec.setUIMapName("<R>Savaþ Alaný<bl> - <VP>Night Club")


--@6847661
elseif event=="çiz34" then
tfm.exec.newGame('@6847661')
tfm.exec.setUIMapName("<R>Cadý Evi<bl> - <VP>Night Club")


--@6845623
elseif event=="çiz35" then
tfm.exec.newGame('@6845623')
tfm.exec.setUIMapName("<R>Þelaleli Sinema<bl> - <VP>Night Club")


--@6844733
elseif event=="çiz36" then
tfm.exec.newGame('@6844733')
tfm.exec.setUIMapName("<R>Havuzlu Villa<bl> - <VP>Night Club")



--@6842166
elseif event=="çiz37" then
tfm.exec.newGame('@6842166')
tfm.exec.setUIMapName("<R>Þelale<bl> - <VP>Night Club")


--@6842054
elseif event=="çiz38" then
tfm.exec.newGame('@6842054')
tfm.exec.setUIMapName("<R>Sýcak Hava Balonu<bl> - <VP>Night Club")


--@6841965
elseif event=="çiz39" then
tfm.exec.newGame('@6841965')
tfm.exec.setUIMapName("<R>Büyük Yat<bl> - <VP>Night Club")


--@6841948
elseif event=="çiz40" then
tfm.exec.newGame('@6841948')
tfm.exec.setUIMapName("<R>Küçük Yat<bl> - <VP>Night Club")


--@6841947
elseif event=="çiz41" then
tfm.exec.newGame('@6841947')
tfm.exec.setUIMapName("<R>Roket<bl> - <VP>Night Club")


--@6831613
elseif event=="çiz42" then
tfm.exec.newGame('@6831613')
tfm.exec.setUIMapName("<R>Korku Efektli Balon<bl> - <VP>Night Club")


--@6776156
elseif event=="çiz43" then
tfm.exec.newGame('@6776156')
tfm.exec.setUIMapName("<R>Köprülü Bahçe<bl> - <VP>Night Club")


--@6774967
elseif event=="çiz44" then
tfm.exec.newGame('@6774967')
tfm.exec.setUIMapName("<R>Korsan Gemisi<bl> - <VP>Night Club")


--@6767492
elseif event=="çiz45" then
tfm.exec.newGame('@6767492')
tfm.exec.setUIMapName("<R>Kamp Ateþi Festivalý<bl> - <VP>Night Club")


--@6767392
elseif event=="çiz46" then
tfm.exec.newGame('@6767392')
tfm.exec.setUIMapName("<R>Ayý Parký<bl> - <VP>Night Club")


--@6303395
elseif event=="çiz47" then
tfm.exec.newGame('@6303395')
tfm.exec.setUIMapName("<R>Tren<bl> - <VP>Night Club")


--@6303372
elseif event=="çiz48" then
tfm.exec.newGame('@6303372')
tfm.exec.setUIMapName("<R>Zeplin<bl> - <VP>Night Club")


--@6127825
elseif event=="çiz49" then
tfm.exec.newGame('@6127825')
tfm.exec.setUIMapName("<R>Hýz Treni<bl> - <VP>Night Club")


--@6109418
elseif event=="çiz50" then
tfm.exec.newGame('@6109418')
tfm.exec.setUIMapName("<R>Gemi<bl> - <VP>Night Club")


--@6108434
elseif event=="çiz51" then
tfm.exec.newGame('@6108434')
tfm.exec.setUIMapName("<R>Füze<bl> - <VP>Night Club")


--@6094419
elseif event=="çiz52" then
tfm.exec.newGame('@6094419')
tfm.exec.setUIMapName("<R>Gizli Üslü Kamp<bl> - <VP>Night Club")


--@6848322
elseif event=="çiz53" then
tfm.exec.newGame('@6848322')
tfm.exec.setUIMapName("<R>Korku Efektli Sinema<bl> - <VP>Night Club")


--@6848321
elseif event=="çiz54" then
tfm.exec.newGame('@6848321')
tfm.exec.setUIMapName("<R>Kaykay Yarýþý<bl> - <VP>Night Club")


--@5312457
elseif event=="çiz55" then
tfm.exec.newGame('@5312457')
tfm.exec.setUIMapName("<R>Korku Bahçesi<bl> - <VP>Night Club")


--@5293810 
elseif event=="çiz56" then
tfm.exec.newGame('@5293810')
tfm.exec.setUIMapName("<R>Kýþ Evi<bl> - <VP>Night Club")


--@5281014
elseif event=="çiz57" then
tfm.exec.newGame('@5281014')
tfm.exec.setUIMapName("<R>TFM Uçaðý<bl> - <VP>Night Club")


--@5249521
elseif event=="çiz58" then
tfm.exec.newGame('@5249521')
tfm.exec.setUIMapName("<R>Balýkçý Gemisi<bl> - <VP>Night Club")


--@5280993
elseif event=="çiz59" then
tfm.exec.newGame('@5280993')
tfm.exec.setUIMapName("<R>Korsan Gemisi<bl> - <VP>Night Club")


--@5229898
elseif event=="çiz60" then
tfm.exec.newGame('@5229898')
tfm.exec.setUIMapName("<R>Maðaradaki Ayý<bl> - <VP>Night Club")


--@5187269
elseif event=="çiz61" then
tfm.exec.newGame('@5187269')
tfm.exec.setUIMapName("<R>Eyfel Kulesi<bl> - <VP>Night Club")


--@5184988
elseif event=="çiz62" then
tfm.exec.newGame('@5184988')
tfm.exec.setUIMapName("<R>Kamp<bl> - <VP>Night Club")


--@5184855
elseif event=="çiz63" then
tfm.exec.newGame('@5184855')
tfm.exec.setUIMapName("<R>Romantik Uçan Ada<bl> - <VP>Night Club")


--@5183277
elseif event=="çiz64" then
tfm.exec.newGame('@5183277')
tfm.exec.setUIMapName("<R>Kuðulu Gemi<bl> - <VP>Night Club")


--@5180540
elseif event=="çiz65" then
tfm.exec.newGame('@5180540')
tfm.exec.setUIMapName("<R>Noel Sinemasý<bl> - <VP>Night Club")



--@5180532
elseif event=="çiz66" then
tfm.exec.newGame('@5180532')
tfm.exec.setUIMapName("<R>Deðirmen<bl> - <VP>Night Club")




end
end    
 
function eventTextAreaCallback(id,playerName,event)
        if playerName==tostring(admin) then
                chooseHouse(event)
        end
end