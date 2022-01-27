data={}
vampire = {}
vampires = {}
dataname = {}
mice=0
t=0

tfm.exec.disableAutoShaman(true);
tfm.exec.disableAutoNewGame(true);
maps = {352381,355957,501711,611320,425030,2796001,198715,332210,391831,208162,299971,2726034,356722,744038,2176620,6438169,241295,4747722,444490,244699,475151,350251,2089069,5067265,283715,2076632,6572872,470687,3854268,406982,407294,4148332}
--maps = {6726048,2439792,1617965,953868,1675985,1387919,2491484,1048633,2374713,4922898}
--maps = {6878399}

PV = {7,8,9,10,11,13}
tfm.exec.chatMessage("<j>VampNight!!")
system.disableChatCommandDisplay("give", true)

function Vampire(name)
for i,vampire in ipairs(vampire) do
if name==vampire then
return true
end
end
return false
end
function Vampires(name)
for i,vampires in ipairs(vampires) do
if name==vampires then
return true
end
end
return false
end
function Dataname(name)
for i,dataname in ipairs(dataname) do
if name==dataname then
return true
end
end
return false
end

function addData(name)
data[name]={won=0
,kill=0,vamp=0,lang=tfm.get.room.playerList[name].community,
PV=0---????
,item="",spirit="false",speed="false",acrobat="false",skill="false"}
end

function eventNewPlayer(name)
mice=mice+1
players = {};
for p,_ in pairs (tfm.get.room.playerList) do
table.insert(players,name);
end
if Dataname(name) then else
addData(name)
table.insert(dataname,name)
end
if data[name].lang == "ar" then
tfm.exec.chatMessage("<j>!!VampNight ???? ?? ??",name)
else
tfm.exec.chatMessage("<j>VampNight'e hoþgeldin!",name)
end
end


for name,player in pairs(tfm.get.room.playerList) do
mice=mice+1
addData(name)
table.insert(dataname,name)
end

function eventKeyboard(name, key, down, x, y)
if key == 32 then
if Vampire(name) then
if vampFly then
tfm.exec.movePlayer(name,0,0,false,0,-50,false)
end
end
elseif key == 70 then
if data[name].skill == "true" then
if data[name].item == "spirit" then
tfm.exec.displayParticle(12,x,y+30)
tfm.exec.movePlayer(name,0,0,true,0,-100,false)
data[name].skill = "false"
elseif data[name].item == "speed" then
if tfm.get.room.playerList[name].isFacingRight then
tfm.exec.displayParticle(26,x+20,y)
tfm.exec.displayParticle(26,x+30,y)
tfm.exec.displayParticle(26,x+40,y)
tfm.exec.displayParticle(26,x+50,y)
tfm.exec.movePlayer(name,0,0,true,100,0,false)
data[name].skill = "false"
else
tfm.exec.displayParticle(26,x-20,y)
tfm.exec.displayParticle(26,x-30,y)
tfm.exec.displayParticle(26,x-40,y)
tfm.exec.displayParticle(26,x-50,y)
tfm.exec.movePlayer(name,0,0,true,-100,0,false)
data[name].skill = "false"
end
elseif data[name].item == "acrobat" then
if tfm.get.room.playerList[name].isFacingRight then
tfm.exec.displayParticle(35,x+20,y,0,0,0,0)
tfm.exec.movePlayer(name,x+65,0)
data[name].skill = "false"
else
tfm.exec.displayParticle(35,x-20,y,0,0,0,0)
tfm.exec.movePlayer(name,x-65,0)
data[name].skill = "false"
end
end
else
if data[name].lang == "ar" then
tfm.exec.chatMessage("<r>????? ??????? ??? ?????? ??? ??? ????? ?? ?? ????",name)
else
tfm.exec.chatMessage("<r>You can use this tool one time for every round",name)
end
end
end
end

removeshopp = function (name,id)
ui.removeTextArea(9 ..id.. 3621,name);
ui.removeTextArea(9 ..id.. 3622,name);
ui.removeTextArea(9 ..id.. 3623,name);
ui.removeTextArea(9 ..id.. 3624,name);
ui.removeTextArea(9 ..id.. 3625,name);
ui.removeTextArea(9 ..id.. 3626,name);
ui.removeTextArea(9 ..id.. 3627,name);
ui.removeTextArea(9 ..id.. 3628,name);
ui.removeTextArea(9 ..id.. 3629,name);
ui.removeTextArea(9 ..id.. 3630,name);
ui.removeTextArea(9 ..id.. 3631,name);
end

