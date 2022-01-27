tfm.exec.disableAutoShaman()
tfm.exec.disableAutoNewGame(true)
local H = os.date("%H")-3

Admin = "Devilstrkpro#0000"

local data, battery = {}, {loop = {20,40}, x = math.random(10,790), y = math.random(200,380)}
local npc = {
		time = 50,
		damage = math.random(2,5),
		position = {x = math.random(10,3000), y = math.random(100,800)},
	}
local gameTime = 0

function eventNewPlayer(name)
	data[name] = {
		camera = {
			open = false,
			seconds = 0,
			bars = 4,
		},
	life = 20,
	}
	
	tfm.exec.bindKeyboard(name, 32, true, true)
	closeCamera(name)
end

system.bindMouse(Admin, true)

function eventMouse(Admin, x, y)
print(""..x.." e "..y.."")
end

function updateLifeBar(name, cameraOpen)
	if data[name].life > 0 then
		if cameraOpen then
			ui.addTextArea(7, "", name, 10, 55, 100, 15, 0xffffff, 0x000000, 1, true)
			ui.addTextArea(8, "", name, 10, 55, math.floor(data[name].life*5), 15, 0xff0000, 0x000000, 1, true)
		else
			ui.addTextArea(7, "", name, 10, 30, 100, 15, 0xffffff, 0x000000, 1, true)
			ui.addTextArea(8, "", name, 10, 30, math.floor(data[name].life*5), 15, 0xff0000, 0x000000, 1, true)
		end
	else
		if cameraOpen then
			ui.addTextArea(7, "", name, 10, 55, 100, 15, 0xffffff, 0x000000, 1, true)
		else
			ui.addTextArea(7, "", name, 10, 30, 100, 15, 0xffffff, 0x000000, 1, true)
		end
	end
	
	if data[name].life <= 0 then
		tfm.exec.killPlayer(name)
	end
end

function spawnNpc(x, y)
	ui.addTextArea(9, "<p align='center'><b>'-'", nil, x, y, nil, nil, nil, nil, 1, false)
end

function generateNpc()
	npc = {
		time = 50,
		damage = math.random(2,10),
		position = {x =  math.random(10,3000), y = math.random(20,800)},
	}
	spawnNpc(npc.position.x, npc.position.y)
end

function closeCamera(name)
	local id, y = 0, 0
	data[name].camera.open = false
	
	if data[name].camera.bars == 4 then y = 277 elseif data[name].camera.bars == 3 then y = 300 elseif data[name].camera.bars == 2 then y = 323 elseif data[name].camera.bars == 1 then y = 346 end
	
	ui.addTextArea(0, "", name, -500, -500, 5000, 5000, 0x000001, 0x000000, 0.99, true)
	
	if data[name].camera.bars > 0 then
		for i=1,data[name].camera.bars do
			id, y = id+1, y+23
			ui.addTextArea(id, "", name, 756, y, 39, 11, 0x00ff00, 0x00ff00, 1, true)
		end
	else
		ui.removeTextArea(1, name)
		ui.removeTextArea(-1, name)
	end
	
	ui.addTextArea(6, "<font size=\"13\"><a href=\"event:open_camera\">Open camera </a>", name, 643, 368, 100, 22, 0x112630, 0x112630, 1, true)
	updateLifeBar(name)
end

function openCamera(name) 
	local id, y = 0, 0
	data[name].camera.open = true
    
    if data[name].camera.bars == 4 then y = 277 elseif data[name].camera.bars == 3 then y = 300 elseif data[name].camera.bars == 2 then y = 323 elseif data[name].camera.bars == 1 then y = 346 end
    
    if data[name].camera.bars > 0 then
    	ui.addTextArea(0, "", name, -500, -500, 5000, 5000, 0x000001, 0x000000, 0.4, true)
ui.addTextArea(-1, "<font color='#FF0000' size='20'><b>REC "..os.date("%d/%m/%Y "..H..":%M:%S"), name, 3, 23, 795, 414, 0x000001, 0x000000, 50, true)    	
	    for i=1,data[name].camera.bars do
	    	id, y = id+1, y+23
	    	ui.addTextArea(id, "", name, 756, y, 39, 11, 0x00ff00, 0x00ff00, 1, true)
	    end
	    
	    ui.addTextArea(6, "<font size=\"13\"><a href=\"event:close_camera\">Close camera </a>", name, 643, 368, 100, 22, 0x112630, 0x112630, 1, true)
	    updateLifeBar(name, true)
	else
		closeCamera(name)
	end
