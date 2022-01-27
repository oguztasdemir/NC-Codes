local admins = {"Devilstrkpro"} -- Tabla de admin

function main() -- /FUNCIÓN IMPORTANTE/ - NO EDITAR 
	t={}
	v={}
	obj={}
	id=0
	pi=100
	gro={type=0,restitution=0.2,friction=0.3,width=10,height=10,groundCollision=true}
	map='<C><P /><Z><S><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="800" o="9e9eaf" H="400" c="4" Y="200" T="12" /><S X="-100" P="0,0,0.3,0.2,0,0,0,0" L="200" o="0" H="800" Y="200" T="12" /><S P="0,0,0.3,0.2,0,0,0,0" L="200" o="0" X="900" H="800" Y="200" T="12" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="1200" o="0" H="200" Y="500" T="12" /><S H="10" P="0,0,0.3,0.2,0,0,0,0" L="50" X="400" Y="-10" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" L="50" H="10" X="400" Y="-50" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" H="50" X="380" Y="-30" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" H="50" X="420" Y="-30" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" c="2" L="1200" o="0" X="400" H="200" N="" Y="-100" T="12" /></S><D><DS Y="-37" X="400" /></D><O /></Z></C>'
	x=0
	y=0
	ganador=false
	gtime=20
	for i,cmd in ipairs({"help","shop","l"}) do
		system.disableChatCommandDisplay(cmd,true)
	end
	timer=3
end

main()

translations={ -- /TABLA TRADUCCIÓN/
	ES={
		help="<font size='13'><T>El objetivo es moverse hasta el trozo de madera y capturarlo antes que tus adversarios</T>\n\nComandos:\n<T>!help</T> abre esta ayuda\n<T>!shop</T> abre la tienda\n\nControles:\n<T>W,A,S,D</T> o <T>flechas</T> para moverse\n<T>Barra espaciadora</T> para la madera\n\n<p align='center'><a href='event:close'><R>Cerrar</R></a></p></font>",
		nR="<CH>!help</CH> - <T>Tienes 20 segundos",
		wR={"Tenemos un ganador: <T>",
			"</T> - <CH>10 segundos para otra ronda"},
		coins='<p align="center"><font size="20">Tus monedas: ',
		cShop='<b><p align="center"><font size="15"><a href="event:closeshop">Cerrar</a></font></p></b>',
		nShop='<b><p align="center"><font size="15"><a href="event:next">Siguiente</a></font></p></b>',
		bShop='<b><p align="center"><font size="15"><a href="event:back">Atrás</a></font></p></b>',
		perf={'<font size="15"><T>Jugador:</T> <V>',
			'</V> <T>Rondas:</T> ',
			' <T>Victorias:</T> '}
	},
	EN={
		help="<font size='13'><T>The point is to move to the wood and get it before others</T>\n\nCommands:\n<T>!help</T> opens this help\n<T>!shop</T> opens the shop\n\nControls:\n<T>W, A, S, D</T> or <T>arrows</T> for move\n<T>Space</T> for the wood\n\n<p align='center'><a href='event:close'><R>Close</R></a></p></font>",
		nR="<CH>!help</CH> - <T>You have 20 seconds",
		wR={"We have a winner: <T>",
			"</T> - <CH>10 seconds to next round"},
		coins='<p align="center"><font size="20">Your coins: ',
		cShop='<b><p align="center"><font size="15"><a href="event:closeshop">Close</a></font></p></b>',
		nShop='<b><p align="center"><font size="15"><a href="event:next">Next</a></font></p></b>',
		bShop='<b><p align="center"><font size="15"><a href="event:back">Back</a></font></p></b>',
		perf={'<font size="15"><T>Player:</T> <V>',
			'</V> <T>Rounds:</T> ',
			' <T>Wins:</T> '}
	}
}

function trans(mes) -- /FUNCIÓN TRADUCCIÓN/
	if translations[tfm.get.room.community] and translations[tfm.get.room.community][mes] then
		return translations[tfm.get.room.community][mes]
	else
		return translations.ES[mes]
	end
end

function p() -- Nueva ronda
	tfm.exec.disableAutoNewGame(true)
	tfm.exec.disableAutoShaman(true) 
	tfm.exec.disableAutoTimeLeft(true)
	tfm.exec.newGame(map)
	tfm.exec.setUIMapName(trans("nR")) -- Mensaje de inicio
	tfm.exec.setUIShamanName('')
	x=(10*math.random(75))+20 -- Coordenadas aleatorias madera
	y=(10*math.random(35))+20 -- Coordenadas aleatorias madera
	tfm.exec.addPhysicObject(1000,x,y,gro) -- Pone la madera madera
