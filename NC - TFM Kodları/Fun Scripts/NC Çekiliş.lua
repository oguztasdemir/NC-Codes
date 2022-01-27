
adm = "Devilstrkpro"
nome = "Night Club"
mapa = [[<C><P Ca=""/><Z><S><S H="40" P="0,0,0.3,0.2,0,0,0,0" L="800" X="399" N="" Y="380" T="0" /></S><D /><O /></Z></C>]]

participante = {}
inicio = false
fim = false
qtd = 0
fast = 0

function eventTextAreaCallback(id, p, cmd)
	if cmd == "entrada" then
		ui.addTextArea(0, "<p align='center'>Çekiliþ seçiliyor. Lütfen bekleyin...", p, 200, 370, 400, 20, 1, 0x00ff00, 0.8,false)
		entrada(p, #participante + 1)
	elseif cmd == "inicio" then
		ui.addPopup(0, 2, "<p align='center'>Seçiliþi kaç kiþi kazanacaðýný buraya yaz.", p, 300, 200, 200, false)
	elseif cmd == "novo" then
		novo()
	end
end

function eventNewPlayer(p)
	if not inicio and not fim then
		ui.addTextArea(0, "<p align='center'><a href='event:entrada'>Kliknij, aby dolaczyc do losowania!", p, 200, 370, 400, 20, 1, 0xffff00, 0.8, false)
		ui.addTextArea(-3, "<p align='center'><font size='30px'>"..nome, p, 5, 40, 795, 40, 1, 1, 0.8, false)
	end
end

function eventPopupAnswer(id, p, cmd)
	if tonumber(cmd, 10) then
		if tonumber(cmd, 10) >= 1 and tonumber(cmd, 10) <= #participante then
			ui.removeTextArea(0, nil)
			ui.removeTextArea(-1, nil)
			qtd = tonumber(cmd, 10)
			fast = math.random(5,15)
			inicio = true
		end
	end
end

function participando(p)
	for i, v in pairs(participante) do
		if v == p then
			return true
		end
	end
	return false
end

function entrada(p, num)
	if not participando(p) then
		participante[num] = p
		ui.addTextArea(num, "<p align='center'>" .. p, nil, ((num-1)%8)*100+5, math.floor((num-1)/8)*30+100, 90, 20, 1, 1, 0.8, false)
	end
end

function novo()
	for i=1, #participante do
		ui.removeTextArea(i, nil)
		table.remove(participante, 1)
	end
	ui.addTextArea(0, "<p align='center'><a href='event:entrada'>Kliknij, aby dolaczyc do losowania!", nil, 200, 370, 400, 20, 1, 0xffff00, 0.8, false)
	ui.addTextArea(-1, "<p align='center'><a href='event:inicio'>Wyslij", adm, 650, 370, 100, 20, 1, 0x0000ff, 0.8,false)
	tfm.exec.removePhysicObject(0)
	fim = false
end

function sorteio(tipo)
	local lista = {}
	local sorteado = 0
	for i=1, #participante do
		lista[i] = i
	end
	local rand = 0
	for i, v in pairs(participante) do
		ui.addTextArea(i, "<p align='center'>" .. v, nil, ((i-1)%8)*100+5, math.floor((i-1)/8)*30+100, 90, 20, 1, 1, 0.8, false)
	end
	for i=1, qtd do
		sorteado = math.random(#lista)
		rand = lista[sorteado]
		table.remove(lista, sorteado)
		if tipo == "quase" then
			ui.addTextArea(rand, "<p align='center'><font color='#ffff00'>" .. participante[rand], nil, ((rand-1)%8)*100+5, math.floor((rand-1)/8)*30+100, 90, 20, 1, 0xffff00, 0.8, false)
		elseif tipo == "final" then
			ui.addTextArea(rand, "<p align='center'><font color='#00ff00'><b>" .. participante[rand], nil, ((rand-1)%8)*100+5, math.floor((rand-1)/8)*30+100, 90, 20, 1, 0x00ff00, 0.8, false)
		end
	end
end

function eventLoop()
	if inicio then
		if fast > 0 then
			sorteio("quase")
			fast = fast - 1
		else
			sorteio("final")
			inicio = false
			fim = true
			ui.addTextArea(-1, "<p align='center'><a href='event:novo'>Yeni Çekiliþ", adm, 650, 370, 100, 20, 1, 0x0000ff, 0.8,false)
		end
	end
	if fim then
		tfm.exec.addPhysicObject(0, 400, 200, {type=12,color=math.random(0x666666, 0x777777), miceCollision=false, width=800, height=400})
		for i=1, 50 do
			tfm.exec.displayParticle(math.random(21,24), math.random(1,800), 20, math.random(-20,20)/100, math.random(10,1000)/100, 0, 0, nil)
		end
	end
end

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
math.randomseed(os.time())
tfm.exec.newGame(mapa)
ui.addTextArea(0, "<p align='center'><a href='event:entrada'>Çekiliþe katýlmak için <VP>buraya<n> týkla!", nil, 200, 370, 400, 20, 1, 0xffff00, 0.8, false)
ui.addTextArea(-1, "<p align='center'><a href='event:inicio'>Gönder", adm, 650, 370, 100, 20, 1, 0x0000ff, 0.8,false)
ui.addTextArea(-3, "<p align='center'><font size='30px'>"..nome, nil, 5, 40, 795, 40, 1, 1, 0.8, false)
tfm.exec.setUIMapName("Devilstrkpro")