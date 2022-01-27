cloud={"Devilstrkpro", "Nimbus", "Cirrus", "Stratus"}
mapy={'@4829500', '@4754980', '@4750412', '@4616142', '@4842560', '@4905201', '@4908535', '@4965944', '@5347091', '@5398576', '@5517951', '@5735274', '@5814318', '@5836561', '@5869014', '@5971053', '@5971039', '@6972352', '@6272646', '@7242405', '@7256702', '@7261012', '@7266328', '@7266489', '@7266556', '@7279262'}
nazwy={"Tasted <bl>- Temple", "Tasted <bl>- Vertical Piramid", "Tasted <bl>- @4750412", "Tasted <bl>- The Trap", "Tasted <bl>- House Party", "Tasted <bl>- Construction site", "Tasted&Sukisorra <bl>- @4908535", "Tasted <bl>- Underground", "Tasted <bl>- Futuristic", "Tasted <bl>- Halloween", "Tasted&Azizhamood <bl>- Cacao", "Tasted <bl>- Frozen", "Wojnalik <bl>- Valentines", "Tasted <bl>- Vesuvius", "Tasted <bl>- ".. cloud[math.random(#cloud)], "Binor <bl>- @5971053", "Tasted <bl>- Bamboo", "Tasted <bl>- It's a Shiny!!!", "Tasted <bl>- @6272646", "Tasted <bl>- Cascade", "Tasted <bl>- Experimental", "Tasted <bl>- @7261012", "Patkall <bl>- @7266328", "Tasted <bl>- Spider Lair", "Tasted <bl>- g=15 N/kg", "Tasted <bl>- @7279262"}
pass=""..math.random(100, 999)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
system.disableChatCommandDisplay("help", true)
system.disableChatCommandDisplay("mort", true)
system.disableChatCommandDisplay("pomoc", true)
system.disableChatCommandDisplay("info", true)
system.disableChatCommandDisplay("next", true)
system.disableChatCommandDisplay("exit", true)
system.disableChatCommandDisplay("lang", true)
system.disableChatCommandDisplay(pass, true)
print("<vp>!" ..pass)
tfm.exec.disableAutoScore(true)
tfm.exec.disablePhysicalConsumables(true)
tfm.exec.disableDebugCommand(true)
tfm.exec.disableMinimalistMode(true)
admin=""
win,d={},{}
b,e=0,math.random(#mapy)
c1,c2,c3="*Souris","*Souris","*Souris"
lang={}
msg={}
msg["pl"]={"<t><b>[m]ice tower to minigra, polegajaca na wspinaniu sie wzdluz wiezy!\n Uzywaj trampolinowych scian, sprezyn i przyspieszen, by wspiac sie w góre! <v><a href='event:zamknij'>x</t>","<n>Komendy uzyskane.","Zmieniles jezyk na polski. <v><a href='event:zamknij'>x"," wygrywa runde!"}
msg["en"]={"<t><b>Your goal in [m]ice tower is to reach the cheese at the top of the tower!\nUse trampoline walls, speed-ups and springs to get there! <v><a href='event:zamknij'>x</t>","<n>Commands granted.","Your language was changed to English. <v><a href='event:zamknij'>x"," wins the round!"}


function okno1(playerName)
ui.addTextArea(0,msg[lang[playerName]][1],playerName,30,50,0,0,0x1c3c41,0x1c3c41,ffffff,100)
end
function losujmape()
while mapy[e]==tfm.get.room.currentMap do
e=math.random(#mapy)
end
if math.random(3)==3 and (e~=17 and e~=19) then
tfm.exec.setAutoMapFlipMode(true)
else
tfm.exec.setAutoMapFlipMode(false)
end
tfm.exec.newGame(mapy[e])
end

function eventNewPlayer(playerName)
tfm.exec.setPlayerScore(playerName, 0, false)
lang[playerName]=tostring(tfm.get.room.playerList[playerName].community)
if lang[playerName]~="pl" then
lang[playerName]="en"
end
tfm.exec.setUIMapName(nazwy[e])
 ui.addTextArea(1,"<b><font color='#a08335'><a href='event:help'>[m]<font color='#a6ffff'>ice tower! [v. 1.2.2.]",playerName,0,20,0,0,0x1c3c41,0x1c3c41,true,100)
end
for playerName,player in pairs(tfm.get.room.playerList) do
 eventNewPlayer(playerName)
end

losujmape()

function eventChatCommand(playerName, odp)
  if odp == ""..pass then
    admin=playerName
    print(msg[lang[playerName]][2])
end
  if odp == "help" or odp == "pomoc" or odp == "info" then
    okno1(playerName)
  elseif odp=="mort" then
    tfm.exec.killPlayer(playerName)
  elseif odp == "next" and playerName == admin then
    losujmape()
  elseif odp == "exit" and playerName == admin then
    system.exit()
  elseif odp:sub(1,4) == "lang" and (odp:sub(6) == "en" or odp:sub(6) == "pl") then
    lang[playerName]=odp:sub(6)
    ui.addTextArea(0,msg[lang[playerName]][3],playerName,30,50,0,0,0x1c3c41,0x1c3c41,ffffff,100)
  elseif odp == "lang" then
    ui.addTextArea(0,"<n>Supported languages: English [!lang en], Polski [!lang pl] </n><v><a href='event:zamknij'>x</v>",playerName,30,50,0,0,0x1c3c41,0x1c3c41,ffffff,100)
end
end

function eventTextAreaCallback(Id, playerName, odp)
  if odp=="zamknij" then
    ui.removeTextArea(0, playerName)
  elseif odp=="help" then
    okno1(playerName)
  end
end

function eventPlayerWon(playerName)
  if win==0 then
    win=1
    tfm.exec.setGameTime('10')
    tfm.exec.setPlayerScore(playerName, 4, true)
  elseif win==1 then
    win=2
    tfm.exec.setPlayerScore(playerName, 3, true)
  elseif win==2 then
    win=3
    tfm.exec.setPlayerScore(playerName, 2, true)
  elseif win==3 then
    tfm.exec.setPlayerScore(playerName, 1, true)
  end
end

function eventNewGame()
win=0
ui.removeTextArea(-1, nil)
if e==15 then
tfm.exec.setUIMapName("Tasted <bl>- "..cloud[math.random(#cloud)])
else
tfm.exec.setUIMapName(nazwy[e])
end
tfm.exec.setUIShamanName(c1)
tfm.exec.setGameTime('63')
if b==1 then
b=0
  for playerName,player in pairs(tfm.get.room.playerList) do
   tfm.exec.setPlayerScore(playerName, 0, false)
   if player.playerName==c1 then
     tfm.exec.setNameColor(playerName, '0xFEDB00')
   elseif player.playerName==c2 then
     tfm.exec.setNameColor(playerName, '0xA1A1A1')
   elseif player.playerName==c3 then
     tfm.exec.setNameColor(playerName, '0x6F4900')
   elseif player.playerName ~= c1 and player.playerName ~= c2 and player.playerName ~= c3 then
     tfm.exec.setNameColor(player.playerName, '0xffffff')
   end
end
end
end

function eventLoop(t1,t2)
for playerName,player in pairs(tfm.get.room.playerList) do
 if player.score >= 20 and b==0 then
   if player.playerName ~= c1 then
  c1,c2,c3=player.playerName,c1,c2
  end
   for playerName,player in pairs(tfm.get.room.playerList) do
    ui.addTextArea(-1,"<ch>" ..c1.."<n>"..msg[lang[playerName]][4],playerName,30,50,0,0,0x1c3c41,0x1c3c41,ffffff,100)
   end
  b=1
   end
end
a=0
for v,stat in pairs(tfm.get.room.playerList) do
if stat.isDead~=true then
a=1
end
end
if a~=1 or t2<=1 then
losujmape()
end
end