twf = {
ui = {

popups = {},

createPopup = function (id, title,tt, text, player, buttons, closable,shopbt,textbt, x, y, w, h, alpha, U) 
if tt== true then
tt=" _______________________<br>"
end
if tt== false then
tt=""
end
ui.addTextArea(9 ..id.. 36 .. 21, "",player,x+-2,y+18,w+24,h+14,0x2E221B,0x2E221B,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 22, "",player,x+-1,y+19,w+22,h+12,0x986742,0x986742,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 23, "",player,x+2,y+22,w+16,h+6,0x171311,0x171311,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 24, "",player,x+3,y+23,w+14,h+4,0x0C191C,0x0C191C,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 25, "",player,x+4,y+24,w+12,h+2,0x24474D,0x24474D,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 26, "",player,x+5,y+25,w+10,h+0,0x183337,0x183337,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 27, "<p align='center'><font size='15' face='verdana'><V><b>"..title.."</b></p></font><R>"..tt.."<p align='left'><font size='12' /><N>\n"..text,player,x+6,y+26,w+8,h+-2,0x122528,0x122528,alpha,true);

if closable then
ui.addTextArea(9 ..id.. 36 .. 28, "",player,x+15,y+h-20+25,w-10,15,0x5D7D90,0x5D7D90,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 29, "",player,x+15,y+h-20+27,w-10,15,0x11171C,0x11171C,alpha,true); 
ui.addTextArea(9 ..id.. 36 .. 30, "<p align='center'><a href='event:closeTWFPopup_".. 9 ..id.. 36 .."'><N>Close</a>", player,x+15,y+h-20+26,w-10,15,0x3C5064,0x3C5064,alpha,true);

end;

if shopbt then
ui.addTextArea(9 ..id.. 36 .. 28, "",player,x+15,y+h-20+25,w-10,15,0x5D7D90,0x5D7D90,alpha,true);
ui.addTextArea(9 ..id.. 36 .. 29, "",player,x+15,y+h-20+27,w-10,15,0x11171C,0x11171C,alpha,true); 
ui.addTextArea(9 ..id.. 36 .. 30, "<p align='center'>"..textbt.."", player,x+15,y+h-20+26,w-10,15,0x3C5064,0x3C5064,alpha,true);

end;


twf.ui.popups[tostring("9"..id.."36")] = 9 ..id.. 36;

end,

removePopup = function (id, player) -- Define the var as a function.
ui.removeTextArea(twf.ui.popups[id] .. 21, player);
ui.removeTextArea(twf.ui.popups[id] .. 22, player);
ui.removeTextArea(twf.ui.popups[id] .. 23, player);
ui.removeTextArea(twf.ui.popups[id] .. 24, player);
ui.removeTextArea(twf.ui.popups[id] .. 25, player);
ui.removeTextArea(twf.ui.popups[id] .. 26, player);
ui.removeTextArea(twf.ui.popups[id] .. 27, player);
ui.removeTextArea(twf.ui.popups[id] .. 28, player);
ui.removeTextArea(twf.ui.popups[id] .. 29, player);
ui.removeTextArea(twf.ui.popups[id] .. 30, player);
end,

createLabel = function (id, text, player, x, y)
ui.addTextArea(9 ..id.. 72 .. 22, "<font color='#000000' size='14'>"..text.."</font>", player, x - 1, y, 600, 20, nil, nil, 0.0, true);
ui.addTextArea(9 ..id.. 72 .. 22, "<font color='#000000' size='14'>"..text.."</font>", player, x + 1, y, 600, 20, nil, nil, 0.0, true);
ui.addTextArea(9 ..id.. 72 .. 22, "<font color='#000000' size='14'>"..text.."</font>", player, x, y - 1, 600, 20, nil, nil, 0.0, true);
ui.addTextArea(9 ..id.. 72 .. 22, "<font color='#000000' size='14'>"..text.."</font>", player, x, y + 1, 600, 20, nil, nil, 0.0, true);
ui.addTextArea(9 ..id.. 72 .. 21, "<font color='#ffffff' size='14'>"..text.."</font>", player, x, y, 600, 20, nil, nil, 0.0, true);
end

},

trigger = {
popupClose = function (popupId, playerName, callback)

if string.sub(callback, 0, 14) == "closeTWFPopup_" then
twf.ui.removePopup(callback:sub(15), playerName);
removeshopp(playerName,2)
removeshopp(playerName,3)
removeshopp(playerName,4)
removeshopp(playerName,5)
removeshopp(playerName,6)
end
end;
}
}

