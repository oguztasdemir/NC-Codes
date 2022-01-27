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

ui.addTextArea(0,"<p align='center'><a href='event:kanar'><b><R></b>Kanaryavegol</a></p>",n,100,200,00,00,0x565656,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:grav'><b><R></b>Gravlyennnnnnnn</a></p>",n,225,75,00,20,0xAF68B,0xFC0000,0.9,true)
ui.addTextArea(4,"<p align='center'><a href='event:umut'><b><R></b>Crazyumuttt</a></p>",n,225,325,00,20,0xAF68B,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:devil'><b><R></b>Devilstrkpro</a></p>",n,400,200,00,20,0x256F,0xFC0000,0.9,true)
ui.addTextArea(6,"<p align='center'><a href='event:erdem'><b><R></b>Erdemmm</a></p>",n,600,325,00,20,0x001CFF,0xFC0000,0.9,true)
ui.addTextArea(7,"<p align='center'><a href='event:emir'><b><R></b>Drakathof</a></p>",n,600,75,00,20,0x001CFF,0xFC0000,0.9,true)

---------------------------------------------------------------------------

-- Yedekler

ui.addTextArea(10,"<p align='center'><a href='event:drot'><b><R></b>Drotkol</a></p>",n,730,25,00,00,0x565656,0x001CFF,0.9,true)
ui.addTextArea(11,"<p align='center'><a href='event:an�l'><b><R></b>N_u_v</a></p>",n,730,75,00,20,0xAF681,0x001CFF,0.9,true)
ui.addTextArea(12,"<p align='center'><a href='event:emirh'><b><R></b>Emirhan301</a></p>",n,730,125,00,20,0xAF68B,0x001CFF,0.9,true)
ui.addTextArea(13,"<p align='center'><a href='event:ali'><b><R></b>Tfmprotr1</a></p>",n,730,175,00,20,0x256F,0x001CFF,0.9,true)
ui.addTextArea(14,"<p align='center'><a href='event:ertan'><b><R></b>Darkgunner01</a></p>",n,730,225,00,20,0x256F,0x001CFF,0.9,true)
ui.addTextArea(15,"<p align='center'><a href='event:mons'><b><R></b>Monsblack</a></p>",n,730,275,00,20,0x001CFF,0x001CFF,0.9,true)
ui.addTextArea(26,"<p align='center'><a href='event:alper'><b><R></b>Cbaey</a></p>",n,730,325,00,20,0x001CFF,0x001CFF,0.9,true)

--------------------------------------------------------------------------------

-- Sistem Fonksiyonlar�

ui.addTextArea(27,"<p align='center'><a href='event:tüm'><b><R></b>Tüm Futbolcular</a></p>",n,50,30,00,20,0x000,0xFFEF00,0.9,true)

ui.addTextArea(8,"<p align='center'><a href='event:cancel'><b><R></b>X</a></p>",n,750,370,20,20,100,true)
 

-----------------------------------------------------------------------------------




function eventTextAreaCallback(id, name, callback)
    

    if callback=="kanar" then 
        ui.addTextArea(59,"Kanaryavegol - [01]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(1111,"<p align='center'><a href='event:kanarkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(1113,"<p align='center'><a href='event:defans'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end
   


if callback=="grav" then
        ui.addTextArea(58,"Gravlyennnnnnnn - [05]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(7790,"<p align='center'><a href='event:gravkpt'><b><R>X</b></a></p>",name,440,70,20,20,70,1,1,0.8,true)
        ui.addTextArea(8000,"<p align='center'><a href='event:kale'><b><R>Fikstür</b></a></p>",name,440,120,00,20,70,1,1,0.8,true)
    end
   

    if callback=="umut" then 
        ui.addTextArea(60,"Crazyumuttt - [08]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(61,"<p align='center'><a href='event:umutkpt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(62,"<p align='center'><a href='event:defan'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="devil" then 
        ui.addTextArea(2059,"Devilstrkpro - [10]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(2111,"<p align='center'><a href='event:devilkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(2113,"<p align='center'><a href='event:kaptan'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end



    if callback=="emir" then 
        ui.addTextArea(70,"Drakathof - [07]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(71,"<p align='center'><a href='event:emirkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(72,"<p align='center'><a href='event:kaptanf'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="erdem" then 
        ui.addTextArea(80,"Erdemmm - [11]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(81,"<p align='center'><a href='event:erdemkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(82,"<p align='center'><a href='event:forvet'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end

-------------------------------------------------

--Yedekler


    if callback=="drot" then 
        ui.addTextArea(100,"Drotkol - [31]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(101,"<p align='center'><a href='event:drotkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(102,"<p align='center'><a href='event:ykale'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="anıl" then 
        ui.addTextArea(110,"N_u_v - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(111,"<p align='center'><a href='event:an�lkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(112,"<p align='center'><a href='event:ydefans'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="emirh" then 
        ui.addTextArea(120,"Emirhan301 - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(121,"<p align='center'><a href='event:emirhkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(122,"<p align='center'><a href='event:ydefan'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="ertan" then 
        ui.addTextArea(130,"Darkgnuner01 - [??]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(131,"<p align='center'><a href='event:ertankapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(132,"<p align='center'><a href='event:yorta'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="ali" then 
        ui.addTextArea(140,"Tfmprotr1 - [13]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(141,"<p align='center'><a href='event:alikapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(142,"<p align='center'><a href='event:yort'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="mons" then 
        ui.addTextArea(150,"Monsblack - [09]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(151,"<p align='center'><a href='event:monskapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(152,"<p align='center'><a href='event:yforv'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
    end


    if callback=="alper" then 
        ui.addTextArea(160,"Cbaey - [17]\n<J><a href='event:gab'> Attığı Gol: 0\n<J><a href='event:gb'> Yediği Gol: 0\n<J><a href='event:gnb'> Attığı Çalım: 0\n<J><a href='event:kap'> Yediği Çalım: 0\n<J><a href='event:kt'> Kurtardığı Şut:   0\n<J><a href='event:at'> Attığı Depar: 0\n<J><a href='event:ddn'> Direkten Dönen Top: 0\n<J><a href='event:om'>  Oynadığı Maç: 0\n<J><a href='event:a'>Kazandığı Maç: 0\n<J><a href='event:b'>Yenildiği Maç: 0\n<J><a href='event:ab'>Kabileler Arası Maça Katılma: 0\n<J><a href='event:t'>Takımdan Olmayan Kişilerle Vs Atma:0\n<J><a href='event:g'>Antremana Katılma: 0</font><",n,53,30,700,nil,0,1,0.7,true)
        ui.addTextArea(161,"<p align='center'><a href='event:alperkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(162,"<p align='center'><a href='event:yfor'><b><R>Fikstür</b></a></p>",name,440,150,00,20,70,1,1,0.8,true)
end


 


----------------------------------------------------------------------


--Geri A� Tu�u Fonksiyonlar�


-- �lk 6


    if callback=="geri" then
ui.addTextArea(0,"<p align='center'><a href='event:kanar'><b><R></b>Kanaryavegol</a></p>",n,100,200,00,00,0x565656,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:grav'><b><R></b>Gravlyennnnnnnn</a></p>",n,225,75,00,20,0xAF68B,0xFC0000,0.9,true)
ui.addTextArea(4,"<p align='center'><a href='event:umut'><b><R></b>Crazyumuttt</a></p>",n,225,325,00,20,0xAF68B,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:devil'><b><R></b>Devilstrkpro</a></p>",n,400,200,00,20,0x256F,0xFC0000,0.9,true)
ui.addTextArea(6,"<p align='center'><a href='event:erdem'><b><R></b>Erdemmm</a></p>",n,600,325,00,20,0x001CFF,0xFC0000,0.9,true)
ui.addTextArea(7,"<p align='center'><a href='event:emir'><b><R></b>Drakathof</a></p>",n,600,75,00,20,0x001CFF,0xFC0000,0.9,true)

---------------------------------------------------------------------------

-- Yedekler

ui.addTextArea(10,"<p align='center'><a href='event:drot'><b><R></b>Drotkol</a></p>",n,730,25,00,00,0x565656,0x001CFF,0.9,true)
ui.addTextArea(11,"<p align='center'><a href='event:anıl'><b><R></b>N_u_v</a></p>",n,730,75,00,20,0xAF681,0x001CFF,0.9,true)
ui.addTextArea(12,"<p align='center'><a href='event:emirh'><b><R></b>Emirhan301</a></p>",n,730,125,00,20,0xAF68B,0x001CFF,0.9,true)
ui.addTextArea(13,"<p align='center'><a href='event:ali'><b><R></b>Tfmprotr1</a></p>",n,730,175,00,20,0x256F,0x001CFF,0.9,true)
ui.addTextArea(14,"<p align='center'><a href='event:ertan'><b><R></b>Darkgunner01</a></p>",n,730,225,00,20,0x256F,0x001CFF,0.9,true)
ui.addTextArea(15,"<p align='center'><a href='event:mons'><b><R></b>Monsblack</a></p>",n,730,275,00,20,0x001CFF,0x001CFF,0.9,true)
ui.addTextArea(26,"<p align='center'><a href='event:alper'><b><R></b>Cbaey</a></p>",n,730,325,00,20,0x001CFF,0x001CFF,0.9,true)

--------------------------------------------------------------------------------

ui.addTextArea(8,"<p align='center'><a href='event:cancel'><b><R></b>X</a></p>",name,750,370,20,20,100,true)
end


---------------------------------------------------------------------------

-- �lk 6'n�n Fonksiyonlar�
 
    if callback=="umutkpt" then
    ui.removeTextArea(60,name)
    ui.removeTextArea(61,name)
    ui.removeTextArea(62,name)
    ui.removeTextArea(63,name)
    ui.removeTextArea(64,name)
    end


    if callback=="emirkapt" then
    ui.removeTextArea(70,name)
    ui.removeTextArea(71,name)
    ui.removeTextArea(72,name)
    ui.removeTextArea(73,name)
    ui.removeTextArea(74,name)
    end


    if callback=="erdemkapt" then
    ui.removeTextArea(80,name)
    ui.removeTextArea(81,name)
    ui.removeTextArea(82,name)
    ui.removeTextArea(83,name)
    ui.removeTextArea(84,name)
    end
 
    if callback=="kanarkapt" then
    ui.removeTextArea(59,name)
    ui.removeTextArea(1111,name)
    ui.removeTextArea(1113,name)
    ui.removeTextArea(5100,name)
    ui.removeTextArea(5200,name)
    end


    if callback=="devilkapt" then
    ui.removeTextArea(2059,name)
    ui.removeTextArea(2111,name)
    ui.removeTextArea(2113,name)
    ui.removeTextArea(7200,name)
    ui.removeTextArea(5600,name)
    end
 
    if callback=="gravkpt" then
    ui.removeTextArea(58,name)
    ui.removeTextArea(7790,name)
    ui.removeTextArea(8000,name)
    ui.removeTextArea(8010,name)
    ui.removeTextArea(510,name)
    ui.removeTextArea(520,name)
    end

------------------------------------------------------------------------

-- Yedeklerin Fonksiyonlar�

    if callback=="drotkapt" then
    ui.removeTextArea(100,name)
    ui.removeTextArea(101,name)
    ui.removeTextArea(102,name)
    ui.removeTextArea(103,name)
    ui.removeTextArea(104,name)
    end


    if callback=="anılkapt" then
    ui.removeTextArea(110,name)
    ui.removeTextArea(111,name)
    ui.removeTextArea(112,name)
    ui.removeTextArea(113,name)
    ui.removeTextArea(114,name)
    end


    if callback=="emirhkapt" then
    ui.removeTextArea(120,name)
    ui.removeTextArea(121,name)
    ui.removeTextArea(122,name)
    ui.removeTextArea(123,name)
    ui.removeTextArea(124,name)
    end

    if callback=="ertankapt" then
    ui.removeTextArea(130,name)
    ui.removeTextArea(131,name)
    ui.removeTextArea(132,name)
    ui.removeTextArea(133,name)
    ui.removeTextArea(134,name)
    end


    if callback=="alikapt" then
    ui.removeTextArea(140,name)
    ui.removeTextArea(141,name)
    ui.removeTextArea(142,name)
    ui.removeTextArea(143,name)
    ui.removeTextArea(144,name)
    end


    if callback=="monskapt" then
    ui.removeTextArea(150,name)
    ui.removeTextArea(151,name)
    ui.removeTextArea(152,name)
    ui.removeTextArea(153,name)
    ui.removeTextArea(154,name)
    end


    if callback=="alperkapt" then
    ui.removeTextArea(160,name)
    ui.removeTextArea(161,name)
    ui.removeTextArea(162,name)
    ui.removeTextArea(163,name)
    ui.removeTextArea(164,name)
    end

-----------------------------------------------------------------------
 

-- Kapatma Fonksiyonlar�


        if callback=="close" then
    ui.removeTextArea(50,name)
    ui.removeTextArea(51,name)
    ui.removeTextArea(52,name)
    ui.removeTextArea(779,name)
    ui.removeTextArea(800,name)
    ui.removeTextArea(801,name)
    end



    if callback=="cancel" then
    ui.addTextArea(2,"<p align='center'><a href='event:siyhh'><b><R></b></a></p>",name,710,370,70,50,1,true)
    ui.addTextArea(9955,"<p align='center'><a href='event:geri'><b><R></b>Geri A�</a></p>",name,710,370,70,20,100,true)
    ui.removeTextArea(0,name)
    ui.removeTextArea(4,name)
    ui.removeTextArea(5,name)
    ui.removeTextArea(6,name)
    ui.removeTextArea(7,name)
    ui.removeTextArea(8,name)
    end
 
----------------------------------------------------------------------



if callback=="defans" then
		ui.addTextArea(5200,"Kanaryavegol - [01]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Kanaryavegol <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Kanaryavegol <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(1111,"<p align='center'><a href='event:kanarkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(59,name)
    ui.removeTextArea(5100,name)
end 


if callback=="kale" then
    ui.addTextArea(510,"Gravlyennnnnnnn - [05]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Gravlyennnnnnnn <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(7790,"<p align='center'><a href='event:gravkpt'><b><R>X</b></a></p>",name,440,70,20,20,70,1,1,0.8,true)
    ui.removeTextArea(58,name)
    ui.removeTextArea(520,name)
end



if callback=="kaptan" then
		ui.addTextArea(7200,"Devilstrkpro - [10]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Devilstrkpro <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Devilstrkpro <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(2111,"<p align='center'><a href='event:devilkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(2059,name)
    ui.removeTextArea(5600,name)
end 


if callback=="defan" then
    ui.addTextArea(63,"Crazyumuttt - [08]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Crazyumuttt <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Crazyumuttt <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(61,"<p align='center'><a href='event:umutkpt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(60,name)
    ui.removeTextArea(64,name)
end


if callback=="kaptanf" then
		ui.addTextArea(73,"Drakathof - [07]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Drakathof <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Drakathof <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(71,"<p align='center'><a href='event:emirkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(70,name)
    ui.removeTextArea(74,name)
end 


if callback=="forvet" then
		ui.addTextArea(83,"Erdemmm - [11]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Erdemmm <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Erdemmm <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(81,"<p align='center'><a href='event:erdemkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(80,name)
    ui.removeTextArea(84,name)
end 


----------------------------------------------------------------------------


if callback=="ykale" then
		ui.addTextArea(103,"Drotkol - [31]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Drotkol <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Drotkol <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(101,"<p align='center'><a href='event:drotkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(100,name)
    ui.removeTextArea(104,name)
end 


if callback=="ydefans" then
		ui.addTextArea(113,"N_u_v - [??]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> N_u_v <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> N_u_v <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(111,"<p align='center'><a href='event:an�lkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(110,name)
    ui.removeTextArea(114,name)
end  


if callback=="ydefan" then
		ui.addTextArea(123,"Emirhan301 - [??]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Emirhan301 <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Emirhan301 <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(121,"<p align='center'><a href='event:emirhkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(120,name)
    ui.removeTextArea(124,name)
end 


if callback=="yorta" then
    ui.addTextArea(133,"Darkgunner01 - [08]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Darkgunner01 <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Darkgunner01 <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(131,"<p align='center'><a href='event:ertankapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(130,name)
    ui.removeTextArea(134,name)
end 


if callback=="yort" then
    ui.addTextArea(143,"Tfmprotr1 - [13]\n<VP><a href='event:gab'>1. Hafta �lk Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Tfmprotr1 <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(141,"<p align='center'><a href='event:alikapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(140,name)
    ui.removeTextArea(144,name)
end 


if callback=="yforv" then
    ui.addTextArea(153,"Monsblack - [09]\n<VP><a href='event:gab'>1. Hafta ilk Maç: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Maç: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta �lk Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Monsblack <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Monsblack <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(151,"<p align='center'><a href='event:monskapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(150,name)
    ui.removeTextArea(154,name)
end 


if callback=="yfor" then
    ui.addTextArea(163,"Cbaey - [11]\n<VP><a href='event:gab'>1. Hafta ilk Ma.: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:gb'>1. Hafta ikinci Maç: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:gnb'>2. Hafta ilk Maç: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:kap'>2. Hafta �kinci Ma�: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:k�'>3. Hafta �lk Ma�: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:kt'>3. Hafta �kinci Ma�: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:at'>4. Hafta �lk Ma�: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:dd'>4. Hafta �kinci Ma�: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:om'>5. Hafta �lk Ma�: <J> Cbaey <R>.. - ..<J> .....\n<VP><a href='event:a'>5. Hafta �kinci Ma�: <J> Cbaey <R>.. - ..<J> .....</font><",name,53,30,400,nil,0,1,0.7,true)
    ui.addTextArea(161,"<p align='center'><a href='event:alperkapt'><b><R>X</b></a></p>",name,440,50,20,20,70,1,1,0.8,true)
    ui.removeTextArea(160,name)
    ui.removeTextArea(164,name)
end 
end