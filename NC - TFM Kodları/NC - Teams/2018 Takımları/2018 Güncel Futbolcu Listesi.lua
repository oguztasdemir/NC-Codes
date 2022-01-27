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

ui.addTextArea(18,"<p align='center'><font face='arial'><a href='event:open'><VP><b>Night Club Futbol Kadrosu</a></font></p>",name,10,360,00,18,0x00001,0x75A2EC,0.9,true)
tfm.exec.setUIMapName("<VP>Night Club Dev Futbol Kadrosu")  



function eventTextAreaCallback(id, name, cb)

ui.addTextArea(1,"<p align='center'><a href='event:yunus'>Etoiliere - <VP>GK - <O>01</a></p>",name,125,200,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:ertan'>Darkgunner01 - <VP>DF - <O>??</a></p>",name,250,75,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:batuhan'>Batuhanpanda - <VP>DF - <O>04</a></p>",name,250,325,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(10,"<p align='center'><a href='event:o�uz'>Devilstrkpro - <VP>OS - <O>11 - <bl>C</a></p>",name,400,200,00,20,0x00001,0xFC0000,0.9,true)
ui.addTextArea(11,"<p align='center'><a href='event:emir'>Drakathof - <VP>FW - <O>07 - <bl>C2</a></p>",name, 530,75,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(12,"<p align='center'><a href='event:batu'>Salsalb - <VP>FW - <O>10</a></p>",name,530,325,00,20,0x00001,0xFC0000,0.9,true)



ui.addTextArea(20,"<p align='center'><a href='event:melih'>Fbkapat - <VP>GK - <O>??</a></p>",name,720,50,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(21,"<p align='center'><a href='event:yusuf'>Theark37 - <VP>DF - <O>??</a></p>",name,720,100,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(22,"<p align='center'><a href='event:emircan'>Bulutcas - <VP>DF - <O>??</a></p>",name,720,150,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(23,"<p align='center'><a href='event:umut'>Crazyumuttt - <VP>OS - <O>??</a></p>",name,720,200,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(24,"<p align='center'><a href='event:furkan'>Kajtekoj - <VP>OS - <O>09</a></p>",name,720,250,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(19,"<p align='center'><a href='event:o�uzh'>Monsblack - <VP>FW - <O>??</a></p>",name,720,300,00,20,0x000,0xFFFFFF,0.9,true)
ui.addTextArea(25,"<p align='center'><a href='event:alper'>Cbaey - <VP>FW - <O>??</a></p>",name,720,350,00,20,0x000,0xFFFFFF,0.9,true)



ui.addTextArea(0,"<p align='center'><a href='event:tüm'><VP>Tüm Futbolcular</a></p>",name,10,50,00,20,0x000,0x75A2EC,0.9,true)





if cb=="tüm" then
ui.addTextArea(3,"<P><R>O<font size='20'>KALEC�LER:\n<J><a ><font size='13'>Aftokki\n<J><a >Drotkol\n<J><a >Etoiliere\n<J><a >Ezoturkhose\n<J><a >Fbkapat\n<J><a >Hqvuc\n<J><a >Icasillas1\n<J><a >Kanaryavegol\n<J><a >Katilsal\n<J><a >Kondextr\n<J><a >Rexteen\n<J><a >Sametagdemir\n<J><a >Trencimert\n<J><a >Xxffarreexx\n<J><a >Zearo \n<J><a ><P><R>L<font size='20'>DEFANSLAR:\n<J><a ><font size='13'>Afroditerosss\n<J><a >Alevtank\n<J><a >Asdasmerto\n<J><a >Batu\n<J><a >Batuhanpanda\n<J><a >Bulutcas\n<J><a >Darkgunner01\n<J><a >Firikku\n<J><a >Flash_cool\n<J><a >Fruko610\n<J><a >Futbolsucmu\n<J><a >Gelbeniyen\n<J><a >Gregpeynir\n<J><a >Hbaaaa\n<J><a >Kayramice05\n<J><a >Kerem\n<J><a >Korkusuzknkl\n<J><a >Kuzuailesi\n<J><a >Lolipoppoppo\n<J><a >Mexex07\n<J><a >Negion\n<J><a >Repalay\n<J><a >Speedkingfb\n<J><a >Theark37\n<J><a >Ticitoby\n<J><a >Volkan79\n<J><a >Xxparsikxx\n<J><a >Yadisss\n<J><a >Y177\n<J><a ><P><R>-<font size='20'>ORTA SAHALAR:\n<J><a ><font size='13'>Anestezi\n<J><a >Crazyumuttt\n<J><a >Devilstrkpro\n<J><a >Iolumbakgit\n<J><a >Kajtekoj\n<J><a >Koraybalkes\n<J><a >Mivene\n<J><a >Xdmuratabixd\n<J><a ><P><R>�<font size='20'>FORVETLER:\n<J><a ><font size='13'>Bilaluzbekkk\n<J><a >Dangeraze\n<J><a >Drakathof\n<J><a >Estonbika\n<J><a >Monsblack\n<J><a >Salsalb\n<J><a >Tfmprotr1\n<J><a >Thaldr1n</font><",name,-170,30,150,350,0,0xffffff,0.99999,true) 
--ui.addTextArea(3,"<P><R>O<font size='20'>KALEC�LER:\n<J><a ><font size='13'>Aftokki - Drotkol - Etoiliere - Ezoturkhose - Fbkapat - Hqvuc - Icasillas1 - Kanaryavegol - Katilsal - Kondextr - Rexteen - Sametagdemir - Trencimert - Xxffarreexx - Zearo \n<J><a ><P><R>L<font size='20'>DEFANSLAR:\n<J><a ><font size='13'>Afroditerosss - Alevtank - Asdasmerto - Batu - Batuhanpanda - Bulutcas - Darkgunner01 - Firikku - Flash_cool - Fruko610 - Futbolsucmu - Gelbeniyen - Gregpeynir - Hbaaaa - Kayramice05 - Kerem - Korkusuzknkl - Kuzuailesi - Lolipoppoppo - Mexex07 - Negion - Repalay - Speedkingfb - Theark37 - Ticitoby - Volkan79 - Xxparsikxx - Yadisss - Y177\n<J><a ><P><R>-<font size='20'>ORTA SAHALAR:\n<J><a ><font size='13'>Anestezi - Crazyumuttt - Devilstrkpro - Iolumbakgit - Kajtekoj - Koraybalkes - Mivene - Xdmuratabixd\n<J><a ><P><R>�<font size='20'>FORVETLER:\n<J><a ><font size='13'>Bilaluzbekkk - Dangeraze - Drakathof - Estonbika - Monsblack - Salsalb - Tfmprotr1 - Thaldr1n</font><",name,-170,30,150,350,0,0xffffff,0.99999,true) 
end
end