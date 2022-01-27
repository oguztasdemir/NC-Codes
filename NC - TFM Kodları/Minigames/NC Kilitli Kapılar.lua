------------------------------------------
-- Module : UnlockDoor (par Tortuegreen) --
------------------------------------------

tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore (true)
tfm.exec.disableAfkDeath (true)
tfm.exec.disableAutoTimeLeft (true)
tfm.exec.disableAutoShaman (true)

players = {}
codes = {}
rules = "<p align='center'><font color='#EB1D51' face='DejaVu Sans Mono' size='25'><b>› UnlockDoor ‹</b></font></p>"
.."<p align='center'><font color='#C2C2DA' face='DejaVu Sans Mono' size='18'>Oyunumuzdan bahsedelim</font></p><br>"
.."<p align='center'><font color='#BABD2F' face='DejaVu Sans Mono' size='15'>OYUN HAKKINDA: Oyunumuz Devilstrkpro ve Devilstrk tarafından kodlanılmıştır.Oyunumuzun adı UnlockDoor yani KilitliKapı'dır.</font></p><br>"
.."<p align='center'><font color='#BABD2F' face='DejaVu Sans Mono' size='15'>NASIL OYNANIR: Oyunumuz 1-4 kişi arasında oynanır.Oyunumuzun amacı kilitli kapıları geçerek peynirle beraber yuvaya girmektir.Kilitli kapıların üstünde sayılar yazıyordur ve bu sayılar kırmızıdır,sayıları arttırıp eksilterek yeşile çeviririz ve kilidi aç kısmına basarız</font></p>"
map = '<C><P DS="m;400,-30" /><Z><S><S L="800" H="50" X="400" Y="375" T="6" P="0,0,0.3,0.2,,0,0,0" /><S L="800" X="400" H="50" Y="285" T="6" P="0,0,0.3,0.2,0,0,0,0" /><S L="800" H="50" X="400" Y="195" T="6" P="0,0,0.3,0.2,0,0,0,0" /><S L="800" H="50" X="400" Y="105" T="6" P="0,0,0.3,0.2,0,0,0,0" /><S L="800" X="400" H="50" Y="15" T="6" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0,0,0,0,0,0" L="10" o="6a7495" X="-5" c="3" Y="150" T="14" H="500" /><S H="500" L="10" o="6a7495" X="805" c="3" Y="150" T="14" P="0,0,0,0,0,0,0,0" /></S><D><P X="46" Y="350" T="0" P="1,0" /><P X="247" Y="349" T="11" P="0,0" /><P X="272" Y="349" T="3" P="0,1" /><P X="455" Y="261" T="3" P="0,0" /><P X="298" Y="349" T="11" P="0,0" /><P X="354" Y="349" T="3" P="0,1" /><P X="392" Y="349" T="3" P="0,1" /><T Y="350" X="120" /><P X="546" Y="349" T="12" P="0,0" /><P X="727" Y="348" T="11" P="0,0" /><P X="677" Y="349" T="3" P="0,0" /><P X="700" Y="350" T="5" P="0,1" /><P X="593" Y="350" T="1" P="0,0" /><P P="0,1" Y="170" T="1" X="431" /><T Y="260" X="120" /><T Y="130" X="120" /><T Y="170" X="120" /><T Y="80" X="120" /><F Y="345" X="680" /><F Y="255" X="680" /><F Y="165" X="680" /><F Y="75" X="680" /><P X="220" Y="260" T="1" P="0,1" /><P X="292" Y="260" T="3" P="0,1" /><P X="519" Y="170" T="3" P="0,0" /><P X="296" Y="80" T="3" P="0,0" /><P X="574" Y="79" T="3" P="0,0" /><P X="754" Y="79" T="3" P="0,1" /><P X="717" Y="170" T="3" P="0,0" /><P X="160" Y="260" T="3" P="0,0" /><P X="32" Y="169" T="3" P="0,0" /><P X="297" Y="168" T="3" P="0,0" /><P X="312" Y="169" T="11" P="0,0" /><P X="85" Y="170" T="11" P="0,1" /><P X="35" Y="260" T="11" P="0,1" /><P X="357" Y="80" T="11" P="0,0" /><P X="413" Y="80" T="11" P="0,1" /><P P="0,0" Y="80" T="12" X="620" /><P P="1,0" Y="260" T="0" X="363" /><P P="0,1" Y="80" T="5" X="54" /></D><O /></Z></C>'
bGs = {'F="0"', 'F="1"', 'F="2"', 'F="3"'}
numPlayers = 0
playersWon = 0

