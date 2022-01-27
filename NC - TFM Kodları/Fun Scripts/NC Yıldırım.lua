function lol(name)
system.bindMouse(name,true)
for i=0,200 do
	tfm.exec.bindKeyboard(name,i,true,true)
end
end

for name,player in pairs(tfm.get.room.playerList) do
 lol(name)
end

function randomId() 
	
	local idHolder = {0,1,9}
return idHolder[math.random(0,#idHolder)]

end

function eventMouse(n,x,y)
	
	local p = tfm.get.room.playerList[n]
	drawLightining(p.x,p.y,x,y,randomId())
	drawLightining(p.x,p.y,x,y,randomId())
	drawLightining(p.x,p.y,x,y,randomId())
	tfm.exec.movePlayer(n,x,y)
	
end

function eventKeyboard(n,k,d,x,y)

	local p = tfm.get.room.playerList[n]
	p.x = x
	p.y = y

end

move = 3
ms = move/20
ma = ms/1200

function drawLine(x1,y1,x2,y2,spaces,id)
	
	id = id or 9
	spaces = spaces or 3
	
	
	local distance = getDistance(x1,y1,x2,y2)
	local numOfParticles = math.floor(distance/spaces)
	local angle = getAngle(x1,y1,x2,y2)
		for i=0,numOfParticles do
			
			local dotX = x1+math.cos(angle)*(i*spaces)
			local dotY = y1+math.sin(angle)*(i*spaces)
			tfm.exec.displayParticle(id,dotX,dotY,math.random()*ms-ms/2,math.random()*ms-ms/2,math.random()*ma-ma/2,math.random()*ma-ma/2)
			
		end
		
end

function getDistance(x1,y1,x2,y2)

	return math.sqrt(math.abs(x1-x2)^2+math.abs(y1-y2)^2)

end

function getAngle(x1,y1,x2,y2)
	
	return math.atan2(y2-y1,x2-x1)

end

function radToDeg(i)
	
	i = i*180/math.pi
	i = i<0 and i+360 or i
	return i

end

function degToRad(i)
	
	return i*math.pi/180
	
end


function drawLightining(x1,y1,x2,y2,id)
	
	local ang = getAngle(x1,y1,x2,y2)
	local dis = getDistance(x1,y1,x2,y2)
	local rd = function() return math.random()*25+25 end
	local ra = function() return math.pi/(math.random()*120+30) end
	local wave = {}
	local addWave = function(k,xx,yy) wave[k] = {x=xx,y=yy} end
	
	--------------------------------------
	
	addWave(0,x1,y1)
	local td = 0
	local randomDistance = rd()
	local randomAngle = ra()*((dis-td)/100)
	local zigZag = math.random()<0.5 and 1 or -1
	local ca = ang + randomAngle*zigZag
	
	
	while randomDistance<dis-td do
		
		td = td + randomDistance
		
		local tx = x1+math.cos(ca)*td
		local ty = y1+math.sin(ca)*td
		
		addWave(#wave+1,tx,ty)
		
		randomDistance = rd()
		randomAngle = ra()*((dis-td)/100)
		zigZag = zigZag * -1
		ca = ang + randomAngle*zigZag
		
	end
	
	addWave(#wave+1,x2,y2)
	
	for i=0,#wave-1 do
		
		local cw = wave[i]
		local nw = wave[i+1]
		drawLine(cw.x,cw.y,nw.x,nw.y,3,id)
		
	end
	
	
end
tfm.exec.newGame(0)
tfm.exec.disableAutoNewGame(true)