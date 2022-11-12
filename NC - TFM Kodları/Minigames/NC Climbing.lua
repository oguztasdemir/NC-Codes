tfm.exec.disableAutoNewGame() tfm.exec.disableAutoShaman() tfm.exec.disableAutoScore()

start       = os.time()
_Vento      = math.random(1,4)
vento       = os.time();
_GameTime   = 0
_GameRecord = 0

-- Funções Especiais --
textarea=ui.addTextArea function ui.addTextArea(id,text,targetPlayer,x,y,width,height,backgroundColor,borderColor,backgroundAlpha,emboss,active,active2,active3) if active then textarea(6969+id,"",targetPlayer,x,y+1,width,height,0x000001,0x000001,backgroundAlpha,emboss) textarea(7979+id,"",targetPlayer,x,y-1,width,height,0x6A8FA2,0x6A8FA2,backgroundAlpha,emboss) end if active2 then textarea(7979+id,"",targetPlayer,x,y-1,width,height,0x6A8FA2,0x6A8FA2,backgroundAlpha,emboss) end if active3 then textarea(6969+id,"",targetPlayer,x,y+1,width,height,0x000001,0x000001,backgroundAlpha,emboss) end textarea(id,text,targetPlayer,x,y,width,height,backgroundColor,borderColor,backgroundAlpha,emboss) end
addPopup=ui.addPopup function ui.addPopup(id,tipo,texto,nome,x,y,largura,height,fixo) if tipo ~= 4 then addPopup(id,tipo,texto,nome,x,y,largura,height) else ui.addTextArea(id,texto,nome,x,y,largura,height,0x324650,0x324650,nil,true,true) lang=traduction(nome) ui.addTextArea(id+1,"<p align='center'><font size='12'><a href='event:close_popup'>"..lang.close.."</a></font></p>",nome,x+5,y+height-22,largura-10,18,0x3c5063,0x3c5063,nil,true,true) end end
function split(t,s) local a={} for i,v in string.gmatch(t,string.format("[^%s]+",s or "%s")) do table.insert(a,i) end return a end
function getPlayers() local players = 0; for i,v in pairs(tfm.get.room.playerList) do players=players+1; end return players end
function getPlayersAlive() local alives = 0; for i,v in pairs(tfm.get.room.playerList) do if not v.isDead then alives=alives+1; end end return alives end
function tfm.exec.setGameTime(integer) _GameTime = integer; end
-- Script Normal --
coins={}

reg_Data={}

vivos=0

languages = {
	["br"]={
		welcome = "<VP>?</VP> <J>Olá %s bem-vindo(a) ao <I>Climbing</I>.</J></B><BR><BL>Minigame em desenvolvimento versão alpha 0.13.3<BR>Minigame criado por: Contistente<BR>Ajudantes e Participantes:<BR>Lynezx e Fofinhoppp<BR>Dúvidas ou quer ver os comandos, digite !help</BL>",
		help = "<p align='center'><B><J><font size='15'>Como Jogar</font></J></B></p><BR><font size='12'><CE>O objetivo do jogo é chegar ao topo do mapa, todos os mapas do minigame são <B>Gerados aleatóriamente</B> pelo minigame, para não dificultar muito todos os jogadores tem 3 vidas e double jump apertando a tecla <B>Espaço</B>.</CE></font><BR><p align='center'><B><J><font size='15'>Comandos do Climbing</font></J></B></p><br><BL><font size='12'><B>!lang [BR / EN] - Define a linguagem do jogo apenas para você.<BR>!help - Abre a janela de ajuda e comandos.</font>",
		anuncio = "Quer ver quem é o melhor jogador do minigame? Digite <B>!rank</B>.",
		close="Fechar",
		loseallhearts="Você perdeu todos os seus <B><font color='#FF0000'>¦</font></B>.",
		version="<B><ROSE>~Nova versão 0.13.3~</ROSE></B><BR>- Adicionado sistema de recorde.<BR>- Nosso sistema de impulsos mudou."
	},

	["en"]={
		welcome="<VP>?</VP> <J>Hello %s welcome to <I>Climbing</I>.</J></B><BR><BL>Minigame in development alpha version 0.13.3<BR>Minigame created by: Devilstrkpro<BR>Helpers and Participants: <BR>Lynezx and Fofinhoppp<BR>Questions or want to see commands, type it !help </ BL>",
		help="<p align='center'><B><J><font size='15'>How to play</font></J></B></p><BR><font size='12'><CE>The goal of the game is to get to the top of the map, all maps Of the minigame are <B>randomly generated</B> by the minigame, so as not to make it very difficult for all players to have 3 lives and a double jump by pressing a <B>Space</B>.</CE></font><BR><p align='center'><B><J><font size='15'>Climbing Commands</font></p><BL></B></J><B>!lang [BR / EN] - Define a game language just for you.<BR>!help - Open the help window and commands.",
		anuncio="Want to see who is the best minigame player? Type <B>!rank</B>.",
		close="Close",
		loseallhearts="You have lost all your <B><font color='#FF0000'>¦</font></B>.",
		version="<B><ROSE>~New version 0.13.3~</ROSE></B><BR>- Added record system.<BR>- Our impulse system has changed."
	}
}

