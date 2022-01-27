players={} notices={notice=""}
 

function eventNewPlayer(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerDied(playerName)
tfm.exec.respawnPlayer(playerName)
end
function eventPlayerWon(playerName)
tfm.exec.respawnPlayer(playerName)
end

tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
players={}
toDespawn={}
maps={5308276} 

function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
players[name]={
timestamp=os.time(),
offsets={x=-2, y=13}
}
end
 
function eventKeyboard(name,key,down,x,y)
if (key==32 or key==40 or key==83) and not s and started then
if players[name].timestamp < os.time()-1000 then
local id
if tfm.get.room.playerList[name].isFacingRight then
tfm.exec.addShamanObject(17, 330,-500)
tfm.exec.addShamanObject(17, 500,-250)
tfm.exec.addShamanObject(17, 700,-100)
tfm.exec.addShamanObject(17,900,-250)
tfm.exec.addShamanObject(17,1100,-500)
tfm.exec.addShamanObject(17,1270,-300)
else
tfm.exec.addShamanObject(17, 330,-500)
tfm.exec.addShamanObject(17, 500,-250)
tfm.exec.addShamanObject(17, 700,-100)
tfm.exec.addShamanObject(17,900,-250)
tfm.exec.addShamanObject(17,1100,-500)
tfm.exec.addShamanObject(17,1270,-300)
end
players[name].timestamp=os.time()
table.insert(toDespawn,{os.time(),id})
end
end
end
 
function eventChatCommand(name,command)
local arg={}
for argument in command:gmatch("[^%s]+") do
table.insert(arg,argument)
end
if arg[1]=="off" then
if tonumber(arg[2]) and tonumber(arg[3]) then
players[name].offsets.x=tonumber(arg[2])
players[name].offsets.y=tonumber(arg[3])
else
players[name].offsets.x=-2
players[name].offsets.y=13
end
tfm.exec.chatMessage("Offsets changed to X:"..players[name].offsets.x.." Y:"..players[name].offsets.y,name)
end
end
 
function eventNewGame()
started=false
end
 
function eventLoop(time,remaining)
if time >= 3000 and not started then
started=true
end
if remaining<=0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
for i,cannon in ipairs(toDespawn) do
if cannon[1] <= os.time()-3000 then
tfm.exec.removeObject(cannon[2])
table.remove(toDespawn,i)
tfm.exec.setGameTime(500)
end
end
end

 
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
 
tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName("<J>DRAGYAÐMURU/<R>Drag Savaþý")ui.addTextArea(1,"<p align='center'><a href='event:profilsyh'><b><R></b></a></p>",name,50,10,350,20,1,true)
ui.addTextArea(3,"<p align='center'><a href='event:profil'><b><R></b>Night Club Football Özel/DRAGYAÐMURU</a></p>",name,60,20,330,20,10,true)

ui.addTextArea(1,"<p align='center'><a href='event:profilsyh'><b><R></b></a></p>",name,60,420,330,20,100,true)
ui.addTextArea(3,"<p align='center'><a href='event:profil'><b><R></b>Merhaba ! Minioyunuma Hoþgeldin</a></p>",name,60,420,330,20,100,true)
ui.addTextArea(0,"<p align='center'><a href='event:siyah'><b><R></b></a></p>",name,180,770,500,50,1,true)
ui.addTextArea(5,"<p align='center'><a href='event:nsl'><b><R></b>Nasýl Oynanýr ?</a></p>",name,190,770,120,20,100,true)
ui.addTextArea(6,"<p align='center'><a href='event:kural'><b><R></b>Oyun Kurallarý</a></p>",name,370,770,120,20,100,true)
ui.addTextArea(7,"<p align='center'><a href='event:krc'><b><R></b>MiniOyun Kurucularý</a></p>",name,550,770,120,20,100,true)
ui.addTextArea(8,"<p align='center'><a href='event:cancel'><b><R></b>X</a></p>",name,750,770,20,20,100,true)
 

function eventTextAreaCallback(id, name, callback)
    if callback=="nsl" then
        ui.addTextArea(58,"Nasýl oynanýlýr:                          s",name,250,60,200,300,1,1,0.8,true)
        ui.addTextArea(7790,"<p align='center'><a href='event:nasýlkpt'><b><R>X</b></a></p>",name,440,70,20,20,70,1,1,0.8,true)
        ui.addTextArea(8000,"<p align='center'><a href='event:right'><b><R>1</b></a></p>",name,440,120,20,20,70,1,1,0.8,true)
        ui.addTextArea(8010,"<p align='center'><a href='event:left'><b><R>2</b></a></p>",name,440,170,20,20,70,1,1,0.8,true)
    end
   
    if callback=="kural" then
        ui.addTextArea(59,"kurall",name,480,40,300,150,1,1,0.8,true)
        ui.addTextArea(1111,"<p align='center'><a href='event:kurlkapt'><b><R>X</b></a></p>",name,770,50,20,20,70,1,1,0.8,true)
        ui.addTextArea(1112,"<p align='center'><a href='event:sonra'><b><R>1</b></a></p>",name,770,100,20,20,70,1,1,0.8,true)
        ui.addTextArea(1113,"<p align='center'><a href='event:önce'><b><R>2</b></a></p>",name,770,150,20,20,70,1,1,0.8,true)
    end
   
    if callback=="krc" then
        ui.addTextArea(61,"kurucular",name,480,210,300,150,1,1,0.8,true)
        ui.addTextArea(62,"<p align='center'><a href='event:kurucukapat'><b><R>X</b></a></p>",name,770,220,20,20,70,1,1,0.8,true)
        ui.addTextArea(63,"<p align='center'><a href='event:birinci'><b><R>1</b></a></p>",name,770,270,20,20,70,1,1,0.8,true)
        ui.addTextArea(64,"<p align='center'><a href='event:ikinci'><b><R>2</b></a></p>",name,770,320,20,20,70,1,1,0.8,true)
    end
 
    if callback=="geri" then
        ui.addTextArea(0,"<p align='center'><a href='event:helph'><b><R></b></a></p>",name,190,760,520,50,1,true)
    ui.addTextArea(5,"<p align='center'><a href='event:nsl'><b><R></b>Nasýl Oynanýr ?</a></p>",name,190,770,120,20,100,true)
    ui.addTextArea(6,"<p align='center'><a href='event:kural'><b><R></b>Oyun Kurallarý</a></p>",name,370,770,120,20,100,true)
    ui.addTextArea(7,"<p align='center'><a href='event:krc'><b><R></b>MiniOyun Kurucularý</a></p>",name,550,770,150,20,100,true)
    ui.addTextArea(8,"<p align='center'><a href='event:cancel'><b><R></b>X</a></p>",name,750,770,20,20,100,true)
    ui.removeTextArea(9955,name)
    end
 
    if callback=="cancel" then
    ui.addTextArea(2,"<p align='center'><a href='event:siyhh'><b><R></b></a></p>",name,710,770,70,50,1,true)
    ui.addTextArea(9955,"<p align='center'><a href='event:geri'><b><R></b>Geri Aç</a></p>",name,710,770,70,20,100,true)
    ui.removeTextArea(0,name)
    ui.removeTextArea(4,name)
    ui.removeTextArea(5,name)
    ui.removeTextArea(6,name)
    ui.removeTextArea(7,name)
    ui.removeTextArea(8,name)
    end
 
    if callback=="kurucukapat" then
    ui.removeTextArea(62,name)
    ui.removeTextArea(61,name)
    ui.removeTextArea(63,name)
    ui.removeTextArea(64,name)
    ui.removeTextArea(74,name)
    ui.removeTextArea(75,name)
    end
 
    if callback=="kurlkapt" then
    ui.removeTextArea(59,name)
    ui.removeTextArea(1111,name)
    ui.removeTextArea(1112,name)
    ui.removeTextArea(1113,name)
    ui.removeTextArea(5100,name)
    ui.removeTextArea(5200,name)
    end
 
    if callback=="nasýlkpt" then
    ui.removeTextArea(58,name)
    ui.removeTextArea(7790,name)
    ui.removeTextArea(8000,name)
    ui.removeTextArea(8010,name)
    ui.removeTextArea(510,name)
    ui.removeTextArea(520,name)
    end
 
        if callback=="close" then
    ui.removeTextArea(50,name)
    ui.removeTextArea(51,name)
    ui.removeTextArea(52,name)
    ui.removeTextArea(779,name)
    ui.removeTextArea(800,name)
    ui.removeTextArea(801,name)
    end
 
 
        if callback=="right" then
                ui.addTextArea(510,"Bu Minioyun <VP><b>Space</b> <N>ve <VP><b>Eðilme</b><N> tuþlarý ile oynanýr </p></p>",name,250,60,200,300,1,1,0.8,true)
    ui.addTextArea(7790,"<p align='center'><a href='event:nasýlkpt'><b><R>X</b></a></p>",name,440,70,20,20,70,1,1,0.8,true)
    ui.addTextArea(8000,"<p align='center'><a href='event:right'><b><R>1</b></a></p>",name,440,120,20,20,70,1,1,0.8,true)
    ui.addTextArea(8010,"<p align='center'><a href='event:left'><b><R>2</b></a></p>",name,440,170,20,20,70,1,1,0.8,true)
    ui.removeTextArea(58,name)
        ui.removeTextArea(520,name)
    end

         if callback=="left" then
                ui.addTextArea(520,"2. nasýl oynanýlýr",name,250,60,200,300,1,1,0.8,true)
    ui.addTextArea(7790,"<p align='center'><a href='event:nasýlkpt'><b><R>X</b></a></p>",name,440,70,20,20,70,1,1,0.8,true)
    ui.addTextArea(8000,"<p align='center'><a href='event:right'><b><R>1</b></a></p>",name,440,120,20,20,70,1,1,0.8,true)
    ui.addTextArea(8010,"<p align='center'><a href='event:left'><b><R>2</b></a></p>",name,440,170,20,20,70,1,1,0.8,true)
        ui.removeTextArea(58,name)
        ui.removeTextArea(510,name)
    end
  
            if callback=="sonra" then
                ui.addTextArea(510,"Bu Minioyun  Kuralý üstten gelen <VP><b>Draglardan</b> kaçmak <N>ve <VP><b>Peyniri Alýp Yuvaya Girmektir</b>.<N></p></p>",name,250,60,200,300,1,1,0.8,true)
    ui.addTextArea(1111,"<p align='center'><a href='event:kurlkapt'><b><R>X</b></a></p>",name,770,50,20,20,70,1,1,0.8,true)
    ui.addTextArea(1112,"<p align='center'><a href='event:sonra'><b><R>1</b></a></p>",name,770,100,20,20,70,1,1,0.8,true)
    ui.addTextArea(1113,"<p align='center'><a href='event:önce'><b><R>2</b></a></p>",name,770,150,20,20,70,1,1,0.8,true)
    ui.removeTextArea(59,name)
        ui.removeTextArea(5200,name)
    end

        if callback=="önce" then
                ui.addTextArea(5200,"2. kural",name,480,40,300,150,1,1,0.8,true)
    ui.addTextArea(1111,"<p align='center'><a href='event:kurlkapt'><b><R>X</b></a></p>",name,770,50,20,20,70,1,1,0.8,true)
    ui.addTextArea(1112,"<p align='center'><a href='event:sonra'><b><R>1</b></a></p>",name,770,100,20,20,70,1,1,0.8,true)
    ui.addTextArea(1113,"<p align='center'><a href='event:önce'><b><R>2</b></a></p>",name,770,150,20,20,70,1,1,0.8,true)
    ui.removeTextArea(59,name)
    ui.removeTextArea(5100,name)
    end 

                if callback=="birinci" then
  ui.addTextArea(75,"<p align='center'>Bu kod <VP><b>Devilstrkpro</b><N> , <VP><b>Devilstrk</b> <N>ve <VP><b>Articguna</b><N> tarafýndan kodlanmýþtýr.</p>",name,480,450,300,150,1,1,0.8,true)
    ui.addTextArea(62,"<p align='center'><a href='event:kurucukapat'><b><R>X</b></a></p>",name,770,220,20,20,70,1,1,0.8,true)
    ui.addTextArea(63,"<p align='center'><a href='event:birinci'><b><R>1</b></a></p>",name,770,270,20,20,70,1,1,0.8,true)
    ui.addTextArea(64,"<p align='center'><a href='event:ikinci'><b><R>2</b></a></p>",name,770,320,20,20,70,1,1,0.8,true)
    ui.removeTextArea(61,name)
    ui.removeTextArea(75,name)
        end
       
         if callback=="ikinci" then                
ui.addTextArea(510,"Bu Minioyun  Kuralý üstten gelen <VP><b>Draglardan</b> kaçmak <N>ve <VP><b>Peyniri Alýp Yuvaya Girmektir</b>.<N></p></p>",name,250,60,200,300,1,1,0.8,true)
    ui.addTextArea(62,"<p align='center'><a href='event:kurucukapat'><b><R>X</b></a></p>",name,770,220,20,20,70,1,1,0.8,true)
    ui.addTextArea(63,"<p align='center'><a href='event:birinci'><b><R>1</b></a></p>",name,770,270,20,20,70,1,1,0.8,true)
    ui.addTextArea(64,"<p align='center'><a href='event:ikinci'><b><R>2</b></a></p>",name,770,320,20,20,70,1,1,0.8,true)
    ui.removeTextArea(61,name)
    ui.removeTextArea(74,name)
    end
end