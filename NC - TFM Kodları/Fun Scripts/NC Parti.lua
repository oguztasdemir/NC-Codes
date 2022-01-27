lights={"1","2","4","9","11","13"}
pAtOnce=50
radiusX=100
radiusY=100
speedX=0
speedY=0
 
function eventLoop(ct,tr)
for i=1,pAtOnce do
tfm.exec.displayParticle(lights[math.random(#lights)],math.random(400-radiusX*4,400+radiusX*4),math.random(200-radiusY*2,200+radiusY*2),"0."..speedX,"0."..speedY,"0."..speedX,"0."..speedY,nil)
end
end
 
function eventChatCommand(p,c)
if c:sub(0,3)=="par" and tonumber(c:sub(5))<=1000 then
pAtOnce=c:sub(5)
elseif c:sub(0,2)=="rx" then
radiusX=c:sub(4)
elseif c:sub(0,2)=="ry" then
radiusY=c:sub(4)
elseif c:sub(0,2)=="xs" then
speedX=c:sub(4)
elseif c:sub(0,2)=="ys" then
speedY=c:sub(4)
end
print("<v>["..p.."] <n>"..c)
end
 
system.disableChatCommandDisplay("par",true)
system.disableChatCommandDisplay("rx",true)
system.disableChatCommandDisplay("ry",true)
system.disableChatCommandDisplay("xs",true)
system.disableChatCommandDisplay("ys",true)
print("<p align='left'>\n<n>Hello there, want <j>less/more lights <n>on the screen? Type <j>'!par number'<n>!\nWant the lights to go <j>further/closer<n>? Type <j>'!rx number' <n>or <j>'!ry number'<n>!\nWant to make the <j>lights move<n>? Type <j>'!xs number'<n> or <j>'!ys number'<n>!</p>")