function traduction(name)
	return languages[data[name].lang]
end

function sendNewMap()
takeMul = function(x)
	return x-(x%5)
end


math.randomseed = 9

xml = {}

noturn = math.random(0,20)
meep = math.random(0,15)

if noturn == 5 then
	noturn=""
else
	noturn=""
end

coins = {}


xml.standard = "<C><P Ca='' "..noturn.." H='3000' F=\""..(math.random(0,8)%6).."\" /><Z><S>%s</S><D>%s</D><O /></Z></C>"
	
	
for i=1,30 do
	x=math.random(5,780)
	y=math.random(50,2900)
	table.insert(coins,{x=x,y=y})
	tfm.exec.addImage("", "!"..i, x, y)
end

if noturn ~= nil then noturn=true else noturn=false end
if meep == 5 then meep=true else meep=false end


xml.grounds,xml.decorations = {},{}

xml.S,xml.SET,xml.D = '<S c="1" L="%d" H="%d" X="%d" Y="%d" T="%d" P="0,0,%f,%f,%d,0,0,0" o="%d" />','<%s X="%d" Y="%d" />','<P P="0,0" X="%d" Y="%d" T="%d" />'

grounds = {{0,1,4},{10,1},{12,13},{1,2},{4,1},{1,10},{10,9,2}}
groundProperties = {{.3,.2},{0,.2},{0,1.2},{0,20},{20,.2},{.3,.2},{.3,.2},{.1,.2},{.3,.2},{0,0},{.3,0},{.05,.1},{.3,.2},{.3,.2},{.3,.2},{0,0}}
decorations = {{0,4,5},{},{},{},{1,42,51},{1,2,4,12,18,20,32,42,46},{0,1,2,3,4,5,11,42},{7,8,9,10},{},{},{42,103,118},{51,106},{},{},{},{}}

