

players={} notices={notice=""}
 

ui.addTextArea(18,"<p align='center'><font face='arial'><a href='event:open'><j><b>Futbol Profili �lk 11-Yedek-Rezervler</a></font></p>",n,350,370,00,18,0x00001,0xEB1D51,0.9,true)
tfm.exec.setUIMapName("<J>Futbol Profili - <CH> Devilstrkpro<g>  |  <n><R>Yapanlar:<n><B><J>Devilstrkpro-Devilstrk")  



function eventTextAreaCallback(id, n, cb)

ui.addTextArea(1,"<p align='center'><a href='event:same'>Sametagdemir</a></p>",n,00,25,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:gebe'>Gelbeniyen</a></p>",n,125,25,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(3,"<p align='center'><a href='event:proc'>Proclimp</a></p>",n,250,25,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:kayra'>Kayramice05</a></p>",n,375,25,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(6,"<p align='center'><a href='event:devil'>Devilstrkpro</a></p>",n,500,25,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(7,"<p align='center'><a href='event:kaan'>Youngthuq</a></p>",n, 625,25,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(8,"<p align='center'><a href='event:murat'>Xdmuratabixd</a></p>",n,00,75,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(9,"<p align='center'><a href='event:umut'>Crazyumuttt</a></p>",n,125,75,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(13,"<p align='center'><a href='event:batu'>Salsalb</a></p>",n,250,75,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(11,"<p align='center'><a href='event:emir'>Drakathof</a></p>",n,375,75,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(12,"<p align='center'><a href='event:yasin'>Falcoyasin</a></p>",n,500,75,00,20,0x00001,0xFC0000,0.9,true)

----------

ui.addTextArea(18,"<p align='center'><a href='event:halay'>Halayyy</a></p>",n,0,125,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(21,"<p align='center'><a href='event:eto'>Etoiliere</a></p>",n,125,125,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(22,"<p align='center'><a href='event:alev'>Alevtank</a></p>",n,250,125,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(23,"<p align='center'><a href='event:bora'>Boraosan</a></p>",n,375,125,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(24,"<p align='center'><a href='event:carm'>Carmenlima</a></p>",n,500,125,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(19,"<p align='center'><a href='event:mega'>Megatuck</a></p>",n,625,125,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(25,"<p align='center'><a href='event:thal'>Thaldr1n</a></p>",n,750,125,00,20,0x000,0xFFFFFF,0.9,true)

--------------------

ui.addTextArea(31,"<p align='center'><a href='event:tüm'>Tüm Futbolcular</a></p>",n,600,225,00,20,0x000,0xFFEF00,0.9,true)
ui.addTextArea(33,"<p align='center'><a href='event:alt'>Alt Yapı</a></p>",n,200,225,00,20,0x000,0xFF000,0.9,true)
ui.addTextArea(34,"<p align='center'><a href='event:yrdm'>?</a></p>",n,00,375,00,20,0x000,0xFFEF00,0.9,true)
ui.addTextArea(35,"<p align='center'><a href='event:numa'>Numaralar</a></p>",n,700,375,00,20,0x000,0xFFEF00,0.9,true)

----------

if cb=="devil" then
ui.addTextArea(3,"<P><R>'><font size='15'>Devilstrkpro - [11]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end



if cb=="same" then
ui.addTextArea(3,"<P><R>'><font size='15'>Sametagdemir - [01]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end




if cb=="gebe" then
ui.addTextArea(3,"<P><R>'><font size='15'>Gelbeniyen - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end



if cb=="proc" then
ui.addTextArea(3,"<P><R>'><font size='15'>Proclimp - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="kayra" then
ui.addTextArea(3,"<P><R>'><font size='15'>Kayramice05 - [12]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="kaan" then
ui.addTextArea(3,"<P><R>'><font size='15'>Youngthuq - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end



if cb=="murat" then
ui.addTextArea(3,"<P><R>'><font size='15'>Xdmuratabixd - [10]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="umut" then
ui.addTextArea(3,"<P><R>'><font size='15'>Crazyumuttt - [31]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="batu" then
ui.addTextArea(3,"<P><R>'><font size='15'>Salsalb - [07]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="emir" then
ui.addTextArea(3,"<P><R>'><font size='15'>Drakathof - [09]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="yasin" then
ui.addTextArea(3,"<P><R>'><font size='15'>Falcoyasin - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="halay" then
ui.addTextArea(3,"<P><R>'><font size='15'>Halayyy - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="eto" then
ui.addTextArea(3,"<P><R>'><font size='15'>Etoiliere - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="alev" then
ui.addTextArea(3,"<P><R>'><font size='15'>Alevtank - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="bora" then
ui.addTextArea(3,"<P><R>'><font size='15'>Boraosan - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="carm" then
ui.addTextArea(3,"<P><R>'><font size='15'>Carmenlima - [05]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="mega" then
ui.addTextArea(3,"<P><R>'><font size='15'>Megatuck - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="thal" then
ui.addTextArea(3,"<P><R>'><font size='15'>Thaldr1n - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 


if cb=="yrdm" then
ui.addTextArea(3,"<P><R>'><font size='15'>\n<J><a href='event:gab'>Öncelikle Kodumuza Hoşgeldiniz...\n<J><a href='event:gb'>Kodumuzun Yapan kişi Devilstrk'dir...\n<J><a href='event:gnb'>Kodumuz Futbol Profilidir,ve takımda bulanların istatistiklerini belirtir...\n<J><a href='event:kap'>Kodumuzda CT(Kaptan) GK(Kaleci) DEF(Defans) MR(Orta Saha) FW(Forvet)'dir\n<J><a href='event:kt'>Kodda dış rengi kırmızı olanlar ilk 11'in oyuncusu,beyaz olanlarda yedek oyuncular,turuncu olanlar rezervler ve sarı olanlarda oyun istatistikleridir...\n<J><a href='event:at'>Her maç profile yansor...</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 



if cb=="numa" then
ui.addTextArea(3,"<P><R>'><font size='15'>Numaralar:\n<R><a href='event:gab'>1-<J><a href='event:gab'>2-<J><a href='event:gab'>3-<J><a href='event:gab'>4-<R><a href='event:gab'>5-<J><a href='event:gab'>6-<R><a href='event:gab'>7-<J><a href='event:gab'>8-<R><a href='event:gab'>9-<R><a href='event:gab'>10-<R><a href='event:gab'>11-<R><a href='event:gab'>12-<J><a href='event:gab'>13-<J><a href='event:gab'>14-<J><a href='event:gab'>15-<J><a href='event:gab'>16-<J><a href='event:gab'>17-<J><a href='event:gab'>18-<J><a href='event:gab'>19-<J><a href='event:gab'>20-<J><a href='event:gab'>21-<J><a href='event:gab'>22-<J><a href='event:gab'>23-<J><a href='event:gab'>24-<J><a href='event:gab'>25-<J><a href='event:gab'>26-<J><a href='event:gab'>27-<J><a href='event:gab'>28-<J><a href='event:gab'>29-<J><a href='event:gab'>30-<R><a href='event:gab'>31-<J><a href='event:gab'>32-<J><a href='event:gab'>33-<J><a href='event:gab'>34-<J><a href='event:gab'>35-<J><a href='event:gab'>36-<J><a href='event:gab'>37-<J><a href='event:gab'>38-<J><a href='event:gab'>39-<J><a href='event:gab'>40-<J><a href='event:gab'>50-<J><a href='event:gab'>51-<J><a href='event:gab'>52-<J><a href='event:gab'>53-<J><a href='event:gab'>54-<J><a href='event:gab'>55-<J><a href='event:gab'>56-<J><a href='event:gab'>57-<J><a href='event:gab'>58-<J><a href='event:gab'>59-<J><a href='event:gab'>60-<J><a href='event:gab'>61-<J><a href='event:gab'>62-<J><a href='event:gab'>63-<J><a href='event:gab'>64-<J><a href='event:gab'>65-<J><a href='event:gab'>66-<J><a href='event:gab'>67-<J><a href='event:gab'>68-<J><a href='event:gab'>69-<J><a href='event:gab'>70-<J><a href='event:gab'>71-<J><a href='event:gab'>72-<J><a href='event:gab'>73-<J><a href='event:gab'>74-<J><a href='event:gab'>75-<J><a href='event:gab'>76-<J><a href='event:gab'>77-<J><a href='event:gab'>78-<J><a href='event:gab'>79</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 

if cb=="tüm" then
ui.addTextArea(3,"<P><R>'><font size='15'>�lk 11                                            Yedekler:\n<J><a ><font size='15'>Sametagdemir[GK]------[01]           Halayyy[GK]------[??]\n<J><a ><font size='15'>Gelbeniyen[DEF]----------[??]           Etoilere[DEF]------[??]\n<J><a ><font size='15'>Proclimp[DEF]------------[??]           Alevtank[DEF]-----[??]\n<J><a ><font size='15'>Kayramice05[DEF]-----[12]             Boraosan[MR]----[??]\n<J><a ><font size='15'>Devilstrkpro[MR]-------[11]            Carmenlima[MR]---[05]\n<J><a ><font size='15'>Youngthuq[MR]----------[??]           Megatuck[FW]-----[??]\n<J><a ><font size='15'>Xdmuratabixd[MR]-----[07]           Thaldr1n[FW]---------[??]\n<J><a ><font size='15'>Crazyumuttt[MR]------[31]\n<J><a ><font size='15'>Salsalb[FW]------------[??]\n<J><a ><font size='15'>Drakathof[FW]---------[09]\n<J><a ><font size='15'>Falcoyasin[MR4]------[??]</font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end
end