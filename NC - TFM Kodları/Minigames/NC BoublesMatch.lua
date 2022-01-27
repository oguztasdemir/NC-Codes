tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
players={}
toDespawn={}
maps={521833,401421,541917,541928,541936,541943,527935,559634,559644,888052,878047,885641,770600,770656,772172,891472,589736,589800,589708,900012,901062,754380,901337,901411,907870,910078,1190467,1252043,1124380,1016258,1252299,1255902,1256808,986790,1285380,1271249,1255944,1255983,1085344,1273114,1276664,1279258,1286824,1280135,1280342,1284861,1287556,1057753,1196679,1288489,1292983,1298164,1298521,1293189,1296949,1308378,1311136,1314419,1314982,1318248,1312411,1312589,1312845,1312933,1313969,1338762,1339474,1349878,1297154,644588,1351237,1354040,1354375,1362386,1283234,1370578,1306592,1360889,1362753,1408124,1407949,1407849,1343986,1408028,1441370,1443416,1389255,1427349,1450527,1424739,869836,1459902,1392993,1426457,1542824,1533474,1561467,1563534,1566991,1587241,1416119,1596270,1601580,1525751,1582146,1558167,1420943,1466487,1642575,1648013,1646094,1393097,1643446,1545219,1583484,1613092,1627981,1633374,1633277,1633251,1585138,1624034,1616785,1625916,1667582,1666996,1675013,1675316,1531316,1665413,1681719,1699880,1688696,623770,1727243,1531329,1683915,1689533,1738601,3756146,912118,3326933,3722005,3566478,1456622,1357994,1985670,1884075,1708065,1700322,2124484,3699046,2965313,4057963,4019126,3335202,2050466}
 
function eventNewPlayer(name)
        for i,key in ipairs({32,40,83}) do
                tfm.exec.bindKeyboard(name,key,true,true)
        end
        players[name]={
                timestamp=os.time(),
                offsets={x=2, y=10}
        }
end
 
function eventKeyboard(name,key,down,x,y)
        if (key==32 or key==40 or key==83) and not tfm.get.room.playerList[name].isDead and started then
                if players[name].timestamp < os.time()-1000 then
                        local id
                        if tfm.get.room.playerList[name].isFacingRight then
                                id=tfm.exec.addShamanObject(59,x+players[name].offsets.x,y+players[name].offsets.y,0,20,0)
                        else
                                id=tfm.exec.addShamanObject(59,x+players[name].offsets.x,y+players[name].offsets.y,0,-20,0)
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
                        players[name].offsets.x=2
                        players[name].offsets.y=10
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
                end
        end
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
                tfm.exec.giveCheese(n)
                tfm.exec.playerVictory(n)
                tfm.exec.setGameTime(5)
        end
end
 
for name,player in pairs(tfm.get.room.playerList) do
        eventNewPlayer(name)
end
 
tfm.exec.newGame(maps[math.random(#maps)])