
players={} notices={notice=""}
 

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.newGame('@7150755')

ui.addTextArea(18,"<p align='center'><font face='arial'><a href='event:open'><j><b>Night Club Dev Futbol Kadrosu</a></font></p>",n,350,370,00,18,0x00001,0xEB1D51,0.9,true)
tfm.exec.setUIMapName("<VP>Night Club Futbol Tak�m�")  



function eventTextAreaCallback(id, n, cb)

ui.addTextArea(3,"<p align='center'><a href='event:kanar'>Kanaryavegol</a></p>",n,225,75,00,20,0xAF681A,0xFC0000,0.9,true)
ui.addTextArea(4,"<p align='center'><a href='event:kanar'>Kanaryavegol</a></p>",n,225,75,00,20,0xAF681A,0xFC0000,0.9,true)

ui.addTextArea(1,"<p align='center'><a href='event:grav'>Bcciabey</a></p>",n,100,200,00,20,0x565656,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:kanar'>Kanaryavegol</a></p>",n,225,75,00,20,0xAF681A,0xFC0000,0.9,true)
ui.addTextArea(15,"<p align='center'><a href='event:cihat'>Katilsal</a></p>",n,225,325,00,20,0xAF681A,0xFC0000,0.9,true)
ui.addTextArea(16,"<p align='center'><a href='event:devil'>Devilstrkpro</a></p>",n, 400,200,00,20,0x257F1F,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:alper'>Cbaey</a></p>",n,600,325,00,20,0x001CFF,0xFC0000,0.9,true)
ui.addTextArea(6,"<p align='center'><a href='event:emir'>Drakathof</a></p>",n,600,75,00,20,0x001CFF,0xFC0000,0.9,true)



----------

ui.addTextArea(8,"<p align='center'><a href='event:drot'>Drotkol</a></p>",n,730,25,00,20,0x565656,0xFFFFFF,0.9,true)
ui.addTextArea(9,"<p align='center'><a href='event:anıl'>N_u_v</a></p>",n,730,75,00,20,0xAF681A,0xFFFFFF,0.9,true)
ui.addTextArea(10,"<p align='center'><a href='event:emirh'>Emirhan301</a></p>",n,730,125,00,20,0xAF681A,0xFFFFFF,0.9,true)
ui.addTextArea(11,"<p align='center'><a href='event:ali'>Tfmprotr1</a></p>",n,730,175,00,20,0x257F1F,0xFFFFFF,0.9,true)
ui.addTextArea(12,"<p align='center'><a href='event:umut'>Crazyumuttt</a></p>",n,730,225,00,20,0x257F1F,0xFFFFFF,0.9,true)
ui.addTextArea(13,"<p align='center'><a href='event:mons'>Monsblack</a></p>",n,730,275,00,20,0x001CFF,0xFFFFFF,0.9,true)
ui.addTextArea(14,"<p align='center'><a href='event:salca'>Salsalb</a></p>",n,730,325,00,20,0x001CFF,0xFFFFFF,0.9,true)


--------------------

ui.addTextArea(31,"<p align='center'><a href='event:tüm'>Tüm Futbolcular</a></p>",n,50,30,00,20,0x000,0xFFEF00,0.9,true)
ui.addTextArea(33,"<p align='center'><a href='event:alt'>Alt Yapı</a></p>",n,155,30,00,30,0x000,0xFF000,0.9,true)
ui.addTextArea(34,"<p align='center'><a href='event:efsane'>Efsanevi Futbolcular</a></p>",n,210,30,00,20,0x000,0x08A7F7,0.9,true)
ui.addTextArea(35,"<p align='center'><a href='event:yrdm'>?</a></p>",n,00,375,00,20,0x000,0xFFEF00,0.9,true)
ui.addTextArea(36,"<p align='center'><a href='event:numa'>Numaralar</a></p>",n,730,375,00,20,0x000,0xFFEF00,0.9,true)

----------


if cb=="devil" then
ui.addTextArea(3,"<P><R>'><font size='15'>Devilstrkpro - [10]-[C]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end



if cb=="grav" then
ui.addTextArea(3,"<P><R>'><font size='15'>Bcciabey - [01]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end




if cb=="kanar" then
ui.addTextArea(3,"<P><R>'><font size='15'>Kanaryavegol - [05]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end



if cb=="cihat" then
ui.addTextArea(3,"<P><R>'><font size='15'>Katilsal - [04]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="alper" then
ui.addTextArea(3,"<P><R>'><font size='15'>Cbaey - [17]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="emir" then
ui.addTextArea(3,"<P><R>'><font size='15'>Drakathof - [07] - [C2]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end

---------------------------------------------------------------



if cb=="drot" then
ui.addTextArea(3,"<P><R>'><font size='15'>Drotkol - [31]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="anıl" then
ui.addTextArea(3,"<P><R>'><font size='15'>N_u_v- [02]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="emirh" then
ui.addTextArea(3,"<P><R>'><font size='15'>Emirhan301 - [03]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="ali" then
ui.addTextArea(3,"<P><R>'><font size='15'>Tfmprotr1 - [13]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="umut" then
ui.addTextArea(3,"<P><R>'><font size='15'>Crazyumuttt - [08]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 





if cb=="mons" then
ui.addTextArea(3,"<P><R>'><font size='15'>Monsblack - [09]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="salca" then
ui.addTextArea(3,"<P><R>'><font size='15'>Salsalb - [11]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 



---------------------------------------------------------------------



if cb=="alt" then
ui.addTextArea(3,"<P><R>'><font size='15'>Alt Yapı:\n<J><a ><font size='15'>Trencimert              Darkgunner01\n<J><a ><font size='15'>K3r3m19o3            Repalay\n<J><a ><font size='15'>Negion                   Rexteen\n<J><a ><font size='15'>Halayyy                 Alevtank\n<J><a ><font size='15'>Bjkfethi                   Jigera\n<J><a ><font size='15'>Grkkm                    Kajtekoj\n<J><a ><font size='15'>Kayramice05<a ><font size='15'></font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true) 
end 


if cb=="efsane" then
ui.addTextArea(3,"<P><R>'><font size='15'>Takımın Efsanevi Futbolcular:\n<J><a ><font size='15'>Iolumbakgit                   Batuhanpanda\n<J><a ><font size='15'>Gelbeniyen                   Koranbalkes(Proffman)\n<J><a ><font size='15'>Parsik                          Rexoter\n<J><a ><font size='15'>Estonbika                    Ezoturkhose\n<J><a ><font size='15'>Atistiz                        Sametagdemir\n<J><a ><font size='15'>Xxffaarreexx                Y177\n<J><a ><font size='15'>Mivene                        Samihakan\n<J><a ><font size='15'>Oomerss                    Xanclaro\n<J><a ><font size='15'>Dangeraze                 Thaldr1n<font size='15'></font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true) 
end 



if cb=="yrdm" then
ui.addTextArea(3,"<P><R>'><font size='15'> Futbol Profili Yardım Platformu:\n<J><a href='event:gab'>+ Kodumuza hoşgeldiniz...\n<J><a href='event:gb'>+ Kodumuzun yapılma amacı, oyuncularımızın profillerini kayıtta tutmak ve istatistliklerini belirtir...\n<J><a href='event:gnb'>+ Kodumuz futbol profilidir ve takımda bulunanların istatistiklerini belirtir...\n<J><a href='event:kap'>+ Kodumuzda ki bazı kısaltmalar şu şekildedir: C(Kaptan), GK(Kaleci), DEF(Defans), OS(Orta Saha), FW(Forvet)'dir...\n<J><a href='event:kt'>+ Kadroda ve yedeklerde; Kaleci gri renkte, Defanslar turuncu renkte, Orta saha yeşil renkte ve Forvet mavi renktedir...\n<J><a href='event:at'>+ Has kadroda dış rengi kırmızı olanlar 5+1 kadrosunda, beyaz olanlar da yedeklerdedir...\n<J><a href='event:at'>+ Her maç profile yansır...</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 



if cb=="numa" then
ui.addTextArea(3,"<P><R>'><font size='15'>Numaralar:\n<R><a href='event:gab'>1-<R><a href='event:gab'>2-<R><a href='event:gab'>3-<R><a href='event:gab'>4-<R><a href='event:gab'>5-<J><a href='event:gab'>6-<R><a href='event:gab'>7-<R><a href='event:gab'>8-<R><a href='event:gab'>9-<R><a href='event:gab'>10-<R><a href='event:gab'>11-<J><a href='event:gab'>12-<R><a href='event:gab'>13-<J><a href='event:gab'>14-<J><a href='event:gab'>15-<J><a href='event:gab'>16-<R><a href='event:gab'>17-<J><a href='event:gab'>18-<J><a href='event:gab'>19-<J><a href='event:gab'>20-<J><a href='event:gab'>21-<J><a href='event:gab'>22-<J><a href='event:gab'>23-<J><a href='event:gab'>24-<J><a href='event:gab'>25-<J><a href='event:gab'>26-<J><a href='event:gab'>27-<J><a href='event:gab'>28-<J><a href='event:gab'>29-<J><a href='event:gab'>30-<R><a href='event:gab'>31-<J><a href='event:gab'>32-<J><a href='event:gab'>33-<J><a href='event:gab'>34-<J><a href='event:gab'>35-<J><a href='event:gab'>36-<J><a href='event:gab'>37-<J><a href='event:gab'>38-<J><a href='event:gab'>39-<J><a href='event:gab'>40-<J><a href='event:gab'>50-<J><a href='event:gab'>51-<J><a href='event:gab'>52-<J><a href='event:gab'>53-<J><a href='event:gab'>54-<J><a href='event:gab'>55-<J><a href='event:gab'>56-<J><a href='event:gab'>57-<J><a href='event:gab'>58-<J><a href='event:gab'>59-<J><a href='event:gab'>60-<J><a href='event:gab'>61-<J><a href='event:gab'>62-<J><a href='event:gab'>63-<J><a href='event:gab'>64-<J><a href='event:gab'>65-<J><a href='event:gab'>66-<J><a href='event:gab'>67-<J><a href='event:gab'>68-<J><a href='event:gab'>69-<J><a href='event:gab'>70-<J><a href='event:gab'>71-<J><a href='event:gab'>72-<J><a href='event:gab'>73-<J><a href='event:gab'>74-<J><a href='event:gab'>75-<J><a href='event:gab'>76-<J><a href='event:gab'>77-<J><a href='event:gab'>78-<J><a href='event:gab'>79</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 

if cb=="tüm" then
ui.addTextArea(3,"<P><R>'><font size='15'>�lk 5+1                                            Yedekler:\n<J><a ><font size='15'>Bcciabey[GK]------------[01]           Drotkol[GK]----------[31]\n<J><a ><font size='15'>Kanaryavegol[DEF]-----[05]           N_u_v[DEF]----------[02]\n<J><a ><font size='15'>Katilsal[DEF]------------[04]           Emirhan301[DEF]-----[03]\n<J><a ><font size='15'>Devilstrkpro[OS-C]-----[10]             Tfmprotr1[OS]------[13]\n<J><a ><font size='15'>Drakathof[FW-C2]------[07]           Crazyumuttt[OS]----[08]\n<J><a ><font size='15'>Cbaey[MR]--------------[17]            Monsblack[FW]------[09]\n<J><a ><font size='15'>			         			 		  Salsalb[FW]---------[11]</font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)



end
end