function openshop(playerName)
twf.ui.createPopup(2,"",false,"",playerName,"",false,false,"", 120,75, 100, 200, 1, true)
if data[playerName].lang == "ar" then
twf.ui.createPopup(1,"<font size='20'>????</font>","<r>__________________","",playerName,"",true,false,"", 210,50, 390, 250, 1, true)
else
twf.ui.createPopup(1,"<font size='20'>Shop</font>","<r>__________________","",playerName,"",true,false,"", 210,50, 390, 250, 1, true)
end
twf.ui.createPopup(6,"</b></b><font size='9'><j>"..data[playerName].PV.."<V>$",false,"",playerName,"",false,false,"", 131.5,90, 40, 28, 1, true)
if data[playerName].spirit == "false" then
twf.ui.createPopup(3,"Spirit",false,"",playerName,"",false,true,"<j><a href='event:shop_spirit'>1000", 230,130, 90, 110, 1, true)
elseif data[playerName].spirit == "true" then
if data[playerName].item == "spirit" then
if data[playerName].lang == "ar" then
twf.ui.createPopup(3,"Spirit",false,"",playerName,"",false,true,"<font size='10'><v>?? ???????", 230,130, 90, 110, 1, true)
else
twf.ui.createPopup(3,"Spirit",false,"",playerName,"",false,true,"<font size='10'><v>Unequip", 230,130, 90, 110, 1, true)
end
else
if data[playerName].lang == "ar" then
twf.ui.createPopup(3,"Spirit",false,"",playerName,"",false,true,"<j><font size='10'><a href='event:item_spirit'>??????", 230,130, 90, 110, 1, true)
else
twf.ui.createPopup(3,"Spirit",false,"",playerName,"",false,true,"<j><font size='10'><a href='event:item_spirit'>Equip", 230,130, 90, 110, 1, true)
end
end
end
if data[playerName].speed == "false" then
twf.ui.createPopup(4,"Speed",false,"",playerName,"",false,true,"<j><a href='event:shop_speed'>2000", 360,130, 90, 110, 1, true)
elseif data[playerName].speed == "true" then
if data[playerName].item == "speed" then
if data[playerName].lang == "ar" then
twf.ui.createPopup(4,"Speed",false,"",playerName,"",false,true,"<v><font size='10'>?? ???????", 360,130, 90, 110, 1, true)
else
twf.ui.createPopup(4,"Speed",false,"",playerName,"",false,true,"<v><font size='10'>Unequip", 360,130, 90, 110, 1, true)
end
else
if data[playerName].lang == "ar" then
twf.ui.createPopup(4,"Speed",false,"",playerName,"",false,true,"<j><font size='10'><a href='event:item_speed'>??????", 360,130, 90, 110, 1, true)
else
twf.ui.createPopup(4,"Speed",false,"",playerName,"",false,true,"<j><font size='10'><a href='event:item_speed'>Equip", 360,130, 90, 110, 1, true)
end
end
end
if data[playerName].acrobat == "false" then
twf.ui.createPopup(5,"Acrobat",false,"",playerName,"",false,true,"<j><a href='event:shop_acrobat'>3000", 490,130, 90, 110, 1, true)
elseif data[playerName].acrobat == "true" then
if data[playerName].item == "acrobat" then
if data[playerName].lang == "ar" then
twf.ui.createPopup(5,"Acrobat",false,"",playerName,"",false,true,"<v><font size='10'>?? ???????", 490,130, 90, 110, 1, true)
else
twf.ui.createPopup(5,"Acrobat",false,"",playerName,"",false,true,"<v><font size='10'>Unequip", 490,130, 90, 110, 1, true)
end
else
if data[playerName].lang == "ar" then
twf.ui.createPopup(5,"Acrobat",false,"",playerName,"",false,true,"<j><font size='10'><a href='event:item_acrobat'>??????", 490,130, 90, 110, 1, true)
else
twf.ui.createPopup(5,"Acrobat",false,"",playerName,"",false,true,"<j><font size='10'><a href='event:item_acrobat'>Equip", 490,130, 90, 110, 1, true)
end
end
end
end

