for _, v in next, {'AutoShaman', 'AutoTimeLeft', 'AutoNewGame', 'AfkDeath'} do
	tfm.exec['disable' .. v]()
end

local data = {}
local player1, player2 = '', ''

local jokenpo = {
	keys = {
		[66] = {'Pedra', 65},
		[67] = {'Papel', 85},
		[86] = {'Tesoura', 95}
	},
	time = 10,
	maps = {
		{7289491},
		{'<C><P F="1" Ca="" /><Z><S><S L="800" H="183" X="400" Y="470" T="6" P="0,0,0.3,0.2,0,0,0,0" /><S L="801" o="324650" X="401" H="10" Y="79" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="324650" X="5" H="83" Y="41" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="324650" H="83" Y="40" T="12" X="797" /><S P="0,0,0.3,0.2,0,0,0,0" L="801" o="324650" H="10" Y="3" T="12" X="400" /><S P="0,0,0.3,0.2,0,0,0,0" L="92" o="760202" X="239" Y="217" T="12" H="10" /><S L="92" o="760202" X="280" H="10" Y="258" T="12" P="0,0,0.3,0.2,90,0,0,0" /><S P="0,0,0.3,0.2,90,0,0,0" L="92" o="760202" H="10" Y="258" T="12" X="196" /><S L="92" o="760202" X="239" H="10" Y="300" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,90,0,0,0" L="92" o="d75c8" H="10" Y="258" T="12" X="529" /><S L="92" o="d75c8" H="10" X="570" Y="217" T="12" P="0,0,0.3,0.2,180,0,0,0" /><S L="92" o="d75c8" H="10" X="570" Y="299" T="12" P="0,0,0.3,0.2,180,0,0,0" /><S L="92" o="d75c8" H="10" X="611" Y="258" T="12" P="0,0,0.3,0.2,90,0,0,0" /><S L="10" X="407" H="424" Y="283" T="14" P="0,0,0.3,0.2,0,0,0,0" /></S><D><P C="66694" Y="76" T="34" P="0,0" X="406" /><P C="af1b1f" Y="80" T="34" X="-389" P="0,0" /><DS Y="58" X="409" /><P X="335" Y="461" T="46" P="0,0" /><P X="769" Y="469" T="51" P="0,0" /><P P="0,0" Y="489" T="42" X="32" /><P X="17" Y="463" T="42" P="0,0" /><P P="0,0" Y="435" T="42" X="-18" /><P P="0,0" Y="476" T="51" X="800" /><P X="747" Y="494" T="51" P="0,0" /><P P="0,0" Y="462" T="46" X="136" /><P X="492" Y="445" T="50" P="0,0" /><P P="0,0" Y="445" T="50" X="532" /><P X="572" Y="445" T="50" P="0,0" /><P P="0,0" Y="445" T="50" X="612" /><P X="176" Y="462" T="46" P="0,0" /><P P="0,0" Y="462" T="46" X="216" /><P X="256" Y="462" T="46" P="0,0" /><P P="0,0" Y="462" T="46" X="296" /><P P="0,0" Y="462" T="46" X="376" /><P P="0,0" Y="445" T="50" X="455" /></D><O><O C="14" Y="258" P="0" X="239" /><O C="14" Y="258" P="0" X="570" /></O></Z></C>'}
	},
	nails = {},
	wo = 0,
	winner = ''
}

