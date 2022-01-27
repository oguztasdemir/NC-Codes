-- lsd.lua
-- por Devilstrkpro
change=false

fundo = {
	type = 12,
	width = 800,
	height = 400,
	color = math.random(0,0x999999),
	miceCollision = false,
	groundCollision = false,
}
circulos = {
	type = 13,
	width = math.random(10,100),
	color = math.random(0,0xffffff),
	miceCollision = false,
	groundCollision = false,
}
obstaculo = {
	type = 12,
	width = 50,
	height = 10,
	foreground = true,
	friction = 999999.0,
	color = math.random(0,0xffffff),
	miceCollision = true,
	groundCollision = false,
	dynamic = true,
	mass = 999999,
	fixedRotation = true,
}
cair = true
idFundo = 100
idObstaculo = 0
mapa = "@5177004"
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.newGame(mapa)
function eventNewGame()
	change = true
end
function eventLoop(current, remaining)
	if not change then
		tfm.exec.newGame(mapa)
	end
	todosMortos = true
	for i, v in pairs(tfm.get.room.playerList) do
		if not v.isDead then
			todosMortos = false
			break
		end
	end
	if todosMortos then
		tfm.exec.newGame(mapa)
	end
	tfm.exec.addPhysicObject(idFundo, 400, 200, fundo)
	circulos.color = fundo.color + 0x101010
	fundo.color = math.random(0,0x999999)
	for i = 60, 70 do
		tfm.exec.addPhysicObject(i, math.random(0,800), math.random(0,400), circulos)
		circulos.width = math.random(10,100)
	end
	for i, v in pairs(tfm.get.room.playerList) do
		tfm.exec.setNameColor(v.playerName, math.random(0,0xffffff))
	end
	if current > 10000 then
		if cair or remaining < 60000 then
			tfm.exec.addPhysicObject(idObstaculo, math.random(0,15)*50+25, 10, obstaculo)
			obstaculo.color = math.random(0,0xffffff)
			idObstaculo = (idObstaculo + 1) % 50
			tfm.exec.addPhysicObject(idObstaculo, math.random(0,15)*50+25, 10, obstaculo)
			obstaculo.color = math.random(0,0xffffff)
			idObstaculo = (idObstaculo + 1) % 50
			tfm.exec.addPhysicObject(idObstaculo, math.random(0,15)*50+25, 10, obstaculo)
			obstaculo.color = math.random(0,0xffffff)
			idObstaculo = (idObstaculo + 1) % 50
			tfm.exec.addPhysicObject(idObstaculo, math.random(0,15)*50+25, 10, obstaculo)
			obstaculo.color = math.random(0,0xffffff)
			idObstaculo = (idObstaculo + 1) % 50
			tfm.exec.addPhysicObject(idObstaculo, math.random(0,15)*50+25, 10, obstaculo)
			obstaculo.color = math.random(0,0xffffff)
			idObstaculo = (idObstaculo + 1) % 50
			-- eu sei que cometi um crime aqui
			cair = false
		else
			cair = true
		end
	end
end