tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
admins={Devilstrkpro=1}
players={}
toDespawn={}
buggfix=0
desw = 5
drag1={} drag2={} drag3={} drag4={} drag5={} drag6={} drag7={}
sistemdrg1={} sistemdrg2={} sistemdrg3={} sistemdrg4={} sistemdrg5={} sistemdrg6={} sistemdrg7={}
draglarimopen={}
maps={521833,401421,541917,541928,541936,541943,527935,559634,559644,888052,878047,885641,770600,770656,772172,891472,589736,589800,589708,900012,901062,754380,901337,901411,907870,910078,1190467,1252043,1124380,1016258,1252299,1255902,1256808,986790,1285380,1271249,1255944,1255983,1085344,1273114,1276664,1279258,1286824,1280135,1280342,1284861,1287556,1057753,1196679,1288489,1292983,1298164,1298521,1293189,1296949,1308378,1311136,1314419,1314982,1318248,1312411,1312589,1312845,1312933,1313969,1338762,1339474,1349878,1297154,644588,1351237,1354040,1354375,1362386,1283234,1370578,1306592,1360889,1362753,1408124,1407949,1407849,1343986,1408028,1441370,1443416,1389255,1427349,1450527,1424739,869836,1459902,1392993,1426457,1542824,1533474,1561467,1563534,1566991,1587241,1416119,1596270,1601580,1525751,1582146,1558167,1420943,1466487,1642575,1648013,1646094,1393097,1643446,1545219,1583484,1613092,1627981,1633374,1633277,1633251,1585138,1624034,1616785,1625916,1667582,1666996,1675013,1675316,1531316,1665413,1681719,1699880,1688696,623770,1727243,1531329,1683915,1689533,1738601,3756146,912118,3326933,3722005,3566478,1456622,1357994,1985670,1884075,1708065,1700322,2124484,3699046,2965313,4057963,4019126,3335202,2050466}
tfm.exec.chatMessage=print
function eventNewPlayer(name)
for i,key in ipairs({32,40,83}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
for nm in pairs(admins) do
ui.addTextArea(6, "<p align='center'><font size='13'><b><a href='event:admozellikler'><r>Admin", nm, 542, 25, 77, 26, 0x283135, 0x283135, 0.6, true)
end
players[name]={timestamp=os.time(),offsets={x=2, y=10},death=0,kazanma=0,rounds=0,rank=0,pro=0,para=0,drag=0,surv=0,arnkzn=0,arntur=0,dragt=17}
end
for adm in pairs(admins) do
drag1[adm]=1
drag2[adm]=1
drag3[adm]=1
drag4[adm]=1
drag5[adm]=1
drag6[adm]=1
drag7[adm]=1
end
for name in pairs(tfm.get.room.playerList) do
draglarimopen[name]=1
end
function eventKeyboard(name,key,down,x,y)
if (key==32 or key==40 or key==83) and not tfm.get.room.playerList[name].isDead and started then
if players[name].timestamp < os.time()-1000 then
local id=tfm.exec.addShamanObject(players[name].dragt, x+(tfm.get.room.playerList[name].isFacingRight and players[name].offsets.x or -players[name].offsets.x), y+players[name].offsets.y, tfm.get.room.playerList[name].isFacingRight and 90 or 270)
players[name].drag=players[name].drag+1
players[name].timestamp=os.time()
table.insert(toDespawn,{os.time(),id})
end
end
end
function eventChatCommand(name,cmd)
local args={}
for arg in cmd:gmatch("%S+") do
table.insert(args,arg)
end
if cmd=="levelatla" and admins[name] then
players[name].pro=players[name].pro+1
ui.addTextArea(123, "<p align='center'><r><font size='20'><b>"..name.." <BV>"..players[name].pro.." <v>Level <j>Oldu !", nil, 188, 21, 461, 41, 0x171819, 0x171819, 0.7,true)
timer=0
end
if cmd=="bugfix" then
ui.addTextArea(81, "<font color='#32FF00'>Profil Düzgün Çalýþýyor / M.E D.M /", name, 8, 28, 209, 22, 0x1, 0x1, 0.6, true)
ui.addTextArea(82, "<font color='#32FF00'>X Y Sýfýrlanma Basarýlý / M.E D.M /", name, 368, 66, 206, 23, 0x1, 0x1, 0.6, true)
ui.addTextArea(83, "<font color='#32FF00'>Default Drag Gecis / M.E D.M /", name, 589, 66, 206, 23, 0x1, 0x1, 0.6, true)
ui.addTextArea(84, "<font color='#32FF00'>Drag Sistemi Düzgün Çalýþýyor / M.E D.M /", name, 235, 29, 256, 23, 0x1, 0x1, 0.6, true)
ui.addTextArea(85, "<font color='#32FF00'>Yer Düzeni Kontrol Edildi / M.E D.M /", name, 7, 67, 220, 23, 0x1, 0x1, 0.6, true)
ui.addTextArea(85, "<r>Ölüsünüz / M.E D.M /", name, 7, 67, 220, 23, 0x1, 0x1, 0.6, true)
if not tfm.get.room.playerList[name].isDead and started then
ui.addTextArea(85, "<font color='#32FF00'>Yer Düzeni Kontrol Edildi / M.E D.M /", name, 7, 67, 220, 23, 0x1, 0x1, 0.6, true)
end
buggfix=0
if tfm.get.room.playerList[name] then
local y = tfm.get.room.playerList[name].y
local x = tfm.get.room.playerList[name].x
tfm.exec.movePlayer(name,x,y)
players[name]={timestamp=os.time(),offsets={x=2, y=10},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=17}
for _,v in pairs ({99999999999999,100000000000000,100000000000002,100000000000003,100000000000004,100000000000001,12334194949494,100000000000006,100000000000007,999,1001,0,1000,1002,1003,1004,1005,1031,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030}) do
ui.removeTextArea(v,name)
end
draglarimopen[name]=nil
draglarimopen[name]=1
end
for drag in pairs(drag1) do
sistemdrg1[drag]=1
end
for drag in pairs(drag2) do
sistemdrg2[drag]=1
end
for drag in pairs(drag3) do
sistemdrg3[drag]=1
end
for drag in pairs(drag4) do
sistemdrg4[drag]=1
end
for drag in pairs(drag5) do
sistemdrg5[drag]=1
end
for drag in pairs(drag6) do
sistemdrg6[drag]=1
end
for drag in pairs(drag7) do
sistemdrg7[drag]=1
end
for name in pairs(tfm.get.room.playerList) do
drag1[name]=nil
drag2[name]=nil
drag3[name]=nil
drag4[name]=nil
drag5[name]=nil
drag6[name]=nil
drag7[name]=nil
end
for drag in pairs(sistemdrg1) do
drag1[drag]=1
end
for drag in pairs(sistemdrg2) do
drag2[drag]=1
end
for drag in pairs(sistemdrg3) do
drag3[drag]=1
end
for drag in pairs(sistemdrg4) do
drag4[drag]=1
end
for drag in pairs(sistemdrg5) do
drag5[drag]=1
end
for drag in pairs(sistemdrg6) do
drag6[drag]=1
end
for drag in pairs(sistemdrg7) do
drag7[drag]=1
end
sistemdrg1[name]=nil
sistemdrg2[name]=nil
sistemdrg3[name]=nil
sistemdrg4[name]=nil
sistemdrg5[name]=nil
sistemdrg6[name]=nil
sistemdrg7[name]=nil
end
if args[1]=="profile" and tfm.get.room.playerList[args[2]] then
ui.addTextArea(999, "", name, 289, 51, 281, 297, 0x1, 0x1,1,true)
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..args[2].."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[args[2]].offsets.x.."<br> <g>• Offset y : <v>"..players[args[2]].offsets.y.."<br> <g>• Drag Numarasý : <j>"..players[args[2]].dragt.."<br><N>Eventler<br><g>• Ölüm:<j> "..players[args[2]].death.."<br><g>• XP: <j>"..players[args[2]].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[args[2]].drag.."<br><g>• Turlar :<j> "..players[args[2]].rounds.."<br><g>• Rank:<j> "..players[args[2]].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[args[2]].surv.."<br><g>• Kazanmalar:<j> "..players[args[2]].arnkzn.."<br><g>• Turlar:<j> "..players[args[2]].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Para: <j>"..players[args[2]].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1000, "", name, 177, 86, 97, 91, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
end
for _,v in pairs ({1000,1002,1003,1004,1005,1031,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030}) do
ui.removeTextArea(v,name)
end
if args[1]=="off" and admins[name]==1 then
if tonumber(args[2]) and tonumber(args[3]) then
players[name].offsets.x=tonumber(args[2])
players[name].offsets.y=tonumber(args[3])
else
players[name].offsets.x=2
players[name].offsets.y=10
end
tfm.exec.chatMessage("Yerler Deðiþtirildi X:"..players[name].offsets.x.." Y:"..players[name].offsets.y,name)
end
end
function eventNewGame(name)
for name in pairs(players) do
players[name].rounds=players[name].rounds+1
end
started=false
end
function eventTextAreaCallback(id, name, event)
if event=="plusX" then
players[name].offsets.x=players[name].offsets.x+1
ui.addTextArea(1031, "", name, players[name].offsets.x+224, players[name].offsets.y+135, 14, 13, 0x141413, 0xc2ff00, 0.5, true)
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
if players[name].offsets.x==26 then
players[name].offsets.x=players[name].offsets.x-1
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
end
elseif event=="plusY" then
players[name].offsets.y=players[name].offsets.y+1
ui.addTextArea(1031, "", name, players[name].offsets.x+224, players[name].offsets.y+135, 14, 13, 0x141413, 0xc2ff00, 0.5, true)
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
if players[name].offsets.y==26 then
players[name].offsets.y=players[name].offsets.y-1
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
end
elseif event=="lessX" then
players[name].offsets.x=players[name].offsets.x-1
ui.addTextArea(1031, "", name, players[name].offsets.x+224, players[name].offsets.y+135, 14, 13, 0x141413, 0xc2ff00, 0.5, true)
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
if players[name].offsets.x==-26 then
players[name].offsets.x=players[name].offsets.x+1
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
end
elseif event=="lessY" then
players[name].offsets.y=players[name].offsets.y-1
ui.addTextArea(1031, "", name, players[name].offsets.x+224, players[name].offsets.y+135, 14, 13, 0x141413, 0xc2ff00, 0.5, true)
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
if players[name].offsets.y==-26 then
players[name].offsets.y=players[name].offsets.y+1
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
end
end
if event=="admozellikler" then
ui.addTextArea(6, "<p align='center'><font size='13'><b><a href='event:admozlkkpt'><r>Kapat", name, 542, 25, 77, 26, 0x283135, 0x283135, 0.6, true)
ui.addTextArea(12421, "<a href='event:levelatla'><r>Level<br><a href='event:parag'>Para<br><a href='event:objdegs'>Draglarý Aç<br><a href='event:mapgec'>Map Geç", name, 543, 62, 77, nil, 0x283135, 0x283135, 0.6, true)
end
if event=="mapgec" then
tfm.exec.newGame(maps[math.random(#maps)])
end
if event=="parag" then
ui.addPopup(0,2,"<p align='center'>Para Miktar",name,200,130,400,true)
end
if event=="levelatla" then
ui.addPopup(1,2,"<p align='center'>Kaç Level ?",name,200,130,400,true)
end
if event=="objdegs" then
ui.addPopup(3,2,"<p align='center'>Draglarý Ver",name,200,130,400,true)
end
if event=="admozlkkpt" then
ui.addTextArea(6, "<p align='center'><font size='13'><b><a href='event:admozellikler'><r>Admin", name, 542, 25, 77, 26, 0x283135, 0x283135, 0.6, true)
ui.removeTextArea(12421,name)
end
if event=="kapa" then
for _,v in pairs ({999,0,1000,1001,1002,1003,1004,1005,1031,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030}) do
ui.removeTextArea(v,name)
end
end
if event=="draglarim" then
draglarimopen[name]=nil
ui.addTextArea(99999999999999, "<p align='center'><font size='15'><v><b>Draglarým", name, 247, 153, 334, 26, 0x101112, 0x1, 0.8, true)
ui.addTextArea(100000000000001, "<p align='center'><font size='15'><v><b><a href='event:draglarmkapat'>Kapat", name, 591, 153, 84, 26, 0x101112, 0x1, 0.8, true)
for name in pairs(drag1) do
ui.addTextArea(100000000000000, "<bv>Þaman Dragý -<r><a href='event:shmdraguse'> Use", name, 258, 198, 120, 27, 0x101112, 0x1,1,true)
end
for name in pairs(drag3) do
ui.addTextArea(100000000000002, "<bv>Elma Dragý -<r><a href='event:elmadraguse'> Use", name, 452, 197, 120, 27, 0x101112, 0x1,1,true)
end
for name in pairs(drag2) do
ui.addTextArea(100000000000003, "<bv>Mum Dragý -<r><a href='event:mumdraguse'> Use", name, 260, 255, 120, 27, 0x101112, 0x1,1,true)
end
for name in pairs(drag4) do
ui.addTextArea(100000000000004, "<bv>Cam Dragý -<r><a href='event:camdraguse'> Use", name, 452, 256, 120, 27, 0x101112, 0x1, 1, true)
end
for name in pairs(drag5) do
ui.addTextArea(12334194949494, "<bv>Gorunmez Drag -<r><a href='event:ghostdraguse'> Use", name, 258, 306, 135, 27, 0x101112, 0x1, 1, true)
end
for name in pairs(drag6) do
ui.addTextArea(100000000000006, "<bv>Þeker Drag -<r><a href='event:sekerdraguse'> Use", name, 465, 305, 110, 27, 0x101112, 0x1, 1, true)
end
for name in pairs(drag7) do
ui.addTextArea(100000000000007, "<bv>Karpuz Drag -<r><a href='event:karpzdraguse'> Use", name, 365, 342, 119, 27, 0x101112, 0x1, 1, true)
end
end
if event=="ghostdraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1700}
end
if event=="draglarmkapat" then
for _,v in pairs ({99999999999999,100000000000000,100000000000002,100000000000003,100000000000004,100000000000001,12334194949494,100000000000006,100000000000007}) do
ui.removeTextArea(v,name)
draglarimopen[name]=1
end
end
if event=="sekerdraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1702}
end
if event=="karpzdraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1706}
end
if event=="mumdraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1703}
end
if event=="shmdraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1704}
end
if event=="elmadraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1705}
end
if event=="camdraguse" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1701}
end
if event=="profile" then
ui.addTextArea(999, "", name, 289, 51, 281, 297, 0x1, 0x1,1,true)
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1000, "", name, 177, 86, 97, 91, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
ui.addTextArea(1002, "<font color='#1'>|", name, 191, 111, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1003, "<font color='#1'>|", name, 191, 121, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1004, "<font color='#1'>|", name, 191, 130, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1005, "<font color='#1'>|", name, 191, 139, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1006, "<font color='#1'>|", name, 191, 149, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1007, "<font color='#1'>|", name, 191, 102, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1008, "<font color='#1'>|", name, 191, 95, 12, 22, 0x324650, 0x0, 0,true)
ui.addTextArea(1009, "<font color='#1'>-----", name, 194, 90, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1010, "<font color='#1'>-----", name, 217, 90, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1011, "<font color='#1'>-----", name, 194, 154, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1012, "<font color='#1'>-----", name, 218, 154, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1013, "<font color='#1'>-----", name, 240, 154, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1014, "<font color='#1'>-----", name, 239, 90, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1015, "<font color='#1'>|", name, 262, 149, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1016, "<font color='#1'>|", name, 262, 138, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1017, "<font color='#1'>|", name, 262, 127, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1018, "<font color='#1'>|", name, 262, 116, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1019, "<font color='#1'>|", name, 262, 106, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1020, "<font color='#1'>|", name, 262, 95, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1021, "<font color='#1'>-----", name, 193, 122, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1022, "<font color='#1'>-----", name, 216, 122, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1023, "<font color='#1'>-----", name, 240, 122, 36, 17, 0x324650, 0x0, 0,true)
ui.addTextArea(1024, "<font color='#1'>|", name, 229, 122, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1025, "<font color='#1'>|", name, 229, 133, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1026, "<font color='#1'>|", name, 229, 144, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1027, "<font color='#1'>|", name, 229, 148, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1028, "<font color='#1'>|", name, 229, 111, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1029, "<font color='#1'>|", name, 229, 100, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1030, "<font color='#1'>|", name, 229, 96, 12, 24, 0x324650, 0x0, 0,true)
ui.addTextArea(1031, "", name, players[name].offsets.x+224, players[name].offsets.y+135, 14, 13, 0x141413, 0xc2ff00, 0.5, true)
end
if event=="offsetsfabrika" then
players[name]={timestamp=os.time(),offsets={x=2, y=10},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=players[name].dragt}
ui.addTextArea(0, "<i><v><font size='30'><p align='center'>"..name.."</v></p><font size='12'><n> Ayarlar<br> <g>• Offset X : <v>"..players[name].offsets.x.." <j><a href='event:plusX'>[+]</a> <a href='event:lessX'>[-]</a><br> <g>• Offset y : <v>"..players[name].offsets.y.." <j><a href='event:plusY'>[+]</a> <a href='event:lessY'>[-]</a><g> <a href='event:offsetsfabrika'>Fabrika Ayarlarý</a><br> <g>• Drag Numarasý : <j>"..players[name].dragt.." <a href='event:draglarim'>Draglar</a><br><N>Eventler<br><g>• Ölüm:<j> "..players[name].death.."<br><g>• XP: <j>"..players[name].kazanma.."/65<br><g>• Atýlan Draglar:<j> "..players[name].drag.."<br><g>• Turlar :<j> "..players[name].rounds.."<br><g>• Rank:<j> "..players[name].pro.."<br><n>Arena<br><g>• Survivor:<j> "..players[name].surv.."<br><g>• Kazanmalar:<j> "..players[name].arnkzn.."<br><g>• Turlar:<j> "..players[name].arntur.."<br><n>Takým<br><g>• Kazanma:<j> 0<br><g>• Turlar:<j> 0<br><v>Paran: <j>"..players[name].para.." <v>TL", name, 288, 49, 281, 297, 0x324650, 0x324650,1,true)
ui.addTextArea(1001, "<p align='center'><b><r><b><i><font size='17'><a href='event:kapa'>x", name, 549, 43, 28, 35, 0x324650, 0x324650, 0,true)
ui.addTextArea(1031, "", name, players[name].offsets.x+224, players[name].offsets.y+135, 14, 13, 0x141413, 0xc2ff00, 0.5, true)
end
if event=="market" then
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
ui.addTextArea(12342, "<p align='center'><b><font size='15'><r><a href='event:mkapa'>[KAPAT]", name, 6, 220, 323, 27, 0x272a2c, 0x0, 0.9,true)
end
if event=="mkapa" then
ui.removeTextArea(12341,name)
ui.removeTextArea(12342,name)
end
if event=="defaultdrag" then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=17}
end
if event=="ghostdrag" and players[name].para>=1500 then
players[name].para=players[name].para-1500
drag5[name]=1
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1700}
end
if event=="sekerdrag" and players[name].para>=1000 then
players[name].para=players[name].para-1000
drag6[name]=1
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1702}
end
if event=="karpuzdrag" and players[name].para>=2000 then
players[name].para=players[name].para-2000
drag7[name]=1
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1707}
end
if event=="meep" and players[name].para>=120 then
players[name].para=players[name].para-120
drag1[name]=1
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1704}
end
if event=="mumdrag" and players[name].para>=5 then
players[name].para=players[name].para-5
drag2[name]=1
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1703}
end
if event=="camdrag" and players[name].para>=200 then
drag4[name]=1
players[name].para=players[name].para-200
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1701}
end
if event=="elmadrag" and players[name].para>=30 then
drag3[name]=1
players[name].para=players[name].para-30
ui.addTextArea(12341, "<b><font size='20'><V><p align='center'>Market</p><j><font size='7'>Paranýz <v>"..players[name].para.."<br><n><font size='10'><j>Default Drag <r>[<bv><a href='event:defaultdrag'>Kullan</a><r>] <g>Fiyat = 0<br><n><font size='10'><j>Þaman Dragý <r>[<bv><a href='event:meep'>Satýn Al</a><r>] <g>Fiyat = 120<br><n><font size='10'><j>Elma Dragý <r>[<bv><a href='event:elmadrag'>Satýn Al</a><r>] <g>Fiyat = 30<br><n><font size='10'><j>Mum Drag <r>[<bv><a href='event:mumdrag'>Satýn Al</a><r>] <g>Fiyat = 5<br><n><font size='10'><j>Cam Drag <r>[<bv><a href='event:camdrag'>Satýn Al</a><r>] <g>Fiyat = 200<br><n><font size='10'><j>Gorunmez Drag <r>[<bv><a href='event:ghostdrag'>Satýn Al</a><r>] <g>Fiyat = 1500<br><n><font size='10'><j>Þeker Drag <r>[<bv><a href='event:sekerdrag'>Satýn Al</a><r>] <g>Fiyat = 1000<br><n><font size='10'><j>Karpuz Drag <r>[<bv><a href='event:karpuzdrag'>Satýn Al</a><r>] <g>Fiyat = 2000", name, 6, 26, 323, 182, 0x272a2c, 0x0, 0.9,true)
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=1705}
end
end
function eventLoop(time,remaining)
for name in pairs(draglarimopen) do
for _,v in pairs ({99999999999999,100000000000000,100000000000002,100000000000003,100000000000004,12334194949494,100000000000006,100000000000007}) do
ui.removeTextArea(v,name)
end
end
if timer == despawnTime * 2 then
ui.removeTextArea(123, NIL)
else
timer = timer + 1
end
if buggfix == desw * 2 then
ui.removeTextArea(81,name)
ui.removeTextArea(82,name)
ui.removeTextArea(83,name)
ui.removeTextArea(84,name)
ui.removeTextArea(85,name)
else
buggfix = buggfix + 1
end
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
end
end
ui.addTextArea(1, "<p align='center'><font size='13'><b><a href='event:profile'>Profilim", nil, 719, 25, 77, 26, 0x283135, 0x283135, 0.6,true)
ui.addTextArea(5, "<p align='center'><font size='13'><b><a href='event:market'>Market", nil, 631, 25, 77, 26, 0x283135, 0x283135, 0.6, true)
end
for nm in pairs(admins) do
ui.addTextArea(6, "<p align='center'><font size='13'><b><a href='event:admozellikler'><r>Admin", nm, 542, 25, 77, 26, 0x283135, 0x283135, 0.6, true)
end
timer = 0
despawnTime = 5
xp={1}
function eventPlayerWon(name)
players[name].kazanma=players[name].kazanma+xp[math.random(#xp)]
players[name].para=players[name].para+5
if players[name].kazanma==15 then
players[name].rank=players[name].rank+1
end
if players[name].kazanma==25 then
players[name].rank=players[name].rank+1
end
if players[name].kazanma==35 then
players[name].rank=players[name].rank+1
end
if players[name].kazanma==45 then
players[name].rank=players[name].rank+1
end
if players[name].kazanma==55 then
players[name].rank=players[name].rank+1
end
if players[name].kazanma==65 then
players[name].rank=players[name].rank+1
end
if players[name].rank==5 then
players[name].pro=players[name].pro+1
players[name].rank=players[name].rank-5
players[name].kazanma=players[name].kazanma-65
ui.addTextArea(123, "<p align='center'><r><font size='20'><b>"..name.." <BV>"..players[name].pro.." <v>Level <j>Oldu !", nil, 188, 21, 461, 41, 0x171819, 0x171819, 0.7,true)
timer = 0
end
end
function eventPlayerDied(name)
tfm.exec.setGameTime(120)
players[name].death=players[name].death+1
local i=0
local n
for pname,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
n=pname
end
end
if i==0 then
elseif i==1 then
tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
tfm.exec.newGame(maps[math.random(#maps)])
end
end
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
tfm.exec.newGame(maps[math.random(#maps)])
function eventPopupAnswer(pp, name, cm)
if (pp == 0) then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=players[name].pro,para=players[name].para+cm,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=players[name].dragt}
end
if (pp == 3) then
drag1[cm]=1
drag2[cm]=1
drag3[cm]=1
drag4[cm]=1
drag5[cm]=1
drag6[cm]=1
drag7[cm]=1
end
if (pp == 1) then
players[name]={timestamp=os.time(),offsets={x=players[name].offsets.x, y=players[name].offsets.y},death=players[name].death,kazanma=players[name].kazanma,rounds=players[name].rounds,rank=players[name].rank,pro=cm,para=players[name].para,drag=players[name].drag,surv=players[name].surv,arnkzn=players[name].arnkzn,arntur=players[name].arntur,dragt=players[name].dragt}
ui.addTextArea(123, "<p align='center'><r><font size='20'><b>"..name.." <BV>"..players[name].pro.." <v>Level <j>Oldu !", nil, 188, 21, 461, 41, 0x171819, 0x171819, 0.7,true)
timer=0
end
end

