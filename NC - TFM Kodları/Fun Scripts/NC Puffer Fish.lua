


--arrow : 0
--littleBox : 1
--box : 2
--littleBoard : 3
--board : 4
--ball : 6
--trampoline : 7
--anvil : 10
--cannon : 17
--bomb : 23
--bluePortal : 26
--blueBalloon : 28
--redBalloon : 29
--greenBalloon : 30
--yellowBalloon : 31
--rune : 32
--chicken : 33
--snowBall : 34
--cupidonArrow : 35
--apple : 39
--sheep : 40
--littleBoardIce : 45
--littleBoardChocolate : 46
--iceCube : 54
--cloud : 57
--bubble : 59
--tinyBoard : 60
--companionCube : 61
--stableRune : 62
--balloonFish : 65
--longBoard : 67
--triangle : 68
--sBoard : 69
--paperPlane : 80
--rock : 85
--pumpkinBall : 89
--tombstone : 90
--paperBall : 95

tfm.exec.disableAutoShaman()
tfm.exec.disableAutoNewGame()
tfm.exec.disableAutoTimeLeft()
tfm.exec.disableAfkDeath()

local players = {}
local otype = tfm.enum.shamanObject.balloonFish  --item buraya yazýlcak

local function turnPufferFish(name)
	for i = 0, 3 do system.bindKeyboard(name, i, true) end

	local px = tfm.get.room.playerList[name].x
	local py = tfm.get.room.playerList[name].y

	tfm.exec.killPlayer(name)

	players[name].pf = tfm.exec.addShamanObject(otype, px, py)
end

function eventNewGame()
	ui.setMapName("Puffer fish!")
	for name in pairs(tfm.get.room.playerList) do
		local id = players[name] and players[name].pf or 0
		players[name] = {pf = nil, out = false}
		ui.removeTextArea(id, nil)
		turnPufferFish(name)
	end
end

function eventNewPlayer(name)
	if players[name] then
		players[name].out = false
	else
		players[name] = {pf = nil, out = false}
	end

	tfm.exec.respawnPlayer(name)
	turnPufferFish(name)
end

function eventPlayerLeft(name)
	players[name].out = true
	tfm.exec.removeObject(players[name].pf)
end

function eventKeyboard(name, key, down, x, y)
	local moves = {[0] = -30, [1] = -20, [2] = 30, [3] = 20}

	if key == 0 or key == 2 then
		tfm.exec.moveObject(players[name].pf, 0, 0, true, moves[key])
	elseif key == 1 or key == 3 then
		tfm.exec.moveObject(players[name].pf, 0, 0, false, 0, moves[key], true)
	end
end

function eventLoop(elapsed, remaining)
	for name in pairs(players) do
		local oid = players[name].pf

		if not players[name].out then
			if tfm.get.room.objectList[oid] then
				local ox = tfm.get.room.objectList[oid].x
				local oy = tfm.get.room.objectList[oid].y			

				if oy > 390 or ox > 820 or ox < -20 then
					ui.removeTextArea(oid)
					players[name].pf = tfm.exec.addShamanObject(otype, 400, 200)
					oid = players[name].pf
					ox, oy = 400, 200
				end

				ui.addTextArea(oid, "<p align=\"center\">"..name.."</p>", nil, ox - 50, oy - 40, 100, nil, 0x1, 0x1, 0.8)
			end
		else
			ui.removeTextArea(oid, nil)
		end
	end
end

tfm.exec.newGame(0)
