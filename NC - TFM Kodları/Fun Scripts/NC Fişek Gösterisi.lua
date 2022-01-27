a,b = 0,0
part = 0
kon,rod = 0,0
A,B="R","R"
 
Party={29,24,23,22,21,14,13,11,9,4,2,1,0}
r={1,1,1,1,1,1}
Kon2={0,4,1,9,11,13}
 
DPart={
 A={1,0,-1,0,0,1,0},
 B={0,0,-0.3,0.2,0,0,0}
}
 
for v,dis in pairs({"utoNewGame","utoShaman","utoTimeLeft","fkDeath"}) do
 tfm.exec["disableA"..dis](true)
end
 
tfm.exec.newGame('<C><P F="3" /><Z><S><S L="162" X="513" H="45" Y="366" T="11" P="0,0,0.05,0.1,-20,0,0,0" /><S L="801" X="400" H="42" Y="379" T="11" P="0,0,0.05,0.1,0,0,0,0" /><S L="202" X="649" H="150" Y="353" T="11" P="0,0,0.05,0.1,-40,0,0,0" /><S L="155" X="769" H="200" Y="317" T="11" P="0,0,0.05,0.1,-10,0,0,0" /></S><D><P X="656" Y="27" T="64" P="0,0" /><T Y="359" X="70" /></D><O /></Z></C>')
tfm.exec.setUIMapName('<textformat tabstops="[500]"><R>HAPPY NEW YEAR!\tBy Woterek</R>')
 
function eventPlayerDied(name)
 tfm.exec.respawnPlayer(name)
end
 
function eventNewPlayer(name)
 tfm.exec.respawnPlayer(name)
 system.bindMouse(name, true)
 ui.addTextArea(1, '<a href="event:next"><font size="25">•<font></a> <'..A..'><a href="event:kon"><font size="25">•<font></a> <'..B..'><a href="event:rod"><font size="25">¦<font></a>', name, 730, 340, nil, nil, 0, 0, 1)
end
 
function eventTextAreaCallback(id, name, cb)
 if cb == 'kon' then
  kon=(kon+1)%3
  if kon == 0 then
   A="R"
  elseif kon == 1 then
   A="J"
  elseif kon == 2 then
   A="VP"
   part = 0
  end
 elseif cb == 'rod' then
  rod=(rod+1)%4
  if rod == 0 then
   B="R"
  elseif rod == 1 then
   B="J"
  elseif rod == 2 then
   B="VP"
  elseif rod == 3 then
   B="CH"
  end
 elseif cb == 'next' then
  if part==29 then
   part=0
   b = 1
  end
  for i,arg in pairs(Party) do
   if part==arg then
    part=Party[i-1]
   end
  end
  if part==0 and b==0 then
   part = 1
  end
 end
 ui.addTextArea(1, '<a href="event:next"><font size="25">•<font></a> <'..A..'><a href="event:kon"><font size="25">•<font></a> <'..B..'><a href="event:rod"><font size="25">¦<font></a>', name, 730, 340, nil, nil, 0, 0, 1)
end
 
for name in pairs(tfm.get.room.playerList) do
 eventNewPlayer(name)
end
 
function eventMouse(name, x, y)
 if a == 0 then
  time = os.time()
  for i=1,7 do
   tfm.exec.displayParticle(13, x+DPart.A[i], 550, 0, -4+DPart.B[i], 0, -0.7, nil)
  end
  mx,my,a = x,100,1
 end
end
 
function eventLoop()
 if a == 1 then
  for i=1,6 do
   if time < os.time() - i*500 and r[i] == 1 then
    r[i] = 0
    if kon == 1 then
     part = 24-math.abs(i-4)
    elseif kon == 2 then
     part = Kon2[i]
    end
    for t=0,2*math.pi,0.1 do
     if rod == 0 then
      x=i*10*math.sin(t) + mx
      y=i*10*math.cos(t)
     elseif rod == 1 then
      x=i*(16*math.sin(t)^3) + mx
      y=i*(13*math.cos(t)-5*math.cos(2*t)-2*math.cos(3*t)-math.cos(4*t))
     elseif rod == 2 then
      x=i*20*(math.sin(t)^5)+mx
      y=i*20*(math.cos(t)^5)
     elseif rod == 3 then
      x=i*5*((math.sin(t)^5)+(math.sin(5*t)^5)+math.asin(math.sin(t)))+mx
      y=i*5*((math.cos(t)^5)+(math.cos(5*t)^5)+math.asin(math.cos(t)))
     end
     y=-y + my
     tfm.exec.displayParticle(part, x, y, 2, 2, 1, 1, nil)
    end
   end
  end
  if time < os.time() - 3000 then
   a = 0
   r={1,1,1,1,1,1}
  end
 end
 if b == 1 then
  b = 0
 end
end