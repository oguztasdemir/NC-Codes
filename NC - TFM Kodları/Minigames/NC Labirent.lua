NIGHTMODE = true

Maze = {
	seed = nil,
	width = nil,
	height = nil,
	cellSize = nil,
	cellCount = 0,
	cells = {},
	winCell = {x=0, y=0},
	startCell = {x=0, y=0},
	util = {
		getCellId = function(x, y)
			return x + y * Maze.width
		end,
		getCell = function(x, y)
			return Maze.cells[Maze.util.getCellId(x, y)]
		end,
		getCellXY = function (id)
			return {x = id % Maze.width, y = math.floor(id / Maze.width)}
		end,
		toGlobal = function(n)
			return n * Maze.cellSize + Maze.cellSize / 2
		end,
		getNeighbors = function(id)
			local ra = {}
			if (id == nil) then return ra end
			if (id + 1 <= Maze.cellCount and not Maze.util.isRightEdge(id) and not Maze.cells[id + 1].visited) then table.insert(ra, id + 1) end
			if (id - 1 >= 0 and not Maze.util.isLeftEdge(id) and not Maze.cells[id - 1].visited) then table.insert(ra, id - 1) end
			if (id + Maze.width <= Maze.cellCount and not Maze.cells[id + Maze.width].visited) then table.insert(ra, id + Maze.width) end
			if (id - Maze.width >= 0 and not Maze.cells[id - Maze.width].visited) then table.insert(ra, id - Maze.width) end
			return ra
		end,
		isRightEdge = function(id)
			return Maze.util.isLeftEdge(id + 1)
		end,
		isLeftEdge = function(id)
			return id % Maze.width == 0
		end
	},
	init = function(s, c, w, h)
		Maze.seed = s
		Maze.cellSize = c
		Maze.width = w
		Maze.height = h
		
		if (Maze.seed == nil) then Maze.seed = os.time() end
		if (Maze.cellSize == nil) then Maze.cellSize = 50 end
		if (Maze.width == nil) then Maze.width = math.floor(800 / Maze.cellSize) end
		if (Maze.height == nil) then Maze.height = math.floor(400 / Maze.cellSize) end
		
		Maze.cellCount = Maze.width * Maze.height
		math.randomseed(Maze.seed)
	end,
	generate = function()
		local visited = {}
		
		Maze.winCell.x = math.floor(math.random() * Maze.width)
		Maze.winCell.y = math.floor(math.random() * Maze.height)
		
		for i=0,Maze.cellCount do
			Maze.cells[i] = {top = true, bot = true, left = true, right = true, visited = false}
		end
		
		local count = Maze.cellCount
		local operator = {Maze.util.getCellId(Maze.winCell.x, Maze.winCell.y)}
		local overflow = 0
		local endOp = 0
		while count > 0 do
			local neighbors = Maze.util.getNeighbors(operator[#operator])
			local id = nil
			
			if (next(neighbors) ~= nil) then
				id = neighbors[math.random(#neighbors)]
			end
			
			
			if (id ~= nil and Maze.cells[id].visited) then
				id = nil 
			end
			
			if (id == nil) then
				table.remove(operator)
				overflow = overflow + 1
				if (overflow > Maze.cellCount) then break end
			else
				overflow = 0
				local diff = id - operator[#operator]
				
				if (diff == -1) then
					Maze.cells[id].right = false
					Maze.cells[operator[#operator]].left = false
				elseif (diff == 1) then
					Maze.cells[id].left = false
					Maze.cells[operator[#operator]].right = false
				elseif (diff == 16) then
					Maze.cells[id].top = false
					Maze.cells[operator[#operator]].bot = false
				elseif (diff == -16) then
					Maze.cells[id].bot = false
					Maze.cells[operator[#operator]].top = false
				end

				Maze.cells[id].visited = true
				table.insert(operator, id)
				endOp = id
				count = count - 1
			end
		end
		Maze.startCell = Maze.util.getCellXY(endOp)
	end,
	build = function()
		for i=0,Maze.cellCount do
			local x = Maze.cellSize * (i % Maze.width)
			local y = Maze.cellSize * math.floor(i / Maze.width)
			if (Maze.cells[i].top) then tfm.exec.addPhysicObject(4 * i + 0, x + Maze.cellSize / 2 - 5, y - 5, {type=0, restitution=0.2, friction=1, width=Maze.cellSize + 10, height=10, groundCollision=false}) end
			if (Maze.cells[i].bot) then tfm.exec.addPhysicObject(4 * i + 1, x + Maze.cellSize / 2 - 5, y + Maze.cellSize - 5, {type=0, restitution=0.2, friction=1, width=Maze.cellSize + 10, height=10, groundCollision=false}) end
			if (Maze.cells[i].left) then tfm.exec.addPhysicObject(4 * i + 2, x - 5, y + Maze.cellSize / 2, {type=0, restitution=0.2, friction=1, width=10, height=Maze.cellSize, groundCollision=false}) end
			if (Maze.cells[i].right) then tfm.exec.addPhysicObject(4 * i + 3, x + Maze.cellSize - 5, y + Maze.cellSize / 2, {type=0, restitution=0.2, friction=1, width=10, height=Maze.cellSize, groundCollision=false}) end
		end
	end
}

function newMap()
	Maze.generate()
	tfm.exec.newGame('<C><P ' .. NIGHTMODE .. ' /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" L="800" o="6a7495" X="400" c="3" Y="-50" T="12" H="100" /><S H="400" L="100" o="6a7495" X="850" c="3" Y="200" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S H="400" L="100" o="6a7495" X="-50" c="3" Y="200" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S H="100" L="800" o="6a7495" X="400" c="3" Y="450" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="45" o="6a7495" H="164" X="17" Y="-103" T="12" P="0,0,0,0,0,0,0,0" /><S P="0,0,0,0,0,0,0,0" L="45" o="6a7495" X="778" Y="-106" T="12" H="164" /></S><D><DS Y="-82" X="402" /><T Y="' .. Maze.util.toGlobal(Maze.startCell.y) .. '" X="' .. Maze.util.toGlobal(Maze.startCell.x) .. '" /><F Y="' .. Maze.util.toGlobal(Maze.winCell.y) .. '" X="' .. Maze.util.toGlobal(Maze.winCell.x) .. '" /></D><O /></Z></C>')
	Maze.build()
	for name,mouse in pairs(tfm.get.room.playerList) do
		tfm.exec.movePlayer(name, Maze.util.toGlobal(Maze.startCell.x), Maze.util.toGlobal(Maze.startCell.y), false, 0, 0, false)
	end
end

function eventLoop()
tfm.exec.setUIMapName("NC Labyrinth by Devilstrkpro")
end

function eventPlayerWon(name, te, ter)
tfm.exec.setUIShamanName(name.." 1°")
end

Maze.init()
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
if (NIGHTMODE) then NIGHTMODE = 'N="19"' else NIGHTMODE = '' end
newMap()