function updPlayer(name, val)
	if val == nil then
		players[name] = {}
		numPlayers = numPlayers + 1
		players[name].pos = numPlayers
	else
		for i=1,#players do
			if players[i] == name then
				table.remove(players, i)
			end
		end
	end
end

function eventNewPlayer(name)
	updPlayer(name)
	tfm.exec.respawnPlayer (name)
end

function eventPlayerLeft(name)
	updPlayer(name, 1)
end

function eventPlayerDied(name)
	updPlayer(name, 1)
end

function eventPlayerWon(name, tE, tESR)
	playersWon = playersWon + 1
	if playersWon == numPlayers then
		tfm.exec.setGameTime(5, false)
	end
end

for name in pairs(tfm.get.room.playerList) do
	updPlayer(name)
end

function startNewGame()
	if #players <= 4 then
		tfm.exec.setUIMapName ("<font color='#C2C2DA'>Module :</font> <font color='#BABD2F'>UnlockDoor</font>")
		for i=1,4 do
			_G["codes"]["c1Part"..i] = math.random(9)
			_G["codes"]["c2Part"..i] = math.random(9)
			_G["codes"]["c3Part"..i] = math.random(9)
		end
		for name in pairs(players) do
			tfm.exec.movePlayer(name, 120, 60+90*(players[name].pos-1), false)
			k = players[name].pos
			players[name] = {
				pos = k,
				cNumDoor1 = {0,0,0,0},
				cNumDoor2 = {0,0,0,0},
				cNumDoor3 = {0,0,0,0},
				cOkDoor1 = {0,0,0,0},
				cOkDoor2 = {0,0,0,0},
				cOkDoor3 = {0,0,0,0},
				currDoor = 1
			}
			for i=1,3 do
				tfm.exec.addPhysicObject(players[name].pos*10+i, 200*i, 60+90*(players[name].pos-1), {type=12, restitution=0.2, friction=0.3, width=30, height=40, foreground=true,  groundCollision=true, color=0x1F1709})
				ui.addTextArea(players[name].pos*10+i, "<p align='center'><br><br><br><font color='#C2C2DA' face='aharoni' size='40'><a href='event:doorIdToRem"..tostring(i).."'>☵</a></font></p>", name, (200*i)-19, (60+90*(players[name].pos-1))-15, width, height, 0, 0, 0, true)
			end
		end
	else
		tfm.exec.newGame(0)
		tfm.exec.setUIMapName ("Trop de joueurs pour lancer le module")
	end
end

function eventNewGame()
	ui.addTextArea(150, "<p align='center'><font color='#C2C2DA' face='DejaVu Sans Mono' size='18'><a href='event:openHelp'><b>?</b></a></font></p>", nil, 775, 24, 25, weight, 0x6A7495, 0x6A7495, 1, true)
	players = {}
	numPlayers = 0
	for name in pairs(tfm.get.room.playerList) do
		updPlayer(name)
	end
	startNewGame()
end