currentX,currentY = 0,0
mapGrounds = grounds[math.random(#grounds)]
for i = 1,245 do
	local ground = mapGrounds[i==1 and i or math.random(#mapGrounds)]
	local L = takeMul(ground~=13 and math.random(40,120) or math.random(20,40))
	local H = takeMul(math.random(20,35))
	if ground == 9 and math.random(10) < 6 then
		L,H = H,L
	end
	local X,Y
	repeat
		X = takeMul(math.random(-50,860) - L - (currentX/8))
		Y = takeMul(math.random(100,2350) + (currentY/4))
	until X > 0 and X < 800 and Y > 0 and Y < 3001
	currentX,currentY = X - X^.5,Y + Y^.5
	table.insert(xml.grounds,xml.S:format(L,H,X,Y,ground,groundProperties[ground+1][1],groundProperties[ground+1][2],i==1 and math.random(-10,10) or math.random(0,360),math.random(0,0xFFFFFF)))
	if math.random(22) < 3 then
		local dec = decorations[ground+1]
		table.insert(xml.decorations,xml.D:format(X - math.random(-((L/4)+1),((L/4)+1)),Y - (H/2),#dec>0 and dec[math.random(#dec)] or -1))
	end
	if i == 1 then
		for k,v in next,{"T"} do
			table.insert(xml.decorations,xml.SET:format(v,400,2950 - (H/2)))
		end
	end
end

tfm.exec.newGame(xml.standard:format(table.concat(xml.grounds),table.concat(xml.decorations)))
tfm.exec.addPhysicObject(0, 400, 2960, {type=math.random(0,14),width=100,miceCollision=true,friction=0.3,restitution=0.2})
end

data={}

function eventTextAreaCallback(id,name,link)
	if link == "close_popup" then	
		ui.removeTextArea(id,name)	
		ui.removeTextArea(id-1,name)
		ui.removeTextArea(6969+id,name)	
		ui.removeTextArea(6969+id-1,name)
		ui.removeTextArea(7979+id,name)	
		ui.removeTextArea(7979+id-1,name)
		
		for i=110,113 do
			ui.removeTextArea(i,name) ui.removeTextArea(6969+i,name) ui.removeTextArea(7979+i,name)
		end
	end
end

function eventChatCommand(name,cmd)
	argument = split(cmd," ")
 
	if cmd == "help" or cmd == "ajuda" then
		lang = traduction(name)
		ui.addPopup(100,4,string.format(lang.help,name),name,200,100,400,200,true)
	end
	
	if argument[1] == "lang" then
		if argument[2] == "br" or argument[2] == "BR" then
			data[name].lang = "br"
		end
		
		if argument[2] == "en" or argument[2] == "EN" then
			data[name].lang = "en"
		end
	end
	
	if cmd == "r" or cmd == "rank" or cmd == "ranking" then
		eventRanking(name)
	end
end

function eventNewPlayer(name)
	if not data[name] then
		data[name]={
			fly=os.time(),
			maxLife=3,
			life=3,
			lang="",
			wins=0,
			gamescore=0
		}
	end

	insert=true
	
	for i,v in pairs(reg_Data) do
		if v==name then
			insert=false
		end
	end

	if insert then
		table.insert(reg_Data,name)
	end

	tfm.exec.setPlayerScore(name,0,false)
	
	data[name].lang = tfm.get.room.playerList[name].community
	
	if traduction(name) == nil then
		data[name].lang = "en"	
	end
	
	lang = traduction(name)
	ui.addPopup(100,4,string.format(lang.welcome,name),name,200,100,400,120,true)
	tfm.exec.chatMessage(string.format(lang.welcome,name),name)
	tfm.exec.chatMessage(lang.anuncio,name)
	tfm.exec.chatMessage(lang.version,name)
	
	if tfm.get.room.playerList[name].isDead then
		data[name].life = 0
	end
	
	system.bindKeyboard(name,32,true)
	system.bindKeyboard(name,69,true)
end

function eventRanking(name)
	players={}
	pages={}
	pages[name]={}
	page=1
	
	pages[name][page]=""
	
	for i,v in pairs(reg_Data) do
		table.insert(players,{nome=v,w=data[v].wins,gamescore=data[v].gamescore})
	end
	
	table.sort(players,function(a,b) return a.gamescore>b.gamescore end)
	
	for k,v in pairs(players) do
		pages[name][page] = pages[name][page].."<BR><font size='12'><B><J>"..k.."</J></B> ¦ <VI>GameScore: <B>"..v.gamescore.."</B></VI>   ¦ <font color='#2F7FCC'>Wins: <B>"..v.w.."</B></font></font>    ¦ <V>Name: <B>"..v.nome.."</B></V>"
	end

	ui.addTextArea(110,"",name,200,40,400,350,0x324650,0x324650,nil,true,false,true)
	ui.addTextArea(111,"<p align='center'><B><J><font size='25'>Ranking",name,200,38,400,25,0x324650,0x324650,nil,true,false,false,true)
	ui.addTextArea(112,pages[name][page],name,200,68,400,350,0,0,0,true,true)
	lang=traduction(name)
	ui.addTextArea(113,"<p align='center'><font size='12'><a href='event:close_popup'>"..lang.close.."</a></font></p>",name,200+5,40+350-22,400-10,18,0x3c5063,0x3c5063,nil,true,true)
end

function eventPlayerDied(name)
	if start < os.time()-2000 then
		if data[name].life > 0 then
			data[name].life=data[name].life-1;
		
			if data[name].life > 0 then
				tfm.exec.respawnPlayer(name)
			end
		end

		if data[name].life == 0 then
			lang=traduction(name)
			tfm.exec.chatMessage(lang.loseallhearts,name)
			vivos=vivos-1;	
		end	
	else
		tfm.exec.respawnPlayer(name)
	end
	
	if vivos <= 3 and _GameTime > 60 then
		tfm.exec.setGameTime(60)
	end
end

function eventLoop(t,r)
	_GameRecord=_GameRecord+0.1
	_GameTime = _GameTime-0.5
	local ps = getPlayers() if ps < 10 then ps="0"..ps end
	local tm = math.floor(_GameTime) if tm < 10 then tm="0"..tm end
	
	ui.setMapName("<N><B><VP>Climbing</VP></B>   <BL>|</BL>   Time left: <V>"..tm.."s</V>   <BL>|</BL>   Players: <V>"..ps.."</V> <")
	str=""
	
	if vento < os.time()-6000 then
		_Vento = math.random(1,4)
		vento = os.time();
	end
		
	for i=1,_Vento do
		if i <= 1 then
			str=str.."<font color='#00BFFF'>^</font>"
		elseif i <= 2 then
			str=str.."<font color='#FFCC00'>^</font>"
		elseif i <= 3 then
			str=str.."<font color='#00FF00'>^</font>"
		elseif i <= 4 then
			str=str.."<font color='#FF0000'>^</font>"
		end
	end

	if _Vento == 3 then
		str = str.."<font color='#2C2C2C'>^</font>"
	end

	if _Vento == 2 then
		str = str.."<font color='#2C2C2C'>^^</font>"
	end
	
	if _Vento == 1 then
		str = str.."<font color='#2C2C2C'>^^^</font>"
	end
	
	if _GameTime <= 0 or getPlayersAlive() == 0 then
		sendNewMap()	
	end
	
	
	for i,v in pairs(tfm.get.room.playerList) do
		if not v.isDead and v.y <= 300 then
			tfm.exec.giveCheese(i)
			tfm.exec.playerVictory(i)
		end
		
		ui.addTextArea(0,"",i,4.9,360,45,50,0x1C1C1C,0x1C1C1C,nil,true,true,true)
		ui.addTextArea(1,hearts(i),i,5,350,50,40,0,0,0,true)
		ui.addTextArea(2,"<B><font size='10'>"..str.."</font><BR><VP><B>"..(3000-v.y).."m",i,5,365,50,40,0,0,0,true)
	end
end

function hearts(name)
	s=""
	
	if data[name].life == data[name].maxLife then
		for i=1,data[name].life do
			s=s.."<font color='#FF0000' size='15'><B>¦</font>"
		end
	end
	
	if data[name].life < data[name].maxLife then
		for i=1,data[name].life do
			s=s.."<font color='#FF0000' size='15'><B>¦</font>"
		end
		
		m = data[name].maxLife-data[name].life
		
		for i=1,m do
			s=s.."<font color='#8B0000' size='15'><B>¦</font>"
		end
	end

	return s
end

function eventNewGame()
	vivos=0
	tfm.exec.setGameTime(123,true)
	
	start=os.time()
	
	for i in pairs(tfm.get.room.playerList) do
		vivos=vivos+1;
		data[i].life=3
		tfm.exec.respawnPlayer(i)
		
		if meep then
			tfm.exec.giveMeep(i)
		end
	end
	
	w=0
end

function eventPlayerWon(name)
	tfm.exec.chatMessage(_GameRecord)
	w=w+1;
	
	if w <= 3 then
		if w == 3 then
			n=3
		elseif w == 2 then
			n=6
		elseif w == 1 then
			n=9
		end
		
		data[name].gamescore = data[name].gamescore+n
		tfm.exec.setPlayerScore(name,n,true)	
	end
end

function eventKeyboard(name,key,down,x,y)
	if key == 32 and data[name].fly < os.time()-1800 then
		if _Vento == 1 then v=50 elseif _Vento == 2 then v=70 elseif _Vento == 3 then v=80 elseif _Vento == 4 then v=100 end
		
		tfm.exec.movePlayer(name,0,0,false,0,-v,true)
		data[name].fly=os.time();
	end
	
	if key == 69 then
		
	end
end

for all in pairs(tfm.get.room.playerList) do
	eventNewPlayer(all)	
end

for _,command in pairs({"r","rank","ranking","help","lang"}) do
	system.disableChatCommandDisplay(command, true)	
end

sendNewMap()