end

function refill(name)
	local player, i = tfm.get.room.playerList[name], 0
	local distX, distY = math.abs(player.x - battery.x), math.abs(player.y - battery.y)
	
	if distX <= 35 and distY <= 35 then
		i = i+1
		if i >= 2 then i = 1 end
		if data[name].camera.bars < 4 then
			data[name].camera.bars = data[name].camera.bars+i
			if data[name].camera.bars >= 4 then data[name].camera.bars = 4 end
			if data[name].camera.open then
				openCamera(name)
			else
				closeCamera(name)
			end
			data[name].seconds = 0
		end
		ui.removeTextArea(999, nil)
		battery.loop, battery.x, battery.y = {20,400}, math.random(10,3000), math.random(100, 500)
	end
end

function eventKeyboard(name, key, press, x, y)
	if key == 32 then
		refill(name)
	end
end

function eventTextAreaCallback(id, name, link) 
    if link == "open_camera" then 
		openCamera(name)
    elseif link == "close_camera" then
		closeCamera(name)
	end
end

function eventLoop(e,r)
	battery.loop[1], battery.loop[2] = battery.loop[1] - 0.5, battery.loop[2] - 0.5
	npc.time = npc.time - 0.5
	gameTime = gameTime + 0.5
	
	if gameTime >= 1.5 then
		gameTime = 0
	end
	
	for k,v in next,tfm.get.room.playerList do
		if data[k].camera.open then
			data[k].camera.seconds = data[k].camera.seconds + 0.5
			openCamera(k)
			
			if data[k].camera.seconds == 60 then
				data[k].camera.bars = data[k].camera.bars-1
				openCamera(k)
				data[k].camera.seconds = 0
			end
		else
			data[k].camera.seconds = data[k].camera.seconds -- '-'
		end
		
		if math.abs(v.x - npc.position.x) <= 50 and math.abs(v.y - npc.position.y) <= 50 then
			if gameTime == 1 then
				data[k].life = data[k].life - npc.damage
				if data[k].camera.open then
					updateLifeBar(k, true)
				else
					updateLifeBar(k)
				end
			end
		end
	end

	if battery.loop[1] <= 0 then
		ui.addTextArea(999, "<font size='13'>Pilha", nil, battery.x, battery.y, nil, nil, 0x112630, 0x112630, 1, false)
	end
	
	if battery.loop[2] <= 0 then
		ui.removeTextArea(999, nil)
		battery.loop, battery.x, battery.y = {20,40}, math.random(10,3000), math.random(300,600)
	end
	
	if npc.time <= 0 then
		generateNpc()
	end
end

for k in next,tfm.get.room.playerList do
	eventNewPlayer(k)
end

