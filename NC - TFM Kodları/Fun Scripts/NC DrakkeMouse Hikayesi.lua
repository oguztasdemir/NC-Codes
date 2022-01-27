------------------------------------------------------
-- Module : Défiez Von Drekkemaus (par Tortuegreen) --
------------------------------------------------------

tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore (true)
tfm.exec.disableAfkDeath (true)
tfm.exec.disableAutoTimeLeft (true)
tfm.exec.disableAutoShaman (true)

players = {}
ptsQu = {0, 0, 0, 0, 1, 2, 0, 1, 0, 2, -1, 0, 0, 0, -1, 0, 2, -1, 0, -1, 0, 1, 0, 0, 0, 0, 1, 0, 2, 0, 0, -1, 1, 0, 1, 2, 0, 0, 0, 0, 0}
story = {
	{"Merhaba, benim adým ARCHAIN Von Drekkemaus.", "<a href='event:nextQu2'>> Merhaba</a>"}, -- 1 Général +0
	{"Sonunda seninle tanýþmak!", "<a href='event:nextQu3'>>Seni görmek güzel!</a>", "<a href='event:nextQu6'>> Korkarým...</a>"}, -- 2 Général +0
	{"Hatta ben size zarar veremez olur?", "<a href='event:nextQu4'>> Evet!</a>", "<a href='event:nextQu5'>> Demek istediðim bu deðil:(</a>"}, -- 3 Situationnel[2.1] +0
	{"Sen benim tatmak için kendinize biraz çok emin görünüyorsun. ò.ó", "<a href='event:nextQu7'>-Aþaðýdaki-</a>"}, -- 4 Situationnel[3.1] +0
	{"Senin için umut !!! ò.ó", "<a href='event:nextQu7'>-Aþaðýdaki-</a>"}, -- 5 Situationnel[3.2] +1
	{"Benden kormak için haklýsýn. ò.ó", "<a href='event:nextQu7'>-Aþaðýdaki-</a>"}, -- 6 Situationnel[2.2] +2
	{"Hakkýmda ne biliyorsun?", "<a href='event:nextQu8'>> Çok deðil</a>", "<a href='event:nextQu9'>> Her þey !</a>"}, -- 7 Général +0
	{"Daha sonra beni tanýmak için gidiyoruz.", "<a href='event:nextQu12'>-Aþaðýdaki-</a>"}, -- 8 Situationnel[7.1] +1
	{"Ne gibi ?", "<a href='event:nextQu10'>> Bir fare vampir sensin</a>", "<a href='event:nextQu11'>> Sen ýsýrýk sevmiyorsun.</a>"}, -- 9 Situationnel[7.2] +0
  {"En önemlisi kötü ò.ó", "<a href='event:nextQu12'>-Aþaðýdaki-</a>"}, -- 10 Situationnel[9.1] +2
	{"Ben ýsýrmaya istemiyorsanýz göreceksiniz!", "<a href='event:nextQu12'>-Aþaðýdaki-</a>"}, -- 11 Situationnel[9.2] -1
	{"Bence gibi, benim baþlýðý Von Drekkemaus var?", "<a href='event:nextQu13'>> Sana deðil avous...</a>", "<a href='event:nextQu16'>> Tabiki evet!</a>"}, -- 12 Général +0
	{"Bu oyunun sadece en iyi baþlýk eksikliði, tamam.", "<a href='event:nextQu14'>> Her þey.</a>", "<a href='event:nextQu15'>> Biliyorum...</a>"}, -- 13 Situationnel[12.1] +0
	{"Bana ters cesaret... Dikkat et!", "<a href='event:nextQu19'>-Aþaðýdaki-</a>"}, -- 14 Situationnel[13.1] +0
	{"Sen samimi görünmüyorsun...", "<a href='event:nextQu19'>-Aþaðýdaki-</a>"}, -- 15 Situationnel[13.2] -1
	{"Ben ('yukarýdan fareyi Yenile Eðer doðrulayarak önce deðiþmiþ kýsa sürede sol týklayýn) [/ baþlýk 307] etsinler ...", "<a href='event:nextQu17'>-Aþaðýdaki-</a>"}, -- 16 Situationnel[12.2] +0
	{"Tamam, bu konuda, herkes size saygý duyacaðýz.", "<a href='event:nextQu19'>-Aþaðýdaki-</a>"}, -- 17 Situationnel[16.0] +2
	{"Beni LIED var ve ben bunu sevmiyorum gibi görünüyor! ò.ó", "<a href='event:nextQu19'>-Aþaðýdaki-</a>"}, -- 18 Situationnel[16.0] -1
	{"Deðilse, hiç benim kedi iskeleti dövmek mi?", "<a href='event:nextQu21'>> Birçok kez evet</a>", "<a href='event:nextQu20'>> Hayýr, daha önce bayýlttý</a>"}, -- 19 Général +0
	{"Ben mankenlerden nefret ediyorum!", "<a href='event:nextQu24'>-Aþaðýdaki-</a>"}, -- 20 Situationnel[19.2] -1
	{"O yüz mor muydu?", "<a href='event:nextQu22'>> Zaten biraz</a>", "<a href='event:nextQu23'>> Bu küçük Chihuahua?</a>"}, -- 21 Situationnel[19.2] +0
	{"Benim yaratýlýþ orada baþlamak!", "<a href='event:nextQu24'>-Aþaðýdaki-</a>"}, -- 22 Situationnel[21.1] +1
	{"Benim bekçi için biraz saygý, ben sana dua ederim!", "<a href='event:nextQu24'>-Aþaðýdaki-</a>"}, -- 23 Situationnel[21.2] +0
	{"Þimdi benim için vampir diþlerini karþýlaþtýrabilirsiniz olacak?", "<a href='event:nextQu25'>> Evet hemen</a>", "<a href='event:nextQu28'>> Hayýr,o olacak</a>"}, -- 24 Général +0
	{"Ekipman þimdi vampir diþlerinin! (En kýsa sürede size doðrulayarak önce deðiþmiþ olarak sol üstten fare Yenile 'üzerine týklayýn)", "<a href='event:nextQu26'>-Aþaðýdaki-</a>"}, -- 25 Situationnel[24.1] +0
	{"Anlaþýlan, onlar size daha bana çok daha iyi! Gülünç muahaha görünüyorsun ò.ó", "<a href='event:nextQu31'>-Aþaðýdaki-</a>"}, -- 27 Situationnel[25.0] +0
	{"Bunlarý yapmadýðýnýz gibi görünüyor. Neyse ki, kendini bana karþýlaþtýrmak olamaz ò.ó", "<a href='event:nextQu31'>-Aþaðýdaki-</a>"}, -- 26 Situationnel[25.0] +1
	{"Neden onun vampir diþlerini gösteriyor deðil mi?", "<a href='event:nextQu29'>> Ben istemiyorum çünkü</a>", "<a href='event:nextQu30'>> Ben yapmadým çünkü...</a>"}, -- 28 Situationnel[24.2] +0
	{"Sen bana onu yapacak, haklýsýn ò.ó", "<a href='event:nextQu31'>-Aþaðýdaki-</a>"}, -- 29 Situationnel[28.1] +2
	{"Bu durumda Halloween katýlmak nasýl ...", "<a href='event:nextQu31'>-Aþaðýdaki-</a>"}, -- 30 Situationnel[28.2] +0
	{"Sen sevdiðim kadýnýn adýný hatýrlýyor musun?", "<a href='event:nextQu32'>>Evet, onun adý Luffy olduðunu hatýrlýyorum.</a>", "<a href='event:nextQu33'>> Ben onun adý Buffy olduðuna inanýyorum.</a>"}, -- 31 Général +0
	{"Sen iyi bir hafýza bunu söylemek yok. Buffy oldu! ò.ó", "<a href='event:nextQu34'>-Aþaðýdaki-</a>"}, -- 32 Situationnel[31.1] -1
	{"Ýþte bu: Buffy sevgilim!", "<a href='event:nextQu34'>-Aþaðýdaki-</a>"},  -- 33 Situationnel[31.2] +1
	{"Bir aþýk önce, o bir iþ vardý. Size göre hangisi?", "<a href='event:nextQu35'>> Vampir avcýsý</a>", "<a href='event:nextQu36'>> Korumalý vampir.</a>"},  -- 34 Général +0
	{"Evet beni mutlu olabilecek bir iþ deðildi.", "<a href='event:nextQu37'>-Aþaðýdaki-</a>"}, -- 35 Situationnel[34.1] +1
	{"Güzel iþ olurdu ama ne...", "<a href='event:nextQu37'>-Aþaðýdaki-</a>"},  -- 36 Situationnel[34.2] +2
	{"Burada, size oldukça kesin olup olmadýðýný bilmek için zamaný geldi", "<a href='event:nextQu38'>-Aþaðýdaki-</a>"}, -- 37 Général +0
	{"Benim evime alabilir miyim?", "<a href='event:nextQu39'>Ben öyle düþünüyorum! </a>", "<a href='event:nextQu39'>Bilmiyorum ...</a>"}, -- 38 Général +0
	{"(10 veya daha fazla puan 15 takým olmalýdýr) en topladýðýnýz puan bakalým !!!", "<a href='event:nextQu40'>-Aþaðýdaki-</a>"} -- 39 Général +0
}
closeEntDoor = 0
rules = "<p align='center'><font color='#EB1D51' face='DejaVu Sans Mono' size='25'><b>Défiez Archain Von Drekkemaus !</b></font></p>"
.."<p align='center'><font color='#C2C2DA' face='DejaVu Sans Mono' size='18'>Répondez à ses questions...</font></p><br>"
.."<p align='center'><font color='#BABD2F' face='DejaVu Sans Mono' size='15'>Le but est simple, vous êtes dans le jardin de Von Drekkemaus. Pour rentrer dans sa demeure, il vous faudra « simplement » le convaincre...</font></p><br>"
.."<p align='center'><font color='#BABD2F' face='DejaVu Sans Mono' size='15'>Pour cela, répondez à ses questions en essayant de ne pas le contrarier. Un système de points est en place : si vous répondez comme il veut, vous gagnerez des points, sinon vous en perdrez.</font></p><br>"
.."<p align='left'><font color='#C2C2DA' face='DejaVu Sans Mono' size='15'><b>Complément</b><br>Le nombre de points récoltés vous sera affiché à la fin. Vous pouvez avoir entre 0 et 15. Si vous réussissez à avoir au moins 10, vous pourrez entrer dans sa gigantesque demeure.</font></p>"