end

function eventLoop()
	if gtime>0 and ganador==false then -- Si el tiempo de partida es mayor a cero y no hay ganador
		gtime=gtime-0.5
	elseif gtime==0 then -- Si el tiempo de partida es cero y no hay ganador
		gtime=20
		p()
	elseif gtime>0 and ganador==true then -- Si el tiempo de partida es mayor a 0 y hay ganador
		gtime=gtime-0.5
	end
	if timer>0 then -- Si el tiempo de revivir es mayor a 0
		timer=timer-0.5
	end
end

function eventNewGame()
	ganador=false -- Cambia la variable del ganador
	timer=3 -- Pone el tiempo de salida a 3 segundos
	for name,player in pairs(tfm.get.room.playerList) do -- Todos los usuarios de la sala
		t[name].x=400 -- Coordenadas al inicio
		t[name].y=200 -- Coordenadas al inicio
		v[name].round=v[name].round+1 -- Añade una ronda
		v[name].coin=v[name].coin+5 -- Añade 5 monedas
		tfm.exec.addPhysicObject(t[name].id,t[name].x,t[name].y,t[name].gro) -- Añade los personajes
		ui.addTextArea(t[name].pi,'<b><p align="center"><font color="#000" /><a href="event:'..t[name].nombre..'">'..t[name].nombre..'</a></p></b>',nil,t[name].x-45,t[name].y+10,90,20,t[name].color,t[name].color,0) -- Añade los nombres
	end
end

p()

function eventNewPlayer(name)
	id=id+1 -- Se suma id
	pi=pi+1 -- Se suma id
	if not t[name] then -- De no existir se crea
		t[name] = {
			nombre=name, -- Visualizar nombre
			x=400, -- Coordenadas inicio
			y=200, -- Coordenadas inicio
			cubo=0, -- /SIN USO APARENTE/
			id=id, -- ID del personaje
			pi=pi, -- ID del nombre
			shopID=1, -- ID de la página de tienda
			gro={type=12,restitution=0,friction=0,width=10,height=10,groundCollision=true,color=0x14172e} -- Propiedades del personaje
		}
	end
	if not v[name] then
		if isAdmin(name) then -- Si es admin
			v[name] = {
			round='10', -- Rondas
			win='100000', -- Victorias
			coin='10000000' -- Monedas
			}
		else -- Si no es admin
			v[name] = {
			round='0', -- Rondas
			win='0', -- Victorias
			coin='100' -- Monedas
			}
		end
    end
	if not obj[name] then
		if isAdmin(name)then -- Si es admin
			obj[name] = {
				[1]={'Rojo','<b><a href="event:equipar">','Equipar','</a></b>','0xB43838'},
				[2]={'Azul','<b><a href="event:equipar">','Equipar','</a></b>','0x4077AC'},
				[3]={'Verde','<b><a href="event:equipar">','Equipar','</a></b>','0x40AC58'},
				[4]={'Naranja','<b><a href="event:equipar">','Equipar','</a></b>','0xF39901'},
				[5]={'Dev','<b><a href="event:equipar">','Equipar','</a></b>','0x7D7D7D'},
				[6]={'Rosa','<b><a href="event:equipar">','Equipar','</a></b>','0xCD5487'},
				[7]={'Turquesa','<b><a href="event:equipar">','Equipar','</a></b>','0x4ECFAA'},
				[8]={'ORO','<b><a href="event:equipar">','Equipar','</a></b>','0xDFB700'},
				[9]={'Negro','<b><a href="event:equipar">','Equipar','</a></b>','0x030303'},
				[10]={'Morado','<b><a href="event:equipar">','Equipar','</a></b>','0x541FA9'},
				[11]={'Marrón','<b><a href="event:equipar">','Equipar','</a></b>','0x5E4625'},
				[12]={'Blanco','<b><a href="event:equipar">','Equipar','</a></b>','0xFFFFFF'}
			}
		else -- Si no es admin
			obj[name] = {
				[1]={'Rojo','<a href="event:1">','200','</a>','0xB43838'},
				[2]={'Azul','<a href="event:2">','300','</a>','0x4077AC'},
				[3]={'Verde','<a href="event:3">','500','</a>','0x40AC58'},
				[4]={'Naranja','<a href="event:4">','1000','</a>','0xF39901'},
				[5]={'Dev','<a href="event:5">','0','</a>','0x7D7D7D'},
				[6]={'Rosa','<a href="event:6">','1000','</a>','0xCD5487'},
				[7]={'Turquesa','<a href="event:7">','2500','</a>','0x4ECFAA'},
				[8]={'ORO','<a href="event:8">','9999','</a>','0xDFB700'},
				[9]={'Negro','<a href="event:9">','2500','</a>','0x030303'},
				[10]={'Morado','<a href="event:10">','2500','</a>','0x541FA9'},
				[11]={'Marrón','<a href="event:11">','3000','</a>','0x5E4625'},
				[12]={'Blanco','<a href="event:12">','3000','</a>','0xFFFFFF'}
			}
		end
	end
	for i,key in ipairs({0,1,2,3,32}) do -- Todas las keys
		tfm.exec.bindKeyboard(name,key,false,true)
	end
	tfm.exec.setUIMapName(trans("nR")) -- Setea el nombre de sala
	tfm.exec.setUIShamanName('')
	tfm.exec.addPhysicObject(1,x,y,gro) -- Añade la madera 
