
agua={}
jogador={}
pode = false

function pegaAguas()
	local xml = tfm.get.room.xmlMapInfo.xml
	local i = 1
	while i < xml:len() do
		if xml:sub(i,i+2) == "<S " then
			j = i + 3
			while xml:sub(j,j) ~= ">" do
				if xml:sub(j,j+4) == [[T="9"]] then
					z = i + 3
					while(xml:sub(z,z) ~= "/") do
						if xml:sub(z,z) == "H" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							h = tonumber(xml:sub(z+3, v-1),10)
						elseif xml:sub(z,z) == "L" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							l = tonumber(xml:sub(z+3, v-1),10)
						elseif xml:sub(z,z) == "X" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							x = tonumber(xml:sub(z+3, v-1),10)
						elseif xml:sub(z,z) == "Y" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							y = tonumber(xml:sub(z+3, v-1),10)
						end
						z = z + 1
					end
					table.insert(agua, {X=x, Y=y, H=h, L=l})
				end
				j = j + 1
			end
			i = j
		end
		i = i + 1
	end
	pode = true
end

function eventNewGame()
	ui.removeTextArea(0, nil)
	pode = false
	for i=1, #agua do
		table.remove(agua)
	end
	if tfm.get.room.currentMap:sub(1,1) == "@" then
		pegaAguas()
		for i, v in pairs(tfm.get.room.playerList) do
			jogador[i] = 20
		end
	end
end

function isMolhado(p)
	local x = tfm.get.room.playerList[p].x
	local y = tfm.get.room.playerList[p].y
	for i, v in pairs(agua) do
		if (x > (v.X - math.floor(v.L/2))) and (x < (v.X + math.floor(v.L/2))) and (y > (v.Y - math.floor(v.H/2))) and (y < (v.Y + math.floor(v.H/2))) then
			return true
		end
	end
	return false
end

function eventLoop()
	if pode then
		for i, v in pairs(tfm.get.room.playerList) do
			if isMolhado(i) and not v.isDead then
				jogador[i] = jogador[i] - 1
				ui.addTextArea(0, "<p align='center'><font color='#ff"..math.floor(jogador[i]/2)..math.floor(jogador[i]/2).."00'size='30px'><b>"..math.floor(jogador[i]/2), i, v.x-35, v.y-25, 70, 70, 0, 0, 0, false)
				for j=1, 10 do
					tfm.exec.displayParticle(14, v.x, v.y, math.random(-20,20)/10, math.random(-20,20)/10, 0, 0, i)
				end
			else
				jogador[i] = 20
				ui.removeTextArea(0, i)
			end
			if jogador[i] <= 0 then
				tfm.exec.killPlayer(i)
			end
		end
	end
end

tfm.exec.newGame("@5442689")
