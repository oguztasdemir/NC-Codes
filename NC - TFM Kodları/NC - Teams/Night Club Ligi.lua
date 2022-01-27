

players={} notices={notice=""}
 

ui.addTextArea(18,"<p align='center'><font face='arial'><a href='event:open'><j><b>Night Club 1. Ligi</a></font></p>",n,400,370,00,18,0x00001,0xEB1D51,0.9,true)
tfm.exec.setUIMapName("<VP>Night Club 1. Ligi")  


tfm.exec.newGame('@7150755')



function eventTextAreaCallback(id, n, cb)

ui.addTextArea(0,"<p align='center'><a href='event:devil'><b><R></b>Night Ligi Sýralamasý</a></p>",n,200,200,00,00,0x565656,0xFC0000,0.9,true)
ui.addTextArea(2,"<p align='center'><a href='event:d'><b><R></b>Club Ligi Sýralamasý</a></p>",n,400,200,00,20,0xAF68B,0xFC0000,0.9,true)


ui.addTextArea(3,"<p align='center'><a href='event:batu'>Batuhanpanda</a></p>",n, 3000,805,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(5,"<p align='center'><a href='event:iolu'>Iolumbakgit</a></p>",n,3000,805,00,20,0x0001,0xFC0000,0.9,true)
ui.addTextArea(6,"<p align='center'><a href='event:gelb'>Gelbeniyen</a></p>",n,3000,805,00,20,0x00001,0xFC0000,0.9,true)



---------------------------------------------------------------------------------------------------------------------------



if cb=="devil" then
ui.addTextArea(3,"<P><R>'><font size='15'>Sýra       Oyuncu Ýsim:             OM           KM         BM        YM       AG         YG           P\n<J><a href='event:gab'>1- Devilstrkpro\n<J><a href='event:gb'>2- Kajtekoj\n<J><a href='event:kap'>3- Batu\n<J><a href='event:kap'>4- Erdemmm\n<J><a href='event:kt'>5- Crazyumuttt\n<J><a href='event:at'>6- Kanaryavegol</font><",n,53,30,700,nil,0,3,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end


if cb=="d" then
ui.addTextArea(3,"<P><R>'><font size='15'>Sýra       Oyuncu Ýsim:             OM           KM         BM        YM       AG         YG           P\n<J><a href='event:gab'>1- Drakathof\n<J><a href='event:gb'>2- Monsblack\n<J><a href='event:kap'>3- Fethi\n<J><a href='event:kap'>4- Tfmprotr1\n<J><a href='event:kt'>5- Drotkol\n<J><a href='event:at'>6- Bilaluzbekkk</font><",n,53,30,700,nil,0,3,0.7,true)
ui.addTextArea(4,"<p align='center'><a href='event:zam'>Kapat</a></p>",name,5,300,790,20,nil,n,n,true)
end
end