end

function eventPlayerLeft(name)
	t[name].x=400 -- Mueve sus coordenadas
	t[name].y=200 -- Mueve sus coordenadas
	tfm.exec.removePhysicObject(t[name].id) -- Elimina su personaje
	ui.removeTextArea(t[name].pi,nil) -- Remueve su nombre
end

function eventKeyboard(name,key,down)
	if key==0 then -- A o flecha izquierda
		if timer==0 then -- Si el tiempo de la nueva ronda es 0
			if t[name].x>10 then --Límite del mapa, izquierda
				t[name].x=t[name].x-10 --Mueve al jugador 10px izquierda
			end
		end
	elseif key==1 then -- W o flecha arriba
		if timer==0 then -- Si el tiempo de la nueva ronda es 0
			if t[name].y>30 then --Límite del mapa, arriba
				t[name].y=t[name].y-10 --Mueve al jugador 10px arriba
			end
		end
	elseif key==2 then -- D o flecha derecha
		if timer==0 then -- Si el tiempo de la nueva ronda es 0
			if t[name].x<790 then --Límite del mapa, derecha
				t[name].x=t[name].x+10 --Mueve al jugador 10px derecha
			end
		end
	elseif key==3 then -- S o flecha abajo
		if timer==0 then -- Si el tiempo de la nueva ronda es 0
			if t[name].y<380 then --Límite del mapa, abajo
				t[name].y=t[name].y+10 --Mueve al jugador 10px abajo
			end
		end
	end
	tfm.exec.addPhysicObject(t[name].id,t[name].x,t[name].y,t[name].gro) -- Mueve tu personaje
	ui.addTextArea(t[name].pi,'<b><p align="center"><font color="#000" /><a href="event:'..t[name].nombre..'">'..t[name].nombre..'</a></p></b>',nil,t[name].x-45,t[name].y+10,90,20,t[name].color,t[name].color,0) -- Mueve tu nombre
	if key==32 and ganador==false then -- Espacio
		if t[name].x == x and t[name].y == y then -- Si la coordenada de tu personaje es igual a la de la madera
			v[name].win=v[name].win+1 -- Añade una victoria
			v[name].coin=v[name].coin+20 -- Añade 20 monedas
			ganador=true -- Variable que ecita nuevos jugadores
			tfm.exec.setUIMapName(trans("wR")[1]..name..trans("wR")[2]) -- Actualiza el mensaje
			gtime=10 -- Setea el tiempo en 10 segundos
		end
	end
end

function eventChatCommand(name,cd)
	if cd=="help" then
		ui.addTextArea(1000,trans("help"),name,10,35,230,240,0x003333,0x003333)
	elseif cd=="shop" then
		ui.addTextArea(2000,"",name,10,35,520,200,0x003333,0x003333)
		ui.addTextArea(2001,trans("coins")..v[name].coin..'</font></p>',name,10,35,520,40,0xfff,0xfff,0)
		l=0
		for i=t[name].shopID,t[name].shopID+3 do
			l=l+1
			ui.addTextArea(2001+l,'',name,(110*l)-50,85,90,40,0x104946,0x104946)
			ui.addTextArea(2005+l,'<p align="center"><font size="13"><b>'..obj[name][i][2]..obj[name][i][3]..obj[name][i][4]..'</b></font></p>',name,(110*l)-50,145,90,20,0x104946,0x104946)
			ui.addTextArea(2012+l,'',name,(110*l)-50,85,90,20,obj[name][i][5],obj[name][i][5])
		end
		ui.addTextArea(2010,trans("cShop"),name,230,190,90,30,0x104946,0x104946)
		ui.addTextArea(2011,trans("nShop"),name,390,190,90,30,0x104946,0x104946)
		ui.addTextArea(2012,trans("bShop"),name,60,190,90,30,0x104946,0x104946)
	end