function SetProfil(ProfilName,name)
if data[name].lang == "ar" then
twf.ui.createPopup(1, "<font size='20'><b>"..ProfilName.."</b></font>","<ch>___________________", "<p align='right'><font size='14'><br><v>"..data[ProfilName].won.." <n>: ??? ???? ??????<br><br><v>"..data[ProfilName].kill.." <n>: ??? ???? ?????<br><br><v>"..data[ProfilName].vamp.." <n>: ??? ???? ???????<br><br><br><p align='center'><j>"..tfm.get.room.playerList[ProfilName].community.." <n>: ???????",name, buttonsArray, true,false,"", 280,50, 210, 250, 1, true)
else
twf.ui.createPopup(1, "<font size='20'><b>"..ProfilName.."</b></font>","<ch>___________________", "<font size='14'><br><n>Total Escape : <v>"..data[ProfilName].won.." <br><br><n>Total death : <v>"..data[ProfilName].kill.." <br><br><n>Total King vampires : <v>"..data[ProfilName].vamp.." <br><br><br><p align='center'><n>Community : <j>"..tfm.get.room.playerList[ProfilName].community.." ",name, buttonsArray, true,false,"", 280,50, 210, 250, 1, true)
end
end


function eventTextAreaCallback (textAreaId, playerName, callback)
twf.trigger.popupClose(textAreaId, playerName, callback);

