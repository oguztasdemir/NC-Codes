tfm.exec.disableAutoShaman(true)
 
tfm.exec.disableAutoNewGame(true)
maps={6631445,6631451,6631472,5047555,5177183,3830495,4744049,4842237,1996354,1872758,5137895,4011184,5093950,4292218,4220331}
 
function eventLoop(time,remaining)
if remaining<=0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
end
 
function eventPlayerDied()
local i=0
for n,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
end
end
if i==0 then
tfm.exec.newGame(maps[math.random(#maps)])
end
end
 
function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,32,true,true)
end
 
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
 
function eventKeyboard(name,key,down,x,y)
if key==32 then
tfm.exec.addShamanObject(24,tfm.get.room.playerList[name].x,tfm.get.room.playerList[name].y+30)
end
end
 
 
ui.addPopup(0, 0, "<p align='center'><font color='#babd2f' size='24' face='Skittlesuni'>Yardým Menüsü</font></p><br><VP>#NightSpirit<b>'e Hoþgeldiniz. Oyunumuzun amacý <VP>Space<b> yardýmý ile <VP>SP<b> yaratýp peynirle yuvaya girmektir. Oyunumuz çok sihirli,fantastik ve eðlencelidir. Herkese Bol Þans!", nil, 4, 30, 200, true)

tfm.exec.setUIMapName("<j> #NightSpirit")