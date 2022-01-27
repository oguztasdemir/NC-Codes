players={} notices={notice=""}
 

function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerWon(playerName)
tfm.exec.respawnPlayer(playerName)
end


tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
players={}
toDespawn={}
tfm.exec.newGame('@7150755')

-------------------------------------------------------------------------

-- �lk 6


ui.addTextArea(1,"<p align='center'><a href='event:same'>Sametagdemir</a></p>",n,00,25,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(0,"<p align='center'><a href='event:eto'>Etoiliere</a></p>",n,100,200,00,00,0x565656,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:ertan'>Darkgunner01</a></p>",n,225,75,00,20,0xAF68B,0xFC0000,0.9,true)
ui.addTextArea(4,"<p align='center'><a href='event:batu'>Batuhanpanda</a></p>",n,225,325,00,20,0xAF68B,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:devil'>Devilstrkpro</a></p>",n,400,200,00,20,0x256F,0xFC0000,0.9,true)
ui.addTextArea(6,"<p align='center'><a href='event:sal�a'>Salsalb</a></p>",n,600,325,00,20,0x001CFF,0xFC0000,0.9,true)
ui.addTextArea(7,"<p align='center'><a href='event:emir'>Drakathof</a></p>",n,600,75,00,20,0x001CFF,0xFC0000,0.9,true)

---------------------------------------------------------------------------

-- Yedekler

ui.addTextArea(10,"<p align='center'><a href='event:melih'>Fbkapat</a></p>",n,730,25,00,00,0x565656,0x001CFF,0.9,true)
ui.addTextArea(11,"<p align='center'><a href='event:yusuf'>Theark37</a></p>",n,730,75,00,20,0xAF681,0x001CFF,0.9,true)
ui.addTextArea(12,"<p align='center'><a href='event:emircan'>Bulutcas</a></p>",n,730,125,00,20,0xAF68B,0x001CFF,0.9,true)
ui.addTextArea(13,"<p align='center'><a href='event:umut'>Crazyumuttt</a></p>",n,730,175,00,20,0x256F,0x001CFF,0.9,true)
ui.addTextArea(14,"<p align='center'><a href='event:furkan'>Kajtekoj</a></p>",n,730,225,00,20,0x256F,0x001CFF,0.9,true)
ui.addTextArea(15,"<p align='center'><a href='event:mons'>Monsblack</a></p>",n,730,275,00,20,0x001CFF,0x001CFF,0.9,true)
ui.addTextArea(26,"<p align='center'><a href='event:alper'>Cbaey</a></p>",n,730,325,00,20,0x001CFF,0x001CFF,0.9,true)

--------------------------------------------------------------------------------

-- Sistem Fonksiyonlar�

ui.addTextArea(27,"<p align='center'><a href='event:tüm'>Tüm Futbolcular</a></p>",n,50,30,00,20,0x000,0xFFEF00,0.9,true)

 

-------------------------------------------------------------------------


if cb=="devil" then
ui.addTextArea(3,"<P><R>'><font size='15'>Devilstrkpro - [11]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end



if cb=="same" then
ui.addTextArea(3,"<P><R>'><font size='15'>Sametagdemir - [01]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end




if cb=="gebe" then
ui.addTextArea(3,"<P><R>'><font size='15'>Gelbeniyen - [02]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
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



if cb=="alt" then
ui.addTextArea(3,"<P><R>'><font size='15'>Alt Yap�:\n<J><a ><font size='15'>Trencimert              Gszb\n<J><a ><font size='15'>Kaplanyener            Rexoter\n<J><a ><font size='15'>Mexex07                Darkgunner01\n<J><a ><font size='15'>Grizmann_7           Kanaryavegol\n<J><a ><font size='15'>Kondextr                Ahmetmeteor\n<J><a ><font size='15'>Asdasmerto           Emirhan301\n<J><a ><font size='15'>Fbkapat                  Helinsevis\n<J><a ><font size='15'>Negion                   Asdasmerto<a ><font size='15'></font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true) 
end 


if cb=="gir" then
ui.addTextArea(3,"<P><R>'><font size='15'>Girmeyen Futbolcular:\n<J><a ><font size='15'>Kralpan                   Ezoturkhose\n<J><a ><font size='15'>Gregpeynir             Batuhanpanda\n<J><a ><font size='15'>Xxffaarreexx           Y177\n<J><a ><font size='15'>Mivene                   Samihakan\n<J><a ><font size='15'>Oomerss                Xanclaro\n<J><a ><font size='15'>Dangeraze             Tabelaci<font size='15'></font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true) 
end 



if cb=="yrdm" then
ui.addTextArea(3,"<P><R>'><font size='15'>\n<J><a href='event:gab'>Öncelikle Kodumuza Hoşgeldiniz...\n<J><a href='event:gb'>Kodumuzun Yapan kişi Devilstrk'dir...\n<J><a href='event:gnb'>Kodumuz Futbol Profilidir,ve takımda bulanların istatistiklerini belirtir...\n<J><a href='event:kap'>Kodumuzda CT(Kaptan) GK(Kaleci) DEF(Defans) MR(Orta Saha) FW(Forvet)'dir\n<J><a href='event:kt'>Kodda dış rengi kırmızı olanlar ilk 11'in oyuncusu,beyaz olanlarda yedek oyuncular,turuncu olanlar rezervler ve sarı olanlarda oyun istatistikleridir...\n<J><a href='event:at'>Her maç profile yansor...</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 



if cb=="numa" then
ui.addTextArea(3,"<P><R>'><font size='15'>Numaralar:\n<R><a href='event:gab'>1-<R><a href='event:gab'>2-<J><a href='event:gab'>3-<J><a href='event:gab'>4-<R><a href='event:gab'>5-<J><a href='event:gab'>6-<R><a href='event:gab'>7-<J><a href='event:gab'>8-<R><a href='event:gab'>9-<R><a href='event:gab'>10-<R><a href='event:gab'>11-<R><a href='event:gab'>12-<J><a href='event:gab'>13-<J><a href='event:gab'>14-<J><a href='event:gab'>15-<J><a href='event:gab'>16-<J><a href='event:gab'>17-<J><a href='event:gab'>18-<J><a href='event:gab'>19-<J><a href='event:gab'>20-<J><a href='event:gab'>21-<J><a href='event:gab'>22-<J><a href='event:gab'>23-<J><a href='event:gab'>24-<J><a href='event:gab'>25-<J><a href='event:gab'>26-<J><a href='event:gab'>27-<J><a href='event:gab'>28-<J><a href='event:gab'>29-<J><a href='event:gab'>30-<R><a href='event:gab'>31-<J><a href='event:gab'>32-<J><a href='event:gab'>33-<J><a href='event:gab'>34-<J><a href='event:gab'>35-<J><a href='event:gab'>36-<J><a href='event:gab'>37-<J><a href='event:gab'>38-<J><a href='event:gab'>39-<J><a href='event:gab'>40-<J><a href='event:gab'>50-<J><a href='event:gab'>51-<J><a href='event:gab'>52-<J><a href='event:gab'>53-<J><a href='event:gab'>54-<J><a href='event:gab'>55-<J><a href='event:gab'>56-<J><a href='event:gab'>57-<J><a href='event:gab'>58-<J><a href='event:gab'>59-<J><a href='event:gab'>60-<J><a href='event:gab'>61-<J><a href='event:gab'>62-<J><a href='event:gab'>63-<J><a href='event:gab'>64-<J><a href='event:gab'>65-<J><a href='event:gab'>66-<J><a href='event:gab'>67-<J><a href='event:gab'>68-<J><a href='event:gab'>69-<J><a href='event:gab'>70-<J><a href='event:gab'>71-<J><a href='event:gab'>72-<J><a href='event:gab'>73-<J><a href='event:gab'>74-<J><a href='event:gab'>75-<J><a href='event:gab'>76-<J><a href='event:gab'>77-<J><a href='event:gab'>78-<J><a href='event:gab'>79</font><",n,53,30,700,nil,0,1,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end 

if cb=="tüm" then
ui.addTextArea(3,"<P><R>O<font size='20'>KALEC�LER:\n<J><a ><font size='13'>Aftokki - Drotkol - Etoiliere - Ezoturkhose - Fbkapat - Hqvuc - Icasillas1 - Kanaryavegol - Katilsal - Kondextr - Rexteen - Sametagdemir - Trencimert - Xxffarreexx - Zearo \n<J><a ><P><R>L<font size='20'>DEFANSLAR:\n<J><a ><font size='13'>Afroditerosss - Alevtank - Asdasmerto - Batu - Batuhanpanda - Bulutcas - Darkgunner01 - Firikku - Flash_cool - Fruko610 - Futbolsucmu - Gelbeniyen - Gregpeynir - Hbaaaa - Kayramice05 - Kerem - Korkusuzknkl - Kuzuailesi - Lolipoppoppo - Mexex07 - Negion - Repalay - Speedkingfb - Theark37 - Ticitoby - Volkan79 - Xxparsikxx - Yadisss - Y177\n<J><a ><P><R>-<font size='20'>ORTA SAHALAR:\n<J><a ><font size='13'>Anestezi - Crazyumuttt - Devilstrkpro - Iolumbakgit - Kajtekoj - Koraybalkes - Mivene - Xdmuratabixd\n<J><a ><P><R>�<font size='20'>FORVETLER:\n<J><a ><font size='13'>Bilaluzbekkk - Dangeraze - Drakathof - Estonbika - Monsblack - Salsalb - Tfmprotr1 - Thaldr1n</font><",n,53,30,700,nil,0,1,0.7,true) 
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end
end