if callback=="help" then
if data[playerName].lang == "ar" then
twf.ui.createPopup(1, "<b><font size='20'>??????</font></b>",true, "<p align='right'><font size='14'><j>: ???? ???????<br></j><font size='12'>?? ?????? ???? ?? ?????? ???? ????? ? ????? ??? ????? ??? .?? ????? ?????? ? ???? ?????<br><font size='14'><j>: ???? ??????<br></j><font size='12'>??? ??????? ????? ?? ?????? ???? ?? ?????? ??? ??????? ?? .???? ????? ? ????? ? ???? ??? ??? ????? ????? ?????<br><font size='14'><j>: ???? ???? ????????<br></j><font size='12'>??? ??? ???? ????????, ???? ?????? ????? ?? ???? ??????? ???? ???? ?????? ???? ???? ???? (???????) ???????? ??? ?????? ???? ?????? ??? ?? ?????, ???? ???? ????? ??????? .?? ??? ?? ???????? ???? ???",playerName, buttonsArray, true,false,"", 210, 65, 352, 260, 1, true)
else
twf.ui.createPopup(1, "<b><font size='20'>Yardým</font></b>",true, "<font size='14'><j>Farelerin Görevi :<br></j><font size='12'>vampirler seni yakalayýp öldürmeden önce peyi alýp yuvaya girmelisin.<br><font size='14'><j>Vampirlerin görevi : <br></j><font size='12'>Fareler peyi alýp yuvaya girmeden önce Kral vampir fareleri yakalayýp öldürmelidir.<br><font size='14'><j>Kral Vampirin görevi : <br></j><font size='12'>Vampir kralsanýz ekibinizdeki farelere yardým etmelisiniz. Uçuþ (space) yeteneði sadece sizde vardýr. O yeteneði kullanarak kendinize avantajl saðlayarak fareleri yuvaya girmeden öldürmelisiniz.",playerName, buttonsArray, true,false,"", 210, 65, 352, 270, 1, true)
end
elseif callback=="info" then
if data[playerName].lang == "ar" then
twf.ui.createPopup(1, "<b><font size='20'>???????</font></b>",true, "<br><p align='right'><font size='14'><v><b> : ??????</b></v><br>Mmmm123 , turkitutu<br><v><b> </b></v><br><br></font><br><font size='11'></p>",playerName, buttonsArray, true,false,"", 270,70, 260, 190, 1, true)
else
twf.ui.createPopup(1, "<b><font size='20'>Yapýmcýlar</font></b>",true, "<br><font size='14'><v><b>Yapýmcý : </b></v>Devilstrkpro<br><v><b>Yardýmcý Yapýmcýlar : </b></v>Salsalb - Negion</font><br><font size='11'></p>",playerName, buttonsArray, true,false,"", 270,70, 280, 190, 1, true)
end
elseif callback=="profil" then
SetProfil(playerName,playerName)
elseif callback=="shop" then
openshop(playerName)
elseif callback=="shop_spirit" then
if data[playerName].PV >= 1000 then
data[playerName].PV=data[playerName].PV-1000
data[playerName].spirit= "true"
openshop(playerName)
else
openshop(playerName)
if data[playerName].lang == "ar" then
tfm.exec.chatMessage("<r>?? ???? ?????? ??????? ????? ??? ??????",playerName)
else
tfm.exec.chatMessage("<r>You don't have enough points to buy this item",playerName)
end
end
elseif callback=="shop_speed" then
if data[playerName].PV >= 2000 then
data[playerName].PV=data[playerName].PV-2000
data[playerName].speed= "true"
openshop(playerName)
else
openshop(playerName)
if data[playerName].lang == "ar" then
tfm.exec.chatMessage("<r>?? ???? ?????? ??????? ????? ??? ??????",playerName)
else
tfm.exec.chatMessage("<r>You don't have enough points to buy this item",playerName)
end
end
elseif callback=="shop_acrobat" then
if data[playerName].PV >= 3000 then
data[playerName].PV=data[playerName].PV-3000
data[playerName].acrobat= "true"
openshop(playerName)
else
openshop(playerName)
if data[playerName].lang == "ar" then
tfm.exec.chatMessage("<r>?? ???? ?????? ??????? ????? ??? ??????",playerName)
else
tfm.exec.chatMessage("<r>You don't have enough points to buy this item",playerName)
end
end
elseif callback=="item_spirit" then
data[playerName].item = "spirit"
openshop(playerName)
if data[playerName].lang == "ar" then
tfm.exec.chatMessage("?? ????? ????????? Spirit ?? ???",playerName)
tfm.exec.chatMessage("?????????? <j>[F]</j> ????",playerName)
else
tfm.exec.chatMessage("Spirit has been added in use position",playerName)
tfm.exec.chatMessage("for use it press <j>[F]</j>",playerName)
end
elseif callback=="item_speed" then
data[playerName].item = "speed"
openshop(playerName)
if data[playerName].lang == "ar" then
tfm.exec.chatMessage("?? ????? ????????? Speed ?? ???",playerName)
tfm.exec.chatMessage("?????????? <j>[F]</j> ????",playerName)
else
tfm.exec.chatMessage("Speed has been added in use position",playerName)
tfm.exec.chatMessage("for use it press <j>[F]</j>",playerName)
end
elseif callback=="item_acrobat" then
data[playerName].item = "acrobat"
openshop(playerName)
if data[playerName].lang == "ar" then
tfm.exec.chatMessage("?? ????? ????????? Acrobat ?? ???",playerName)
tfm.exec.chatMessage("?????????? <j>[F]</j> ????",playerName)
else
tfm.exec.chatMessage("Acrobat has been added in use position",playerName)
tfm.exec.chatMessage("for use it press <j>[F]</j>",playerName)
end
end
end

buttonsArray = "";


