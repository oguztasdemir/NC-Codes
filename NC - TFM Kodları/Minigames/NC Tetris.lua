--local map = '<C><P /><Z><S><S X="10" Y="215" L="20" H="410" T="12" P="0,0,0.3,0.2,0,0,0,0" o="324650" /><S X="250" Y="215" L="20" H="410" T="12" P="0,0,0.3,0.2,0,0,0,0" o="324650" /><S X="130" Y="395" L="240" H="50" T="12" P="0,0,0.3,0.2,0,0,0,0" o="324650" /><S X="130" Y="25" L="240" H="30" T="12" P="0,0,0.3,0.2,0,0,0,0" o="324650" /><S X="-65" Y="205" L="50" H="330" T="1" P="0,0,0,0.2,0,0,0,0" /></S><D><DS X="130" Y="349" /></D><O /></Z></C>'
local map = '<C><P /><Z><S /><D><DS X="120" Y="219" /></D><O /></Z></C>'
local keys = {up = 73, left = 74, down = 75, right = 76, rotate = 32}
local I,O,T,S,Z,J,L = 1,2,3,4,5,6,7
local pieceGrids = {
	{{0,0,0,0},{1,2,3,4},{0,0,0,0},{0,0,0,0}},
	{{0,0,0,0},{0,1,2,0},{0,3,4,0},{0,0,0,0}},
	{{0,1,0},{2,3,4},{0,0,0}},
	{{0,1,2},{3,4,0},{0,0,0}},
	{{1,2,0},{0,3,4},{0,0,0}},
	{{1,0,0},{2,3,4},{0,0,0}},
	{{0,0,1},{2,3,4},{0,0,0}}
}
local colors = {0x00EEEE,0xEEEE00,0xEE00EE,0x00EE00,0xEE0000,0x0000EE,0xEE9900,[99]=0x111111}
local gridSettings = {
	height = 17,
	width = 10,
	spawn = {x=4,y=1},
	fallDelay = 2
}
local blockSettings = {
	x0 = 20,
	y0 = 40,
	size = 20,
	margin = 2
}

local blockDef = {
	type = 12,
	height = blockSettings.size,
	width = blockSettings.size
}
local mice = {}
local miceCount = 0

function main()
	tfm.exec.disableAfkDeath (true)
	tfm.exec.disableAutoNewGame (true)
	tfm.exec.disableAutoScore (true)
	tfm.exec.disableAutoShaman (true)
	tfm.exec.disableAutoTimeLeft (true)
	tfm.exec.newGame(map)
	
	for name in pairs(tfm.get.room.playerList) do
		eventNewPlayer(name)
	end
end

function eventNewPlayer(name)
	if miceCount > 2 then return end
	
	miceCount = miceCount + 1
	mice[name] = {
		isPlaying = false,
		score = 0,
		grid = nil,
		bag = nil,
		currentPiece = nil,
		pieceId = nil,
		id = miceCount,
		pieceCount = 0,
		fallTimer = 0
	}
	for _,k in pairs(keys) do
		tfm.exec.bindKeyboard(name, k, true)
	end
	
	makeFrame(name)
	startGame(name)
end

function startGame(name)
	mice[name].grid = emptyGrid()
	mice[name].bag = newBag()
	mice[name].score = 0
	
	getNewPiece(name)
	mice[name].isPlaying = true
	
	--{type = 0, x = 0, y = 0, grid=nil}
end

function eventLoop(t,tr)
	for name,mouse in pairs(mice) do
		if mouse.isPlaying then
			if mouse.currentPiece then
				if mouse.fallTimer > gridSettings.fallDelay then
					if collision(name, mice[name].pieceGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, 0, 1) then
						lockPiece(name)
						checkLines(name)
						checkGameOver(name)
					else
						mice[name].currentPiece.y = mice[name].currentPiece.y + 1
						drawPiece(name)
					end
					mouse.fallTimer = 0
				else
					mouse.fallTimer = mouse.fallTimer + 1
				end
			end
		end
	end
end