function eventTextAreaCallback(tAId, name, cb)
	if cb:sub(0,11) == "doorIdToRem" then
		k = cb:sub(12)
		if tonumber(k) == tonumber(players[name].currDoor) then
			ui.removeTextArea(tAId, name)
			ui.addTextArea(100, "", name, 220, 135, 362, 130, 0x010101, 0x010101, 1, true)
			for i=1,4 do
				ui.addTextArea(tonumber(tAId-k+100+i), "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId-k+100+i)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>0</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId-k+100+i)).."'><b>∨</b></a></font></p>", name, 225+80*(i-1)+11*(i-1), 140, 80, 120, 0xC51A05, 0x00000, 1, true)
			end
			
		end
	elseif cb:sub(0,7) == "upArrow" then
		k = tAId-110-(players[name].pos-1)*10
		if players[name]["cNumDoor"..players[name].currDoor][k] >= 0 and players[name]["cNumDoor"..players[name].currDoor][k] < 4 or players[name]["cNumDoor"..players[name].currDoor][k] >= 6 and players[name]["cNumDoor"..players[name].currDoor][k] < 9 then
			players[name]["cNumDoor"..players[name].currDoor][k] = players[name]["cNumDoor"..players[name].currDoor][k]+1
			ui.updateTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..players[name]["cNumDoor"..players[name].currDoor][k].."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name)
		elseif players[name]["cNumDoor"..players[name].currDoor][k] == 4 then
			players[name]["cNumDoor"..players[name].currDoor][k] = players[name]["cNumDoor"..players[name].currDoor][k]+1
			ui.updateTextArea(tAId, "<p align='center'><br><font color='#C51A05' face='aharoni' size='20'><b>∧</b></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..players[name]["cNumDoor"..players[name].currDoor][k].."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name)
		elseif players[name]["cNumDoor"..players[name].currDoor][k] == 9 then
			players[name]["cNumDoor"..players[name].currDoor][k] = 0
			ui.updateTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..players[name]["cNumDoor"..players[name].currDoor][k].."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name)
		end
		checkProgress(name, k, players[name]["cNumDoor"..players[name].currDoor][k], players[name].currDoor, tAId)
	elseif cb:sub(0,9) == "downArrow" then
		k = tAId-110-(players[name].pos-1)*10
		if players[name]["cNumDoor"..players[name].currDoor][k] > 0 and players[name]["cNumDoor"..players[name].currDoor][k] <= 5 or players[name]["cNumDoor"..players[name].currDoor][k] > 7 and players[name]["cNumDoor"..players[name].currDoor][k] <= 9 then
			players[name]["cNumDoor"..players[name].currDoor][k] = players[name]["cNumDoor"..players[name].currDoor][k]-1
			ui.updateTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..players[name]["cNumDoor"..players[name].currDoor][k].."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name)
		elseif players[name]["cNumDoor"..players[name].currDoor][k] == 7 then
			players[name]["cNumDoor"..players[name].currDoor][k] = players[name]["cNumDoor"..players[name].currDoor][k]-1
			ui.updateTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..players[name]["cNumDoor"..players[name].currDoor][k].."</font><br><font color='#C51A05' face='aharoni' size='20'><b>∨</b></font></p>", name)
		elseif players[name]["cNumDoor"..players[name].currDoor][k] == 0 then
			players[name]["cNumDoor"..players[name].currDoor][k] = 9
			ui.updateTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..players[name]["cNumDoor"..players[name].currDoor][k].."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name)
		end
		checkProgress(name, k, players[name]["cNumDoor"..players[name].currDoor][k], players[name].currDoor, tAId)
	elseif cb:sub(0,10) == "unlockDoor" then
		ui.removeTextArea(100, name)
		ui.removeTextArea(101, name)
		for i=1,4 do
			ui.removeTextArea(tonumber(100+10*players[name].pos+i), name)
		end
		tfm.exec.removePhysicObject(tonumber(players[name].pos*10+players[name].currDoor))
		players[name].currDoor = players[name].currDoor+1
	
	elseif cb == "openHelp" then
		ui.removeTextArea(150, name)
		
		heightBase = 640
		weightBase = 250
		xBase = math.ceil((800-heightBase)/2)
		yBase = math.ceil((400-weightBase)/2)
		
		ui.addTextArea(151, "", name, xBase, yBase, heightBase, weightBase, 0x2D211A, 0x2D211A, 0.8, true)
		ui.addTextArea(152, "", name, tonumber(xBase+1), tonumber(yBase+1), tonumber(heightBase-2), tonumber(weightBase-2), 0x986742, 0x986742, 1, true)
		ui.addTextArea(153, "", name, tonumber(xBase+4), tonumber(yBase+4), tonumber(heightBase-8), tonumber(weightBase-8), 0x171311, 0x171311, 1, true)
		ui.addTextArea(154, "", name, tonumber(xBase+5), tonumber(yBase+5), tonumber(heightBase-10), tonumber(weightBase-10), 0x0C191C, 0x0C191C, 1, true)
		ui.addTextArea(155, "", name, tonumber(xBase+6), tonumber(yBase+6), tonumber(heightBase-12), tonumber(weightBase-12), 0x24474D, 0x24474D, 1, true)
		ui.addTextArea(156, "", name, tonumber(xBase+7), tonumber(yBase+7), tonumber(heightBase-14), tonumber(weightBase-14), 0x183337, 0x183337, 1, true)
		
		ui.addTextArea(157, "", name, tonumber(xBase+8), tonumber(yBase+8), tonumber(heightBase-16), tonumber(weightBase-16), 0x122528, 0x122528, 1, true)
		ui.addTextArea(158, rules, name, tonumber(xBase+8), tonumber(yBase+8), tonumber(heightBase-16), tonumber(weightBase-50), 0, 0, 0, true)
		
		ui.addTextArea(159, "", name, tonumber(xBase+16), tonumber(yBase+weightBase-33), tonumber(heightBase-34), 18, 0x5D7D90, 0x5D7D90, 1, true)
		ui.addTextArea(160, "", name, tonumber(xBase+18), tonumber(yBase+weightBase-31), tonumber(heightBase-34), 18, 0x11171C, 0x11171C, 1, true)
		ui.addTextArea(161, "<p align='center'><font color='#C2C2DA' size='11'><a href='event:closeHelp'>Kapat</font></p>", name, tonumber(xBase+17), tonumber(yBase+weightBase-32), tonumber(heightBase-34), 18, 0x3C5064, 0x3C5064, 1, true)
		
	elseif cb == "closeHelp" then
		ui.addTextArea(150, "<p align='center'><font color='#C2C2DA' face='DejaVu Sans Mono' size='18'><a href='event:openHelp'><b>?</b></a></font></p>", nil, 775, 24, 25, weight, 0x6A7495, 0x6A7495, 1, true)
		for i=151,161 do
			ui.removeTextArea(i, name)
		end
	end