function eventChatCommand(name,cmd)
tfm.exec.setVampirePlayer(name)
if cmd== "p" then
SetProfil(name,name)
elseif cmd:sub(0,4) == "lang" then
data[name].lang=cmd:sub(6)
end
if name== "Devilstrkpro" then
if cmd:sub(0,4) == "give" then
data[cmd:sub(6)].PV=data[cmd:sub(6)].PV+1000
end
elseif cmd== "help" then
if data[playerName].lang == "ar" then
twf.ui.createPopup(1, "<b><font size='20'>??????</font></b>",true, "<p align='right'><font size='14'><j>: ???? ???????<br></j><font size='12'>?? ?????? ???? ?? ?????? ???? ????? ? ????? ??? ????? ??? .?? ????? ?????? ? ???? ?????<br><font size='14'><j>: ???? ??????<br></j><font size='12'>??? ??????? ????? ?? ?????? ???? ?? ?????? ??? ??????? ?? .???? ????? ? ????? ? ???? ??? ??? ????? ????? ?????<br><font size='14'><j>: ???? ???? ????????<br></j><font size='12'>??? ??? ???? ????????, ???? ?????? ????? ?? ???? ??????? ???? ???? ?????? ???? ???? ???? (???????) ???????? ??? ?????? ???? ?????? ??? ?? ?????, ???? ???? ????? ??????? .?? ??? ?? ???????? ???? ???",playerName, buttonsArray, true,false,"", 210, 65, 352, 260, 1, true)
else
twf.ui.createPopup(1, "<b><font size='20'>Help</font></b>",true, "<font size='14'><j>Farelerin Görevi :<br></j><font size='12'>vampirler seni yakalayýp öldürmeden önce peyi alýp yuvaya girmelisin.<br><font size='14'><j>Vampirlerin görevi : <br></j><font size='12'>Fareler peyi alýp yuvaya girmeden önce Kral vampir fareleri yakalayýp öldürmelidir.<br><font size='14'><j>Kral Vampirin görevi : <br></j><font size='12'>Vampir kralsanýz ekibinizdeki farelere yardým etmelisiniz. Uçuþ (space) yeteneði sadece sizde vardýr. O yeteneði kullanarak kendinize avantajl saðlayarak fareleri yuvaya girmeden öldürmelisiniz.",playerName, buttonsArray, true,false,"", 210, 65, 352, 270, 1, true)
end
elseif cmd:sub(0,1) == "p" then
if Dataname(cmd:sub(3)) then
SetProfil(cmd:sub(3),name)
else
SetProfil(name,name)
end
elseif cmd== "shop" then
openshop(name)
end
end

function setPlayerList ()
players = {};
for p,_ in pairs (tfm.get.room.playerList) do
table.insert(players, p);
end
return players;
end


function shuffle (t)
local n = #t;

while (n >= 2) do
local k = math.random(n);
t[n], t[k] = t[k], t[n];
n = n - 1;
end

return t;
end

shuffle(setPlayerList());



