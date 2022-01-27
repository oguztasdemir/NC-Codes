tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoTimeLeft(true)
 
 
wm=0
ta=1
 
function ng()
if wm==0 then
 
if ta==0 then
ui.removeTextArea(0,nil)
ui.removeTextArea(1,nil)
ui.removeTextArea(2,nil)
ui.removeTextArea(3,nil)
ui.removeTextArea(4,nil)
ui.removeTextArea(5,nil)
ui.removeTextArea(6,nil)
ui.removeTextArea(7,nil)
ui.removeTextArea(8,nil)
ui.removeTextArea(9,nil)
ui.removeTextArea(10,nil)
ui.removeTextArea(11,nil)
end
 
map=math.random(5) --6 --math.random(6)
 
if map==oldmap then
 
ng()
 
 
 
elseif map==1 then
tfm.exec.newGame(5845948)
oldmap=1
 
tfm.exec.setGameTime(60)
 
l=30
h=60
 
x1=400
y1=35
 
x2=550
y2=35
 
x3=700
y3=35
 
x4=200
y4=35
 
x5=400
y5=173
 
x6=550
y6=173
 
x7=700
y7=173
 
x8=200
y8=173
 
x9=235
y9=297
 
x10=100
y10=297
 
x11=425
y11=297
 
x12=678
y12=297
ta=0
 
 
elseif map==2 then
 
oldmap=2
tfm.exec.newGame(5847513)
 
 
tfm.exec.setGameTime(60)
 
l=30
h=60
 
x1=315-25
y1=208-25
 
x2=502-25
y2=329-25
 
x3=331-25
y3=329-25
 
x4=466-25
y4=94-25
 
 
x5=142-25
y5=94-25
 
x6=141-25
y6=329-25
 
x7=89-25
y7=208-25
 
x8=728-25
y8=329-25
 
x9=516-25
y9=208-25
 
x10=723-25
y10=94-25
 
 
x11=697-25
y11=208-25
 
x12=603-25
y12=94-25
ta=0
 
 
elseif map==3 then
oldmap=3
tfm.exec.newGame(5847903)
 
 
tfm.exec.setGameTime(60)
 
l=30
h=60
 
x1=292
y1=25
 
x2=600
y2=12
 
x3=730
y3=83
 
x4=50
y4=107
 
x5=403
y5=92
 
x6=497
y6=147
 
x7=234
y7=217
 
x8=139
y8=165
 
x9=160
y9=340
 
x10=50
y10=340
 
x11=717
y11=276
 
x12=500
y12=340
ta=0
 
 
elseif map==4 then
oldmap=4
tfm.exec.newGame(5849091)
 
tfm.exec.setGameTime(60)
 
l=30
h=60
 
 
x1=134
y1=313
 
x2=64
y2=65
 
x3=685
y3=313
 
x4=22
y4=313
 
x5=263
y5=65
 
x6=57
y6=194
 
x7=360
y7=194
 
x8=216
y8=194
 
x9=501
y9=65
 
x10=372
y10=313
 
x11=717
y11=194
 
x12=706
y12=65
ta=0
 
 
elseif map==5 then
oldmap=5
tfm.exec.newGame(5849433)
ta=1
 
tfm.exec.setGameTime(60)
 
l=58
h=82
 
x1=141
y1=63
 
x2=306
y2=200
 
x3=483
y3=200
 
x4=479
y4=63
 
x5=305
y5=63
 
x6=145
y6=312
 
x7=483
y7=312
 
x8=308
y8=312
 
x9=640
y9=200
 
x10=643
y10=312
 
x11=638
y11=63
 
x12=143
y12=200
 
 
 
end
 
nm=[[<font size="30" face="Soopafresh" color="#000000">Lucky doors!</font>]]
ui.addTextArea(98,nm,nil,6,30,nil,nil,nil,nil,0,true)
nm=[[<font size="30" face="Soopafresh" color="#258FF6">Lucky doors!</font>]]
ui.addTextArea(99,nm,nil,10,30,nil,nil,nil,nil,0,true)
nm=[[<font size="12" face="Soopafresh" color="3F3F3F">by Alexunutrei</font>]]
ui.addTextArea(100,nm,nil,50,65,nil,nil,nil,nil,0,true)
 