tfm.exec.newGame('<C><P F="8" L="3000" Ca="" defilante="0,0,0,1" m="" H="800" /><Z><S><S L="516" X="2443" H="10" Y="766" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="1128" H="45" Y="532" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="700" o="296481" X="2350" c="4" Y="676" T="12" H="250" /><S L="291" H="10" X="1854" Y="767" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="15" X="2163" H="30" Y="785" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="1320" H="302" Y="362" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="200" X="2099" H="23" Y="771" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S H="300" L="230" o="756145" X="1200" c="4" Y="364" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="689" H="10" X="787" Y="518" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" H="180" X="1618" Y="590" T="0" P="0,0,0.3,0.2,40,0,0,0" /><S L="1000" H="10" X="1025" Y="696" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" H="200" X="1616" Y="730" T="0" P="0,0,0.3,0.2,-70,0,0,0" /><S L="10" X="1164" H="209" Y="587" T="0" P="0,0,20,0.2,-50,0,0,0" /><S L="399" X="197" H="27" Y="526" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="200" X="456" H="10" Y="615" T="0" P="0,0,0.3,0.2,50,0,0,0" /><S L="344" X="1828" H="10" Y="518" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="2000" o="245a35" X="1000" c="2" Y="656" T="12" H="289" /><S P="0,0,0.3,0.2,-40,0,0,0" L="45" o="b09d54" X="478" c="2" Y="603" T="12" H="200" /><S P="0,0,0.3,0.2,0,0,0,0" L="37" o="b09d54" X="414" c="2" Y="526" T="12" H="29" /><S P="0,0,0.3,0.2,0,0,0,0" L="1000" o="b09d54" X="1025" c="2" Y="670" T="12" H="45" /><S H="200" L="45" o="b09d54" X="1572" c="2" Y="602" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S H="29" L="37" o="b09d54" X="1636" c="2" Y="526" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,110,0,0,0" L="45" o="b09d54" X="1624" c="2" Y="705" T="12" H="200" /><S P="0,0,0.3,0.2,-50,0,0,0" L="45" o="b09d54" X="1223" c="2" Y="601" T="12" H="200" /><S H="44" L="44" o="b09d54" X="1154" c="2" Y="533" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" H="302" X="1080" Y="362" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="230" H="10" X="1200" Y="216" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="129" X="1150" H="10" Y="403" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="99" X="1266" H="10" Y="305" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,20,0.2,0,0,0,0" L="46" H="52" c="4" Y="485" T="4" X="1154" /><S P="0,0,0.3,0.2,0,0,0,0" L="294" o="b09d54" X="1853" c="4" Y="738" T="12" H="45" /><S L="200" X="1816" H="283" Y="370" T="0" P="0,0,0.3,0.2,-180,0,0,0" /><S L="47" X="1817" H="70" Y="477" T="4" P="0,0,20,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="40" o="64a5c5" H="40" Y="321" T="12" X="1763" /><S L="40" o="64a5c5" H="40" X="1871" Y="320" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="200" X="1483" H="80" Y="471" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="12" X="2195" H="26" Y="546" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="12" X="2361" H="26" Y="544" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="31" X="1478" H="39" Y="490" T="4" P="0,0,20,0.2,0,0,0,0" /><S L="238" X="2284" H="18" Y="528" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,10,0,0,0" L="150" o="245a35" H="453" Y="608" T="12" X="2762" /><S P="0,0,0.3,0.2,0,0,0,0" L="272" o="245a35" H="430" Y="586" T="12" X="2864" /><S L="10" X="3007" H="3000" Y="382" T="1" P="0,0,0,0.2,0,0,0,0" /><S L="10" H="3000" X="-6" Y="100" T="1" P="0,0,0,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="89" o="245a35" H="136" Y="314" T="12" X="2959" /><S L="89" o="245a35" H="136" X="2932" Y="326" T="12" P="0,0,0.3,0.2,20,0,0,0" /><S P="0,0,9999,0.50,0,0,0,0" L="65" o="d8d8d8" H="20" Y="546" T="12" X="2513" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="b01a1a" X="2495" c="4" Y="546" T="12" H="20" /><S H="20" L="10" o="b01a1a" X="2531" c="4" Y="546" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D><DS Y="496" X="128" /><P P="1,0" Y="620" T="1" X="726" /><P X="883" Y="766" T="1" P="1,0" /><P P="1,0" Y="615" T="1" X="1024" /><P X="1194" Y="762" T="1" P="1,0" /><P C="46788e" Y="511" T="24" X="1249" P="1,1" /><P P="1,0" Y="617" T="1" X="1376" /><P X="1147" Y="399" T="17" P="1,0" /><P X="1150" Y="363" T="21" P="1,0" /><P X="2848" Y="377" T="1" P="0,0" /><P X="1297" Y="298" T="33" P="1,0" /><P X="2361" Y="517" T="25" P="0,0" /><P X="2361" Y="517" T="25" P="0,0" /><P X="172" Y="511" T="4" P="0,0" /><P X="1968" Y="512" T="4" P="0,0" /><P X="2796" Y="391" T="17" P="0,0" /><P X="2771" Y="354" T="31" P="0,0" /><P X="2922" Y="358" T="1" P="0,0" /><P X="2986" Y="355" T="1" P="0,0" /></D><O /></Z></C>')
spawnNpc(npc.position.x, npc.position.y)
tfm.exec.setGameTime(900)