function eventNewPlayer(name)
	tfm.exec.respawnPlayer(name)
	players[name] = {
		pts = 3,
		temp = 0,
	}
	initStory(name)
	setHelp(name)
end

function eventNewGame()
	tfm.exec.setUIMapName ("<font color='#C2C2DA'>Module :</font> <font color='#BABD2F'>Défiez Von Drekkemaus !</font>")
	tfm.exec.addPhysicObject(1, 400, 390, {type=14, restitution=0.2, friction=0, width=800, height=20})
	tfm.exec.addPhysicObject(2, 770, 530, {type=14, restitution=0.2, friction=0, width=20, height=330})
	tfm.exec.addPhysicObject(3, 800, 370, {type=14, restitution=0.2, friction=0, width=10, height=1500, angle = -65})
	tfm.exec.addPhysicObject(4, 800, 325, {type=14, restitution=0.2, friction=0, width=10, height=1500, angle = -65})
	tfm.exec.addPhysicObject(5, 1870, 697, {type=14, restitution=0.35, friction=0.3, width=50, height=25, angle = -30})
	tfm.exec.addPhysicObject(6, 2020, 632, {type=14, restitution=0, friction=100, width=80, height=10})
	tfm.exec.addPhysicObject(7, 130, 50, {type=14, restitution=0, friction=100, width=80, height=10, angle = -70})
	tfm.exec.addPhysicObject(8, 1900, 632, {type=14, restitution=0, friction=0, width=10, height=200})
	tfm.exec.addPhysicObject(9, 600, 200, {type=14, restitution=0, friction=100, width=80, height=10, angle = 40})
	tfm.exec.addPhysicObject(10, 600, 200, {type=14, restitution=20, friction=0, width=80, height=10, angle = 40})
	tfm.exec.addPhysicObject(11, 960, -150, {type=14, restitution=0, friction=0, width=1000, height=10, angle = -40})
	tfm.exec.addPhysicObject(12, 700, 150, {type=14, restitution=0, friction=0, width=200, height=10, angle = -40})
	tfm.exec.addPhysicObject(13, 1000, 85, {type=14, restitution=0, friction=0, width=430, height=10})
	tfm.exec.addPhysicObject(14, 1000, 0, {type=14, restitution=0, friction=0, width=800, height=10})
	tfm.exec.addPhysicObject(15, 1400, 170, {type=14, restitution=0, friction=0, width=400, height=10, angle = 23})
	tfm.exec.addPhysicObject(16, 1450, 120, {type=14, restitution=0, friction=0, width=600, height=10, angle = 23})
	tfm.exec.addPhysicObject(17, 1900, 200, {type=12, restitution=0, friction=0, width=10, height=600})
	tfm.exec.addPhysicObject(18, 1545, 500, {type=12, restitution=0, friction=0, width=40, height=200})
	tfm.exec.addPhysicObject(19, 1700, 475, {type=12, restitution=0, friction=0, width=400, height=10})
	ui.addTextArea(71, "<p align='center'><font color='#C54305' face='Dejavu Sans Mono' size='12'>Bienvenue</font></p>", nil, 2080, 525, 100, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
	tfm.exec.addPhysicObject(72, 2060, 567, {type=12, restitution=0.2, friction=0.3, width=10, height=10, color=0x3C2A1D, miceCollision=false, foreground=true, angle=-45})
	tfm.exec.addPhysicObject(73, 2070, 555, {type=12, restitution=0.2, friction=0.3, width=10, height=10, color=0x3C2A1D, miceCollision=false, foreground=true, angle=-45})
	ui.addTextArea(74, "<p align='center'><font color='#C54305' face='Dejavu Sans Mono' size='15'>Au cachot !</font></p>", nil, 1300, 250, 130, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
	tfm.exec.addPhysicObject(75, 1450, 260, {type=12, restitution=0.2, friction=0.3, width=12, height=12, color=0x3C2A1D, miceCollision=false, foreground=true, angle=-45})
	tfm.exec.addPhysicObject(76, 1475, 255, {type=12, restitution=0.2, friction=0.3, width=12, height=12, color=0x3C2A1D, miceCollision=false, foreground=true, angle=-45})
end

function initStory(name)
	ui.addTextArea(1, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[1][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[1][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
end

function updatePts(name, pts)
	players[name].pts = players[name].pts+pts
	if pts ~= 0 then
	end	
end

function eventTextAreaCallback(tAId, name, cb)
	if cb:sub(0,6) == "nextQu" then
		i = tonumber(cb:sub(7))
		ui.removeTextArea(tAId, name)
		if i == 40 then
			if players[name].pts >= 10 then
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>Tu as récolté un total de "..players[name].pts.."/15. Je te laisse entrer dans mon domaine. Bonne visite !</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'><a href='event:tp1'>-Entrer ! (NE PAS BOUGER AVANT L'ARRÊT)-</a></font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			else
				i = i+1
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>Tu as récolté seulement "..players[name].pts.."/15. Je suis désolé, tu n'es pas accepté dans mon domaine. ò.ó</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'><a href='event:tp2'>-Se téléporter... (NE PAS BOUGER AVANT L'ARRÊT) [Clic 1/2]-</a></font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			end
		elseif i == 25 then
			ui.addTextArea(45, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='15'><a href='event:updMouse'>Actualiser sa souris</font></p>", name, 10, 30, 200, weight, 0x3C2A1D, 0x3C2A1D, 1, true)
			ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
		elseif i == 26 then
			ui.removeTextArea(45, name)
			players[name].look = string.gsub(tfm.get.room.playerList[name].look, ";", ",")
			for j=1,3 do
				players[name].temp = string.find(tfm.get.room.playerList[name].look:sub(players[name].temp), ",")+1
				if j == 2 then
					players[name].limInf = string.find(tfm.get.room.playerList[name].look:sub(players[name].temp), ",")+1
				elseif j == 3 then
					players[name].limSup = string.find(tfm.get.room.playerList[name].look:sub(players[name].temp), ",")-1
					players[name].mouth = tonumber(tfm.get.room.playerList[name].look:sub(players[name].limInf,players[name].limSup))
				end
			end
			if players[name].mouth == 24 then
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			else
				i = i+1
				ui.addTextArea(i+1, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			end
		elseif i == 16 then
			ui.addTextArea(45, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='15'><a href='event:updMouse'>Actualiser sa souris</font></p>", name, 10, 30, 200, weight, 0x3C2A1D, 0x3C2A1D, 1, true)
			ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
		elseif i == 17 then
			ui.removeTextArea(45, name)
			if tfm.get.room.playerList[name].title == 307 then
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			else
				i = i+1
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			end
		else
			if story[i][3] ~= nil then
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."<br>"..story[i][3].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			else
				ui.addTextArea(i, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>"..story[i][1].."</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'>"..story[i][2].."</font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
			end
		end
		updatePts(name, ptsQu[i])
	elseif cb == "updMouse" then
		tfm.exec.killPlayer(name)
		tfm.exec.respawnPlayer(name)
	elseif cb:sub(0,2) == "tp" then
		i = tonumber(cb:sub(3))
		ui.removeTextArea(tAId, name)
		if i == 1 then
			tfm.exec.movePlayer(name, 175, 50, false)
			tfm.exec.removePhysicObject(8)
			closeEntDoor = 8.5
		elseif i == 2 then
			tfm.exec.movePlayer(name, 570, 700, false)
			ui.addTextArea(41, "<p align='center'><font color='#BABD2F' face='Dejavu Sans Mono' size='20'>Tu as récolté seulement "..players[name].pts.."/15. Je suis désolé, tu n'es pas accepté dans mon domaine. ò.ó</font><br><br><font color='#C2C2DA' face='Dejavu Sans Mono' size='15'><a href='event:tp3'>-Se téléporter... (NE PAS BOUGER AVANT L'ARRÊT) [Clic 2/2]-</a></font></p>", name, 180, 430, 400, weight, 0x3C2A1D, 0x3C2A1D, 1, false)
		elseif i == 3 then
			tfm.exec.movePlayer(name, 670, 150, false)
		end
	elseif cb == "openHelp" then
		ui.removeTextArea(0, name)
		setHelp(name)
	elseif cb == "closeHelp" then
		ui.addTextArea(0, "<p align='center'><font color='#C2C2DA' face='DejaVu Sans Mono' size='18'><a href='event:openHelp'><b>?</b></a></font></p>", name, 775, 24, 25, weight, 0x6A7495, 0x6A7495, 1, true)
		for i=51,61 do
			ui.removeTextArea(i, name)
		end
	end
end

function setHelp(name)
	heightBase = 640
	weightBase = 320
	xBase = math.ceil((800-heightBase)/2)
	yBase = math.ceil((400-weightBase)/2)
	ui.addTextArea(51, "", name, xBase, yBase, heightBase, weightBase, 0x2D211A, 0x2D211A, 0.8, true)
	ui.addTextArea(52, "", name, tonumber(xBase+1), tonumber(yBase+1), tonumber(heightBase-2), tonumber(weightBase-2), 0x986742, 0x986742, 1, true)
	ui.addTextArea(53, "", name, tonumber(xBase+4), tonumber(yBase+4), tonumber(heightBase-8), tonumber(weightBase-8), 0x171311, 0x171311, 1, true)
	ui.addTextArea(54, "", name, tonumber(xBase+5), tonumber(yBase+5), tonumber(heightBase-10), tonumber(weightBase-10), 0x0C191C, 0x0C191C, 1, true)
	ui.addTextArea(55, "", name, tonumber(xBase+6), tonumber(yBase+6), tonumber(heightBase-12), tonumber(weightBase-12), 0x24474D, 0x24474D, 1, true)
	ui.addTextArea(56, "", name, tonumber(xBase+7), tonumber(yBase+7), tonumber(heightBase-14), tonumber(weightBase-14), 0x183337, 0x183337, 1, true)
	ui.addTextArea(57, "", name, tonumber(xBase+8), tonumber(yBase+8), tonumber(heightBase-16), tonumber(weightBase-16), 0x122528, 0x122528, 1, true)
	ui.addTextArea(58, rules, name, tonumber(xBase+8), tonumber(yBase+8), tonumber(heightBase-16), tonumber(weightBase-50), 0, 0, 0, true)
	ui.addTextArea(59, "", name, tonumber(xBase+16), tonumber(yBase+weightBase-33), tonumber(heightBase-34), 18, 0x5D7D90, 0x5D7D90, 1, true)
	ui.addTextArea(60, "", name, tonumber(xBase+18), tonumber(yBase+weightBase-31), tonumber(heightBase-34), 18, 0x11171C, 0x11171C, 1, true)
	ui.addTextArea(61, "<p align='center'><font color='#C2C2DA' size='11'><a href='event:closeHelp'>Fermer cette fenêtre</a></font></p>", name, tonumber(xBase+17), tonumber(yBase+weightBase-32), tonumber(heightBase-34), 18, 0x3C5064, 0x3C5064, 1, true)
end

function eventLoop(t1, t2)
	closeEntDoor = closeEntDoor-0.5
	if closeEntDoor == 0.5 then
		tfm.exec.addPhysicObject(8, 1900, 632, {type=14, restitution=0, friction=0, width=10, height=200})
	end
end
	
for name in pairs(tfm.get.room.playerList) do
	eventNewPlayer(name)
end

tfm.exec.newGame("@6277028")