function eventNewGame()
ui.setMapName ("<v>#Vamp<r>Night")
t=0
vampFly= false
canImage= false
tfm.exec.setPlayerScore (vamp1,0)
vampire = {}
vampire = {players[math.random(#players)]}
vamp1 = table.concat(vampire,'\n')
tfm.exec.bindKeyboard(vamp1, '32', true, true)
for v in pairs(tfm.get.room.playerList) do
tfm.exec.setNameColor(v,0x8A8886)
data[v].skill = "true"
end
tfm.exec.setGameTime (90)
alive=0
for name,player in pairs(tfm.get.room.playerList) do
alive=alive+1
end
canVamp = false
canVamps = true
end

function vampKing()
tfm.exec.setVampirePlayer(vamp1);
tfm.exec.setNameColor(vamp1,0x0B0B0B)
data[vamp1].vamp=data[vamp1].vamp+1
tfm.exec.addImage("1571ddad4e3.png", "%"..vamp1, -70, -40)
vampFly=true
end

function eventLoop(timePassed, timeLeft)
ui.addTextArea(444, "<V><p align='center'><B><v><j><a href='event:help'><font size='16'>?", nil, 20, 18, 15, nil, 0x000001, nil, 0.7,true)
ui.addTextArea(445, "<V><p align='center'><B><v><j><font size='16'><a href='event:info'>!",NIL, 50, 18, 15, nil, 0x000001, nil, 0.7,true)
ui.addTextArea(446, "<V><p align='center'><B><v><j><font size='16'><a href='event:profil'>P",NIL, 80, 18, 15, nil, 0x000001, nil, 0.7,true)
ui.addTextArea(447, "<V><p align='center'><B><v><j><font size='12'><a href='event:shop'>Dükkan",NIL, 113, 23, 00, 18, 0x000001, nil, 0.7,true)
for name in pairs(tfm.get.room.playerList) do
for keys, k in pairs({32,70}) do
tfm.exec.bindKeyboard(name, k, true, true)
end
end
if alive == 0 or timeLeft < 1000 then
nextRound();
end
t=t+1
if t==0 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 10")
elseif t==2 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 9")
elseif t==4 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 8")
elseif t==6 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 7")
elseif t==8 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 6")
elseif t==10 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 5")
elseif t==12 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 4")
elseif t==14 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 3")
elseif t==16 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 2")
elseif t==18 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Kral vampirin seçilmesien: <V> 1")
elseif t==20 then
ui.setMapName ("<v>#Vamp<r>Night<G> | </G><N>Vampir Kral :<J> "..vamp1.."")
elseif t==21 then
canVampss = false
canVamp = true
end
if t==20 then
vampires = {}
canVampss = true
if canVamps then
if mice<= 5 then
for v in pairs(tfm.get.room.playerList) do
tfm.exec.giveMeep (v)
end
vampKing()
end
if mice>= 5 then
for v in pairs(tfm.get.room.playerList) do
tfm.exec.giveMeep (v)
end
tfm.exec.setVampirePlayer(players[math.random(#players)]);
end
if mice>= 10 then
tfm.exec.setVampirePlayer(players[math.random(#players)]);
end
if mice>= 15 then
tfm.exec.setVampirePlayer(players[math.random(#players)]);
end
if mice>= 20 then
tfm.exec.setVampirePlayer(players[math.random(#players)]);

end
end
end
end


function eventPlayerVampire(playerVAMP)
if canVampss then
table.insert(vampires,playerVAMP)
end
if canVamp then
data[playerVAMP].kill=data[playerVAMP].kill+1
for v in pairs(tfm.get.room.playerList) do
if Vampires(v) then
if tfm.get.room.playerList[v].isDead == true then else
data[v].PV=data[v].PV+PV[math.random(#PV)]
end
end
if data[v].lang == "ar" then
tfm.exec.chatMessage("<R>??? ?? ???????? <v>"..playerVAMP.."</v> ????? ???",v)
else
tfm.exec.chatMessage("<v>"..playerVAMP.." <r>has been died by vampires",v)
end
end
tfm.exec.killPlayer(playerVAMP)
tfm.exec.displayParticle(13, tfm.get.room.playerList[playerVAMP].x, tfm.get.room.playerList[playerVAMP].y, 0, 0, 0, 5, nil)
tfm.exec.displayParticle(13, tfm.get.room.playerList[playerVAMP].x, tfm.get.room.playerList[playerVAMP].y, 0, 0, 5, 0, nil)
tfm.exec.displayParticle(13, tfm.get.room.playerList[playerVAMP].x, tfm.get.room.playerList[playerVAMP].y, 0, 0, 0, -5, nil)
tfm.exec.displayParticle(13, tfm.get.room.playerList[playerVAMP].x, tfm.get.room.playerList[playerVAMP].y, 0, 0, -5, 0, nil)
end
end


function nextRound()
tfm.exec.newGame(maps[math.random(#maps)]);
end


function eventPlayerDied(name)
local i=0
local n
for pname,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
n=pname
end
end
if i==0 then
tfm.exec.newGame(maps[math.random(#maps)])
elseif i==1 then
tfm.exec.setGameTime(20)
end
end

function eventPlayerWon ( playerName, timeElapsed, timeElapsedSinceRespawn )
time= timeElapsed/100
for v in pairs(tfm.get.room.playerList) do
if data[v].lang == "ar" then
tfm.exec.chatMessage("<v> "..time.." <J>?? ????? ? ???? ????? ?? <v>"..playerName.." </v>????",v)
else
tfm.exec.chatMessage("<v>"..playerName.." <j>can escape and enter the hole in <v>"..time.."",v)
end
end
data[playerName].won=data[playerName].won+1
data[playerName].PV=data[playerName].PV+16
end


function eventPlayerLeft (name)
players = {};
mice=mice-1
for p,_ in pairs (tfm.get.room.playerList) do
table.insert(players, p);
end
end

tfm.exec.newGame(maps[math.random(#maps)]);