end

function checkProgress(name, numCode, newVal, door, tAId)
	if codes["c"..door.."Part"..numCode] == newVal then
		if players[name]["cOkDoor"..door][numCode] == 0 then
			ui.removeTextArea(tAId, name)
			if newVal >= 0 and newVal <= 4 or newVal >= 7 and newVal <= 9 then
				ui.addTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..newVal.."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name, 225+80*(numCode-1)+11*(numCode-1), 140, 80, 120, 0x05C506, 0x00000, 1, true)
			elseif newVal == 5 then
				ui.addTextArea(tAId, "<p align='center'><br><font color='#05C506' face='aharoni' size='20'><b>∧</b></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..newVal.."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name, 225+80*(numCode-1)+11*(numCode-1), 140, 80, 120, 0x05C506, 0x00000, 1, true)
			elseif newVal == 6 then
				ui.addTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..newVal.."</font><br><font color='#05C506' face='aharoni' size='20'><b>∨</b></font></p>", name, 225+80*(numCode-1)+11*(numCode-1), 140, 80, 120, 0x05C506, 0x00000, 1, true)
			end
			players[name]["cOkDoor"..door][numCode] = 1
		end
	else
		if players[name]["cOkDoor"..door][numCode] == 1 then
			ui.removeTextArea(tAId, name)
			if newVal >= 0 and newVal <= 4 or newVal >= 7 and newVal <= 9 then
				ui.addTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..newVal.."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name, 225+80*(numCode-1)+11*(numCode-1), 140, 80, 120, 0xC51A05, 0x00000, 1, true)
			elseif newVal == 5 then
				ui.addTextArea(tAId, "<p align='center'><br><font color='#C51A05' face='aharoni' size='20'><b>∧</b></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..newVal.."</font><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:downArrow"..tostring(tonumber(tAId)).."'><b>∨</b></a></font></p>", name, 225+80*(numCode-1)+11*(numCode-1), 140, 80, 120, 0xC51A05, 0x00000, 1, true)
			elseif newVal == 6 then
				ui.addTextArea(tAId, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:upArrow"..tostring(tonumber(tAId)).."'><b>∧</b></a></font><br><font color='#C2C2DA' face='aharoni' size='60'>"..newVal.."</font><br><font color='#C51A05' face='aharoni' size='20'><b>∨</b></font></p>", name, 225+80*(numCode-1)+11*(numCode-1), 140, 80, 120, 0xC51A05, 0x00000, 1, true)
			end
			players[name]["cOkDoor"..door][numCode] = 0
		end
	end
	if players[name]["cOkDoor"..door][1] == 1 and players[name]["cOkDoor"..door][2] == 1 and players[name]["cOkDoor"..door][3] == 1 and players[name]["cOkDoor"..door][4] == 1 then
		ui.addTextArea(101, "<p align='center'><br><font color='#C2C2DA' face='aharoni' size='20'><a href='event:unlockDoor"..tostring(door).."'><b>Kilidi Aç</b></a></font></p>", name, 220, 270, 362, 40, 0x010101, 0x010101, 1, true)
	else
		ui.removeTextArea(101, name)
	end
end

function eventLoop(t1, t2)
	if tonumber(math.floor(t2/1000)) == 0 then
		for i=10,145 do
			ui.removeTextArea(i)
		end
		tfm.exec.newGame(map:sub(1,6)..bGs[math.random(#bGs)]..map:sub(7))
	end
end

tfm.exec.newGame(map:sub(1,6)..bGs[math.random(#bGs)]..map:sub(7))