function getNewPiece(name)
	local type = mice[name].bag[#mice[name].bag]
	mice[name].currentPiece = {
		type = type,
		x = gridSettings.spawn.x,
		y = gridSettings.spawn.y
	}
	mice[name].pieceGrid = getPieceGrid(type)
	mice[name].pieceCount = mice[name].pieceCount + 1
	table.remove(mice[name].bag)
	
	if #mice[name].bag == 0 then
		mice[name].bag = newBag()
	end
	
	drawPiece(name)
	--drawNextPiece(name, mice[name].bag[#bag])
end

function drawPiece(name)
	for i=1,#mice[name].pieceGrid do
		for j=1,#mice[name].pieceGrid[i] do
			if mice[name].pieceGrid[i][j] > 0 then
				local id = mice[name].id*10000 + mice[name].pieceCount*4 + mice[name].pieceGrid[i][j]-1
				drawBlock(name, mice[name].currentPiece.x+j-1, mice[name].currentPiece.y+i-1, mice[name].currentPiece.type, id)
			end
		end
	end
end

function drawBlock(name, x, y, type, id)
	blockDef.color = colors[type]
	--local id = mice[name].id*10000 + mice[name].pieceCount*4 + blockId-1
	
	local x0,y0,size,margin = blockSettings.x0, blockSettings.y0, blockSettings.size, blockSettings.margin
	y0 = y0 - (size+margin)*2
	x0 = x0 + (mice[name].id - 1) * ((size+margin)*gridSettings.width + margin + size)
	x1 = x0 + (x-1)*size + x*margin + size/2
	y1 = y0 + (y-1)*size + y*margin + size/2
	tfm.exec.addPhysicObject(id, x1, y1, blockDef)
end

function getPieceGrid(type)
	local p = {}
	for i=1,#pieceGrids[type] do
		p[i] = {}
		for j=1,#pieceGrids[type][i] do
			p[i][j] = pieceGrids[type][i][j]
		end
	end
	return p
end

function emptyGrid()
	local grid = {}
	for i=1,gridSettings.height do
		grid[i]={}
		for j=1,gridSettings.width do
			grid[i][j] = 0
		end
	end
	return grid
end

function newBag()
	local pieces = {1,2,3,4,5,6,7}
	local bag = {}
	for i=1,7 do
		local a = math.random(#pieces)
		table.insert(bag, pieces[a])
		table.remove(pieces, a)
	end
	return bag
end

function rotate(m1)
	local n = #m1
	
	local m2 = {}
	for i=1,n do
		m2[i] = {}
	end
	
	for i=1,n do
		for j=1,n do
			m2[i][j] = m1[n-j+1][i]
		end
	end
	
	return m2
end

function eventKeyboard(name, key, down, x, y)
	if not mice[name].isPlaying then return end
	
	if key == keys.left then
		if not collision(name, mice[name].pieceGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, -1, 0) then
			mice[name].currentPiece.x = mice[name].currentPiece.x - 1
			drawPiece(name)
		end
	elseif key == keys.right then
		if not collision(name, mice[name].pieceGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, 1, 0) then
			mice[name].currentPiece.x = mice[name].currentPiece.x + 1
			drawPiece(name)
		end
	elseif key == keys.down then
		if not collision(name, mice[name].pieceGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, 0, 1) then
			mice[name].currentPiece.y = mice[name].currentPiece.y + 1
			drawPiece(name)
			mice[name].fallTimer = 0
		end
	elseif key == keys.up then
		mice[name].fallTimer = 0
		while not collision(name, mice[name].pieceGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, 0, 1) do
			mice[name].currentPiece.y = mice[name].currentPiece.y + 1
		end
		drawPiece(name)
		lockPiece(name)
		checkLines(name)
		checkGameOver(name)
	elseif key == keys.rotate then
		local rotatedGrid = rotate(mice[name].pieceGrid)
		if collision(name, rotatedGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, 0, 0) then
			if collision(name, rotatedGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, -1, 0) then
				if collision(name, rotatedGrid, mice[name].currentPiece.x, mice[name].currentPiece.y, 1, 0) then
				else
					mice[name].pieceGrid = rotatedGrid
					mice[name].currentPiece.x = mice[name].currentPiece.x + 1
					drawPiece(name)
				end
			else
				mice[name].pieceGrid = rotatedGrid
				mice[name].currentPiece.x = mice[name].currentPiece.x - 1
				drawPiece(name)
			end
		else
			mice[name].pieceGrid = rotatedGrid
			drawPiece(name)
		end
	end
end

function collision(name, pieceGrid, x, y, offsetX, offsetY)
	offsetX = offsetX or 0
	offsetY = offsetY or 0
	x = x + offsetX
	y = y + offsetY
	for i=1,#pieceGrid do
		for j=1,#pieceGrid[i] do
			if pieceGrid[i][j]>0 then
				if ((not mice[name].grid[y+i-1]) or (not mice[name].grid[y+i-1][x+j-1]) or (mice[name].grid[y+i-1][x+j-1]~=0)) then
					return true
				end
			end
		end
	end
	return false
end

function lockPiece(name)
	local pieceGrid = mice[name].pieceGrid
	local grid = mice[name].grid
	local x,y = mice[name].currentPiece.x, mice[name].currentPiece.y
	local type = mice[name].currentPiece.type
	
	for i=1,#pieceGrid do
		for j=1,#pieceGrid[i] do
			if pieceGrid[i][j]>0 then
				mice[name].grid[y+i-1][x+j-1] = {id = mice[name].id*10000 + mice[name].pieceCount*4 + pieceGrid[i][j]-1, type = type}
			end
		end
	end
end

function checkLines(name)
	local pieceGrid = mice[name].pieceGrid
	local grid = mice[name].grid
	local x,y = mice[name].currentPiece.x, mice[name].currentPiece.y
	local type = mice[name].currentPiece.type
	
	for i=1,#pieceGrid do
		for j=1,#pieceGrid[i] do
			if pieceGrid[i][j]>0 then
				if lineFull(grid, y+i-1) then
					clearLine(name, grid, y+i-1)
				end
				break
			end
		end
	end
end

function lineFull(grid, i)
	for j=1,#grid[i] do
		if grid[i][j] == 0 then
			return false
		end
	end
	return true
end

function clearLine(name, grid, line)
	for j=1,#grid[line] do
		tfm.exec.removePhysicObject(grid[line][j].id)
		grid[line][j] = 0
	end
	for i=line,2,-1 do
		for j=1,#grid[i] do
			if grid[i-1][j] ~= 0 then
				drawBlock(name, j, i, grid[i-1][j].type, grid[i-1][j].id)
				grid[i][j] = {type = grid[i-1][j].type, id = grid[i-1][j].id}
				grid[i-1][j] = 0
			elseif grid[i][j] ~= 0 then
				tfm.exec.removePhysicObject(grid[i][j].id)
				grid[i][j] = 0
			end
		end
	end
end

function checkGameOver(name)
	local grid = mice[name].grid
	local gameOver = false
	for i=1,2 do
		for j=1,#grid[i] do
			if grid[i][j] ~= 0 then
				gameOver = true
				break
			end
			if gameOver then break end
		end
	end
	
	if gameOver then
		mice[name].isPlaying = false
		darkenBlocks(name)
	else
		getNewPiece(name)
	end
end

function darkenBlocks(name)
	local grid = mice[name].grid
	for i=1,#grid do
		for j=1,#grid[i] do
			if grid[i][j] ~= 0 then
				drawBlock(name, j, i, 99, grid[i][j].id)
			end
		end
	end
end

function makeFrame(name)
	local x0,y0,size,margin = blockSettings.x0, blockSettings.y0, blockSettings.size, blockSettings.margin
	
	local vWall = {
		width = size,
		height = (size+margin)*(gridSettings.height-2) + margin + size*2,
		color = 0x324650,
		type = 12
	}
	
	local hWall = {
		width = (size+margin)*gridSettings.width + margin + size*2,
		height = size,
		color = 0x324650,
		type = 12
	}
	
	if miceCount == 1 then
		tfm.exec.addPhysicObject(miceCount*10 + 1, x0-size/2, y0 + vWall.height/2 - size, vWall)
	end
	
	tfm.exec.addPhysicObject(miceCount*10 + 2, x0 + (hWall.width-size)*(miceCount-1) + hWall.width -size-size/2, y0+vWall.height/2-size, vWall)
	tfm.exec.addPhysicObject(miceCount*10 + 3, x0 + (hWall.width-size)*(miceCount-1) + hWall.width/2 - size, y0-margin-size/2, hWall)
	tfm.exec.addPhysicObject(miceCount*10 + 4, x0 + (hWall.width-size)*(miceCount-1) + hWall.width/2 - size, y0+vWall.height-size-size/2, hWall)
	
	tfm.exec.movePlayer(name, (hWall.width-size)*(miceCount-1) + hWall.width/2 - size, y0 + vWall.height/2 - size)
	--x0 = x0 + (mice[name].id - 1) * ((size+margin)*gridSettings.width + margin + size)
end

main()