end

function eventTextAreaCallback(tAI,name,cb)
	if (cb=="close") then
		ui.removeTextArea(1000,name)
	elseif (cb=="cp") then
		ui.removeTextArea(1001,name)
	elseif (cb=="closeshop") then
		for i=0,16 do
			ui.removeTextArea(2000+i,name)
		end
 	elseif (cb=="1" or cb=="2" or cb=="3" or cb=="4" or cb=="6" or cb=="7" or cb=="8" or cb=="9" or cb=="10" or cb=="11" or cb=="12") then
		if tonumber(v[name].coin)>=tonumber(obj[name][tonumber(cb)][3]) then
			v[name].coin=v[name].coin-obj[name][tonumber(cb)][3]
			obj[name][tonumber(cb)][3]="Equipar"
			obj[name][tonumber(cb)][2]='<b><a href="event:equipar">'
			obj[name][tonumber(cb)][4]="</a></b>"
			ui.updateTextArea(2001,trans("coins")..v[name].coin..'</font></p>',name)
			ui.updateTextArea(tAI,'<p align="center"><font size="13"><b>'..obj[name][tonumber(cb)][2]..obj[name][tonumber(cb)][3]..obj[name][tonumber(cb)][4]..'</b></font></p>',name)
		end
	elseif (cb=="5") then
			if tonumber(v[name].coin)>=tonumber(obj[name][tonumber(cb)][3]) and isAdmin(name) then
				v[name].coin=v[name].coin-obj[name][tonumber(cb)][3]
				obj[name][tonumber(cb)][3]="Equipar"
				obj[name][tonumber(cb)][2]='<b><a href="event:equipar">'
				obj[name][tonumber(cb)][4]="</a></b>"
				ui.updateTextArea(2001,trans("coins")..v[name].coin..'</font></p>',name)
				ui.updateTextArea(tAI,'<p align="center"><font size="13"><b>'..obj[name][tonumber(cb)][2]..obj[name][tonumber(cb)][3]..obj[name][tonumber(cb)][4]..'</b></font></p>',name)
			else
			end
	elseif (cb=="next") then
		l=0
		if (t[name].shopID+3<#obj[name]) then
			t[name].shopID=t[name].shopID+4
			for i=t[name].shopID,t[name].shopID+3 do
				l=l+1
				ui.updateTextArea(2001+l,'',name)
				ui.updateTextArea(2005+l,'<p align="center"><font size="13"><b>'..obj[name][i][2]..obj[name][i][3]..obj[name][i][4]..'</b></font></p>',name)
				ui.addTextArea(2012+l,'',name,(110*l)-50,85,90,20,obj[name][i][5],obj[name][i][5])
			end
		end
	elseif (cb=="back") then
		l=0
		if (t[name].shopID>4) then
			t[name].shopID=t[name].shopID-4
			for i=t[name].shopID,t[name].shopID+3 do
				l=l+1
				ui.updateTextArea(2001+l,'',name)
				ui.updateTextArea(2005+l,'<p align="center"><font size="13"><b>'..obj[name][i][2]..obj[name][i][3]..obj[name][i][4]..'</b></font></p>',name)
				ui.addTextArea(2012+l,'',name,(110*l)-50,85,90,20,obj[name][i][5],obj[name][i][5])
			end
		end
	elseif (cb=="equipar") then
		t[name].gro.color=obj[name][(t[name].shopID+(tAI-2006))][5]
		tfm.exec.addPhysicObject(t[name].id,t[name].x,t[name].y,t[name].gro)
	else
		ui.addTextArea(1001,trans("perf")[1]..t[cb].nombre..trans("perf")[2]..v[cb].round..trans("perf")[3]..v[cb].win..'  <R><a href="event:cp">X</a></R></font>',name,10,35,470,30,0x003333,0x003333)
	end
end

function isAdmin (playerName) -- /FUNCIÓN ADMIN/
	for _,adminName in pairs(admins) do
		if playerName == adminName then return true end
	end
	return false
end

for name,player in pairs(tfm.get.room.playerList) do -- /FUNCIÓN SALA/
	eventNewPlayer(name)
end