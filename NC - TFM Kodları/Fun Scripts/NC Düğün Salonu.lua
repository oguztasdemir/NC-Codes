groom='kitapokudum#0000'
bride='devilstrkpro#5475'


f=400
e=350
a=0
t=0
p=0
finale=0

groomanswer=0
brideanswer=0
positiongroomlock=1
positionbridelock=0
bridewalking=0
stop=5

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.newGame('@7941898')

function eventNewGame()
tfm.exec.movePlayer(groom,1350, 290,offset,0,0,offset)
tfm.exec.killPlayer(bride)
end

function eventNewPlayer(a)
tfm.exec.respawnPlayer(a)
end

function eventLoop(currentTime,timeRemaining)
t=t+1
if positiongroomlock==1 then
tfm.exec.movePlayer(groom,1350, 290,offset,0,0,offset)
end

if positionbridelock==1 then
tfm.exec.movePlayer(bride,1350, 290,offset,0,0,offset)
end

if t==60 then
ui.addTextArea(1,"Uhm. Başlayabilir miyiz?",nil, 1350, 180,150,40, color,color,Alpha,false)
end

if t==80 then
ui.addTextArea(1,"Lütfen gelini getirin!",nil, 1350, 180,150,40, color,color,Alpha,false)
tfm.exec.respawnPlayer(bride)
tfm.exec.movePlayer(bride,400, 350,offset,0,0,offset)
bridewalking=1
stop=0
end


if stop==0 then

if bridewalking==1 then
tfm.exec.movePlayer(bride,f, 350,offset,0,0,offset)
f=f+10
end

if f > 1145 then
e=e-3.5
tfm.exec.movePlayer(bride,f, e,offset,0,0,offset)
end

if f==1350 then
stop=1
bridewalking=0
positionbridelock=1
ui.addTextArea(1,"Ah, burada!",nil, 1350, 180,150,40, color,color,Alpha,false)
t=1000
end
end

if t==1006 then
ui.addTextArea(1,"Seramoniye geçelim.",nil, 1350, 180,150,40, color,color,Alpha,false)
end

if t==1012 then
ui.addTextArea(1,"Biz buraya tanık olmak ve kutlamak için geldik.",nil, 1350, 180,150,40, color,color,Alpha,false)
end

if t==1018 then
ui.addTextArea(1,"İki arkadaşın ebedi birliliği..",nil, 1350, 180,150,40, color,color,Alpha,false)
end

if t==1024 then
ui.addTextArea(1,"Onlar yolculuklarında zengin ya da fakir olabilir",nil, 1350, 180,150,40, color,color,Alpha,false)
end

if t==1030 then
ui.addTextArea(1,"ve ya sevinçli ya da sıkıntı içinde",nil, 1350, 180,150,40, color,color,Alpha,false)
end

if t==1036 then
ui.addTextArea(1,'Sen '..groom..'. sonsuza dek onunla yaşamayı kabul ediyor musun?',nil, 1350, 160,150,70, color,color,Alpha,false)
groomanswer=1
end

if groomanswer==1 then
ui.addTextArea(2,'<a href="event:groomanswer"><p align="center">Evet. Şimdi ve sonsuza kadar.</p></a>',groom ,830,350,100,40,0x3c5064,0x3c5064,alpha)
end

if groomanswer==2 then
ui.addTextArea(3,"Evet. Þimdi ve sonsuza kadar.",nil ,1300,200,100)
t=2000
groomanswer=3
end

if t==2006 then
ui.removeTextArea(3,nil)
ui.addTextArea(1,'Ve sen '..bride..'. sonsuza kadar onunla yaşayıp ona aşık olacak mısın?',nil, 1350, 160,150,70, color,color,Alpha,false)
ui.addTextArea(2,'<a href="event:brideanswer"><p align="center">Evet. Þimdi ve herzaman.</p></a>',bride ,830,350,100,40,0x3c5064,0x3c5064,alpha)
end

if brideanswer==1 then
ui.addTextArea(3,"Evet. Şimdi ve her zaman.",nil ,1300,200,100)
t=3000
brideanswer=2
end

if t==3006 then
ui.removeTextArea(3,nil)
ui.addTextArea(1,'Tebrikler! Bu çiftin evliliğini ilan ediyorum. Şimdi eşinizi öpebilirsiniz.',nil, 1350, 180,170,50, color,color,Alpha,false)
end

if t==3012 then
ui.removeTextArea(3,nil)
tfm.exec.movePlayer(groom,1380, 290,offset,0,0,offset)
tfm.exec.movePlayer(bride,1320, 290,offset,0,0,offset)
finale=1
positiongroomlock=0
positionbridelock=0
end

if t==3020 then
ui.addTextArea(1,"Vee hadi şimdi parti zamanı!",nil, 1350, 180,150,40, color,color,Alpha,false)
end

end

function eventTextAreaCallback(id, player, callback)
if callback=='groomanswer' then
ui.removeTextArea(2,groom)
ui.removeTextArea(1,nil)
groomanswer=2
end

if callback=='brideanswer' then
ui.removeTextArea(2,bride)
ui.removeTextArea(1,nil)
brideanswer=1
end
end

tfm.exec.setUIMapName("Düğün Salonu")
