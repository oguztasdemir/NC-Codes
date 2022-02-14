textareas = {}
mapObjects = {}
mapFixedObjects = {}
players = {}
yaz = tfm.exec.chatMessage
tfm.exec.setPlayerScore("Devilstrkpro", 5000)
--tfm.exec.disableAutoShaman()


function eventLoop()
	for name,d in pairs(tfm.get.room.playerList) do
		if players[name].hide.isActive == 0 then
			players[name].x = d.x
			players[name].y = d.y
		end
	end
end

function eventNewGame()
	local xml = tfm.get.room.xmlMapInfo
	xml = xml and xml.xml or ''


	for id in pairs(textareas) do
		ui.removeTextArea(id)
		textareas[id] = nil
	end
	for n,d in pairs(players) do
		players[n].dead = false
	end

	tfm.exec.addPhysicObject(1,950,-200,{
		type=1,
		restitution=0.2,
		friction=0.3,
		width=2100,
		height=10,
		groundCollision=true
	})
	tfm.exec.addPhysicObject(2,0,-200,{
		type=1,
		restitution=0.2,
		friction=0.3,
		width=10,
		height=150,
		groundCollision=true
	})
	tfm.exec.addPhysicObject(3,2000,-200,{
		type=1,
		restitution=0.2,
		friction=0.3,
		width=10,
		height=150,
		groundCollision=true
	})

	mapObjects = {}
	

	i = 0
	for params in xml:gmatch('<P (.-)/>') do
		x = tonumber(params:match('X="(.-)"'))
		y = tonumber(params:match('Y="(.-)"'))
		t = tonumber(params:match('T="(.-)"'))
		p = tostring(params:match('P="(.-)"'))
		if x and y and susler[t] ~= nil then
			ui.addTextArea(i, string.format(x.." T=%s", t), nil, x, y, nil, nil, 1, t * 0xffffff / 100, 0.5)
			i = 1 + i
			table.insert(textareas, i)
			mapObjects[#mapObjects+1] = {
				x=x,
				y=y,
				xStart=x-susler[t].width,
				xEnd=x+susler[t].width,
				yStart=y-20,
				t=t
			}
			--yaz("T="..t.."x: "..tostring(x).." xStart: "..tostring(x-detail(t)).." xEnd: "..tostring((x+detail(t))))
		end
	end
end


susler = {
	[0] = { width = 20, x = -40, y = -25},
	[1] = { width = 20, x = 10, y = 20},
	[2] = { width = 20 },
	[3] = { width = 10 },
	[4] = { width = 20, x = -40, y = -52},
	[5] = { width = 22, x = -40, y = -38},
	[6] = { width = 20, x = -90, y = -150},
	[12] = { width = 20, x = -40, y = -20},
	[22] = { width = 40 },
	[30] = { width = 40 }
}

function detail(id, de)
	if susler[id] ~= nil then
		return susler[id].width
	else
		return nil
	end
end

function eventKeyboard(name, key, down, x, y)
	if tfm.get.room.playerList[name].isDead == false then
		if key == 69 and tfm.get.room.playerList[name].isShaman == false then
			--yaz("x: "..x)
			for i,d in pairs(mapObjects) do
				if x >= d.xStart and x <= d.xEnd and y >= d.yStart and y <= d.y and (players[name].object ~= d.t or players[name].object == 7777) then
					tfm.exec.removeImage(players[name].image)
					local o = susler[d.t]
					tfm.exec.removeImage(players[name].image)
					players[name].image = tfm.exec.addImage("prophunt_item_"..tostring(d.t)..".png", "%"..name, o.x, o.y)
					players[name].object = d.t
					players[name].objectMap = d.id
					yaz("<J>Tebrikler!", name)
				end
			end
		elseif key == 32 then
			if tfm.get.room.playerList[name].isShaman == false then
				if players[name].object ~= 7777 and players[name].image then
					local o = susler[players[name].object]
					
					if players[name].hide.isActive == 0 then
						if (os.time()-players[name].hide.timestamp) > 3000  then
							--tfm.exec.killPlayer(name)
							tfm.exec.movePlayer(name, x, -210)
							--local oa = mapObjects[players[name].objectMap]
							players[name].hide.imgID = tfm.exec.addImage("prophunt_item_"..tostring(players[name].object)..".png", "?"..math.random(500), x+o.x, y+o.y)
							players[name].hide.isActive = 1
							players[name].hide.x = x
							players[name].hide.y = y
						end -- timestamp
					else -- isActive else
						tfm.exec.respawnPlayer(name)
						tfm.exec.removeImage(players[name].hide.imgID)
						tfm.exec.removeImage(players[name].image)
						tfm.exec.movePlayer(name, players[name].hide.x, players[name].hide.y)
						players[name].image = tfm.exec.addImage("prophunt_item_"..tostring(players[name].object)..".png", "%"..name, o.x, o.y)
						players[name].hide.imgID = 0
						players[name].hide.isActive = 0
						players[name].hide.mID = 0
						mapFixedObjects[players[name].hide.fix] = nil
						players[name].hide.timestamp = os.time()
					end -- isActive end

					players[name].x = tfm.get.room.playerList[name].x
					players[name].y = tfm.get.room.playerList[name].y
				end -- 7777
			else
				-- şaman
				

				for a,b in pairs(tfm.get.room.playerList) do
					if tfm.get.room.playerList[a].isShaman == false and tfm.get.room.playerList[a].isDead == false then
							--yaz(a)
							local d = susler[b.object]
							local width = 50
							--[[if b.object == 7777 then
								local width = 20
							else
								local width = d.width
							end]]--
							
							if x >= b.x-width and x <= b.x+width and b.y >= y-20 and b.y <= b.y+10 then
								yaz("<R>Şaman çıldırdı! "..a)
								tfm.exec.killPlayer(a)
								tfm.exec.removeImage(b.hide.imgID)
							end
						
					end -- isShaman false
				end


			end -- else
		end -- 32
	end -- isDead
end

for a,b in pairs(tfm.get.room.playerList) do
	players[a] = {
		image = 0,
		object = 7777,
		objectMap = 0,
		hide = {
			isActive = 0,
			imgID = 0,
			x = 0,
			y = 0,
			fix = 0,
			timestamp = 0
		},
		x = b.x,
		y = b.y,
		dead = 0
	}
	tfm.exec.bindKeyboard(a,32,true,true)
	tfm.exec.bindKeyboard(a,69,true,true)
end

--tfm.exec.newGame("@22412")
tfm.exec.newGame("@22620")