if ta==0 then
ui.addTextArea(0,"",nil,x1,y1,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(1,"",nil,x2,y2,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(2,"",nil,x3,y3,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(3,"",nil,x4,y4,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(4,"",nil,x5,y5,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(5,"",nil,x6,y6,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(6,"",nil,x7,y7,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(7,"",nil,x8,y8,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(8,"",nil,x9,y9,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(9,"",nil,x10,y10,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(10,"",nil,x11,y11,l,h,BLUE,BLACK,0.5,false) --OK
ui.addTextArea(11,"",nil,x12,y12,l,h,BLUE,BLACK,0.5,false) --OK
end
end
if wm==1 then
tfm.exec.newGame(0)
end
end
 
ng()
tm=0
 
tfm.exec.setUIMapName("Lucky doors  |  Creator: Alexunutrei")
 
function eventLoop(t,g)
tm=tm+1
 
if tm==120 then
wons=0
if win==1 then
ui.removeTextArea(101)
win=0
end
tm=0
ng()
end
end
 
 
function eventNewPlayer(name)
--inst=[[<font size="15" align="centre" face="Soopafresh" color="3F3F3F">Instructiuni:</font>
--<font size="12" face="Verdana" color="3F3F3F">Trebuie sa intri prin usi, apasand tasta SPACE, pana la branza si la gaura.</font>]]
--ui.addPopup(999, 0, inst, name, 280, 150,240)
 
tfm.exec.setPlayerScore(name,0)
tfm.exec.bindKeyboard(name,32,true,true)
end
 
players={}
 
for name,player in pairs(tfm.get.room.playerList)do
players[name]={score=0}
eventNewPlayer(name)
end
 
function eventKeyboard(name,key,down,x,y)
if key==32 then
 
if x<x1+l and x>x1 and y>y1 and y<y1+h then tfm.exec.movePlayer(name,x8+x-x1,y8+y-y1)
end
 
if x>x2 and x<x2+l and y>y2 and y<y2+h then tfm.exec.movePlayer(name,x10+x-x2,y10+y-y2)
end
 
if x>x3 and x<x3+l and y>y3 and y<y3+h then tfm.exec.movePlayer(name,x4+x-x3,y4+y-y3)
end
 
if x>x4 and x<x4+l and y>y4 and y<y4+h then tfm.exec.movePlayer(name,x11+x-x4,y11+y-y4)
end
 
if x>x11 and x<x11+l and y>y11 and y<y11+h then tfm.exec.movePlayer(name,x3+x-x11,y3+y-y11)
end
 
if x>x10 and x<x10+l and y>y10 and y<y10+h then tfm.exec.movePlayer(name,x5+x-x10,y5+y-y10)
end
 
if x>x5 and x<x5+l and y>y5 and y<y5+h then tfm.exec.movePlayer(name,x8+x-x5,y8+y-y5)
end
 
if x>x8 and x<x8+l and y>y8 and y<y8+h then tfm.exec.movePlayer(name,x1+x-x8,y1+y-y8)
end
 
if x>x7 and x<x7+l and y>y7 and y<y7+h then tfm.exec.movePlayer(name,x1+x-x7,y1+y-y7)
end
 
if x>x6 and x<x6+l and y>y6 and y<y6+h then tfm.exec.movePlayer(name,x4+x-x6,y4+y-y6)
end
 
if x>x9 and x<x9+l and y>y9 and y<y9+h then tfm.exec.movePlayer(name,x6+x-x9,y6+y-y9)
end
 
if x>x12 and x<x12+l and y>y12 and y<y12+h then tfm.exec.movePlayer(name,x7+x-x12,y7+y-y12)
end
 
end
end
 
wons=0
win=0
 
function eventPlayerWon(name)
                if wons==0 then
                                tfm.exec.setPlayerScore(name,1,true)
                                players[name].score=players[name].score+1
                                ui.addTextArea(101,name.." won this round!",nil,10,25)
                                win=1
                                tfm.exec.setGameTime(10)
                                 tm=100
                                if players[name].score==10 then
                                wm=1
                                end
                end
                wons=wons+1
end