local nextmap = jokenpo.maps[math.random(#jokenpo.maps)]
nextmap = nextmap[math.random(#nextmap)]
tfm.exec.newGame(nextmap)

function eventNewPlayer(name)
	local keys = {66, 67, 86}

	data[name] = {
		played = false,
		currentemote = 666,
		currentchoice = {},
		ingame = false
	}

	for _, v in next, keys do
		system.bindKeyboard(name, v, true)
	end
end
table.foreach(tfm.get.room.playerList, eventNewPlayer)

function eventNewGame()
	tfm.exec.setGameTime(99999)

	if (jokenpo.wo ~= 0) then
		ui.removeTextArea(jokenpo.wo, nil)
	elseif (jokenpo.winner ~= '') then
		ui.removeTextArea(5, nil)
	end
	ui.removeTextArea(2, nil)

	for k, v in next, data do
		v.currentemote = 666
	end

	jokenpo.winner = ''
	jokenpo.wo = 0
	jokenpo.time = 10

	player1, player2 = '', ''

	ui.addTextArea(0, "<font size='30' color='FFFFFF'><a href='event:play1'>Jogar</a>", nil, 10, 200, nil, nil, nil, nil, 50, true)
	ui.addTextArea(1, "<font size='30' color='FFFFFF'><a href='event:play2'>Jogar</a>", nil, 700, 200, nil, nil, nil, nil, 50, true)

	local xml = (tfm.get.room.xmlMapInfo.xml)
	if (xml) then
		local nails = {}
		local i = 0

		xml = xml:gsub('<O C="14" (.-)/>', function(a)
			i = i + 1

			nails[i] = {}

			local x = a:match('X="(%d+)"')
			nails[i].x = tonumber(x)

			local y = a:match('Y="(%d+)"')
			nails[i].y = tonumber(y)
		end)

		jokenpo.nails = nails
	end

	table.sort(jokenpo.nails, function(a, b) return a.x < b.x end)

	local author = (xml and tfm.get.room.xmlMapInfo.author)
	if (author == '#Module') then
		ui.setMapName('#Jokenpo! Desenvolvido por: Nuncaplagiei')
	else
		ui.setMapName('#Jokenpo! Desenvolvido por: Nuncaplagiei    <bl>|</bl>    Mapa feito por: ' .. author .. '')
	end
end

function eventTextAreaCallback(id, name, link)
	if (link == 'play1') then
		if (player1 == '' and player2 ~= name) then
			data[name].ingame = true
			player1 = name
			tfm.exec.movePlayer(name, 50, 370)

			ui.removeTextArea(0, nil)
		end
	elseif (link == 'play2') then
		if (player2 == '' and player1 ~= name) then
			data[name].ingame = true
			player2 = name
			tfm.exec.movePlayer(name, 740, 370)

			ui.removeTextArea(1, nil)
		end
	end

	if (player1 ~= '' and player2 ~= '') then
		ui.addTextArea(2, "<p align='center'><font size='30'>" .. jokenpo.time, nil, 10, 200, 800, nil, nil, nil, 50, true)
	end
end

function eventLoop(elapsed, remaining)
	local remaining = (remaining/1000)

	for k, v in next, tfm.get.room.playerList do
		if (data[k].ingame and data[k].currentemote ~= 666) then
			tfm.exec.playEmote(k, data[k].currentemote)
		end
	end

	if (data[player1] and data[player2]) then
		if (data[player1].played or data[player2].played) then
			local bothplayed = (data[player1].played and data[player2].played)

			if (jokenpo.time > 0) then
				jokenpo.time = jokenpo.time - 0.5

				if (not tostring(jokenpo.time):find('.5')) then
					ui.updateTextArea(2, "<p align='center'><font size='30'>" .. jokenpo.time, nil)
				end
			else
				if (bothplayed) then
					tfm.exec.addShamanObject(data[player1].currentchoice[2], jokenpo.nails[1].x, jokenpo.nails[1].y)
					tfm.exec.addShamanObject(data[player2].currentchoice[2], jokenpo.nails[2].x, jokenpo.nails[2].y)

					for k, v in next, data do
						v.played = false
						v.currentemote = 666
					end

					local choices = {['Pedra'] = 'Tesoura', ['Papel'] = 'Pedra', ['Tesoura'] = 'Papel'}
					jokenpo.winner = (choices[data[player1].currentchoice[1]] == data[player2].currentchoice[1] and player1 or choices[data[player2].currentchoice[1]] == data[player1].currentchoice[1] and player2 or '')
					if (jokenpo.winner ~= '') then
						ui.addTextArea(5, "<p align='center'><font size='30'>" .. jokenpo.winner .. " venceu!", nil, 10, 150, 800, nil, nil, nil, 50, true)
						data[jokenpo.winner].currentemote = 24
					else
						ui.addTextArea(5, "<p align='center'><font size='30'>O jogo empatou!", nil, 10, 150, 800, nil, nil, nil, 50, true)
						jokenpo.winner = 'Empate'

						data[player1].currentemote, data[player2].currentemote = 4, 4
					end

					tfm.exec.setGameTime(5)
				else
					jokenpo.wo = 6
					ui.addTextArea(6, "<p align='center'><font size='30'>" .. (not data[player1].played and player1 or not data[player2].played and player2) .. " arregou!", nil, 10, 150, 800, nil, nil, nil, 50, true)
					tfm.exec.setGameTime(5)

					for k, v in next, data do
						if (v.played) then
							v.currentemote = 1

							v.played = false
						end
					end
				end

				ui.removeTextArea(2, nil)
			end
		end
	end

	if (remaining <= 0) then
		local nextmap = jokenpo.maps[math.random(#jokenpo.maps)]
		nextmap = nextmap[math.random(#nextmap)]
		tfm.exec.newGame(nextmap)
	end
end

function eventKeyboard(name, key)
	if (jokenpo.keys[key] and data[name].ingame) then
		if (not data[name].played and jokenpo.time > 0) then
			data[name].played = true
			data[name].currentemote = 26
			data[name].currentchoice = jokenpo.keys[key]
		end
	end
end