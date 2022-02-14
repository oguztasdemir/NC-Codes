tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)

system.disableChatCommandDisplay(nil)

modulo_name = "Devilstrkpro"
modulo_creator = "Devilstrkpro#5475"

room = {
	total_players = 0,
	alive_players = 0,
	players = {
		name = nil,
		facingRight = true,
		facingLeft = false,
		movingRight = false,
		movingLeft = false,
		isAlive = false,
		deathTimestamp = nil,
		deathType = nil,
		projectile = {
			timestamp = os.time(),
			offsets = {
				x = 20, y = 0			
			}
		},
		ballon = {
			id = nil,
			timestamp = 0
		},
		trampoline = {
			id = nil,
			timestamp = 0
		},
		second_jump = {
			timestamp = 0,
			cooldown = 10000
		}
	},
	map = {
		current = nil,
		last = nil,
		height = nil,
		width = nil,
		grounds = nil,
		shamanObjects = nil,
		anchorages = {
			id = nil,
			x = nil,
			y = nil
		}
	},
	anvils = {
		id = nil,
		timestamp = 0
	},
	cooldown_time = 1500,
	game_time = 3*60,
	time_remaining = 0,
	elapsed_time = 0,
	killTextTimestamp = nil,
	lang = "es"
}

keys = {
	0, -- [lArrow + A]
	1, -- [uArrow + W]
	2, -- [rArrow + D]
	3, -- [dArrow + S]
	32, -- [SPACE]
	67, -- [C]
	71, -- [G]
	72, -- [H]
	75, -- [J]
	80, -- [P]
	85, -- [U]
	88, -- [X]
	90 -- [Z]
}

users = {}

projectile = {35}
projspeed = 40
builds = {}

despawn = {}
despawn_time = 2500

maps = {7842602}

victoryControl = {
	status = false,
	timestamp = nil,
	winner = nil,
	hold = 5000
}

acid = {
	id = 0, 
	bodydef = {
		type=19, 
		width=nil, 
		height=200, 
		foreground=true, 
		fiction=0.0, 
		restitution=0.0, 
		angle=0, 
		color=0, 
		miceCollision=true, 
		groundCollision=false, 
		dynamic=false, 
		fixedRotation=true, 
		mass=0, 
		linearDamping=0.0, 
		angularDamping=0.0
	},
	relative_height = 0,
	timestamp = nil, 
	elevation_tick = 10, 
	rise_hold = 500,
	start_delay = 10000
}

text = {}

text["en"] = {
	ui = {
		help = {
			title = "Help",
			description = ""..modulo_name.." is a unofficial module created by "..modulo_creator.." in which there's an acid rising and you shall escape.",
			desc2 = "You can shoot arrows and invoke various objects to be the last one!"
		},
		settings = {
			title = "Settings",
			description = "Configurate your settings here."
		},
		profile = {
			title = "Profile",
			description = "%s's data",
			rounds_played = "Rounds Played:",
			games_won = "Games Won:",
		},
		tclose = "Close",
		controls = {
			title = "Controls"
		}
	},
	warnings = {
		trampoline = {
			not_available = "You can't put a <VI>trampoline</VI> right now!",
			used = "<R>You used your only trampoline in this round.</R>"
		},
		ballon = {
			not_available = "You will be able to put a ballon in <J>%0.2f</J> seconds."
		},
		second_jump = {
			not_available = "Your second jump will be reloaded in <J>%0.2f</J> seconds."
		},
		command_not = "<R>The command <J>%s</J> does not exists.</R>"
	},
	alerts = {
		acid_rising = "<CH>The</CH> <VP>acid</VP> <CH>is rising!</CH>",
		touch_acid = "<R>You fall into acid!</R>",
		fall_vacuum = "You fall into vacuum!",
		death_causes = {
			touch_acid = "<V>%s</V> fall into acid.",
			fall_vacuum = "It seems that <V>%s</V> fall into vacuum.",
			unknown = "Something unknown killed <V>%s</V>."
		}
	}
}

text["tr"] = {
	ui = {
		help = {
			title = "Yardım",
			description = ""..modulo_name.." tarafından oluşturulan resmi olmayan bir modüldür. "..modulo_creator.." Oyunun içinde asit yükseliyor ve bu asitten diğerlerini öldürerek kaçmanız gerekiyor.",
			desc2 = "Ayakta kalan son kişi olmak için okları vurabilir ve çeşitli eşyaları toplayabilirsiniz!"
		},
		settings = {
			title = "Ayarlar",
			description = "Ayarlarınızı buradan yapılandırın."
		},
		profile = {
			title = "Profil",
			description = "Kullanıcı bilgileri %s",
			rounds_played = "Oynanan Rauntlar:",
			games_won = "Kazanılan oyunlar:",
		},
		tclose = "Kapatmak",
		controls = {
			title = "Kontroller"
		}
	},
	warnings = {
		trampoline = {
			not_available = "Şu anda bir <VI>trambolin</VI> koyamazsınız!",
			used = "<R>Bu turda tek trambolininizi kullandınız.</R>"
		},
		ballon = {
			not_available = "<J>%0.2f</J> saniyede 1 balon koyabilirsiniz."
		},
		second_jump = {
			not_available = "Ekstra zıplama özelliğiniz <J>%0.2f</J> saniye içinde yüklenecektir.."
		},
		command_not = "<R>Komut <J>%s</J> henüz mevcut değil.</R>"
	},
	alerts = {
		acid_rising = "<VP>Asit</VP> <CH>yükseliyor</CH>",
		touch_acid = "<R>Asit size ulaştı!</R>",
		fall_vacuum = "Boşluğa düştün!",
		death_causes = {
			touch_acid = "<V>%s</V> asit içine düştü.",
			fall_vacuum = "Görünüşe göre <V>%s</V> boşluğa düştü.",
			unknown = "Bilinmeyen bir şey<V>%s</V>'nun ölümüne neden oldu."
		}
	}
}

function startPlayer(playerName)
	room.players[playerName] = {
		name = playerName.name,
		facingRight = true,
		facingLeft = false,
		movingRight = false,
		movingLeft = false,
		isAlive = true,
		deathTimestamp = nil,
		deathType = nil,
		projectile = {
			timestamp = os.time(),
			offsets = {
				x = 20, y = 0			
			}
		},
		ballon = {
			id = nil,
			timestamp = 0
		},
		trampoline = {
			id = nil,
			timestamp = 0
		},
		second_jump = {
			timestamp = 0,
			cooldown = 10000
		}
	}
end

function eventNewPlayer(playerName)
	room.total_players = room.total_players + 1
	for i, key in ipairs(keys) do
		system.bindKeyboard(playerName, key, true, true)
		system.bindMouse(playerName, true)
	end

	startPlayer(playerName)
end

function eventMouse(playerName, x, y)
	if room.players[playerName].isAlive then
		if room.players[playerName].projectile.timestamp <= (os.time() - room.cooldown_time) then
			local px = tfm.get.room.playerList[playerName].x
			local py = tfm.get.room.playerList[playerName].y

			local dx = x - px
			local dy = y - py
			local angle = math.atan2(dy, dx)
		
			local vx = math.cos(angle)
			local vy = math.sin(angle)
		
			local id
			local offsets = {
				x = px + 40 * vx,
				y = py + 40 * vy
			}
			id = tfm.exec.addShamanObject(35, offsets.x, offsets.y, angle*180/math.pi, projspeed*vx, projspeed*vy, false)
			tfm.exec.displayParticle (3, offsets.x, offsets.y)
			table.insert(despawn, {os.time(), id})
			room.players[playerName].projectile.timestamp = os.time()
		end
	end
end

function eventKeyboard(playerName, key, down, xpos, ypos)
	local player = room.players[playerName]
	if key == 32 and player.isAlive then
		if player.projectile.timestamp <= (os.time() - room.cooldown_time) then
			local id
			local angle
			local offsets = player.projectile.offsets.x
			local projectile_speed
			if player.movingRight or player.movingLeft then
				offsets = offsets + 15
			end
			if player.facingRight then
				angle = 0
				projectile_speed = projspeed
			else
				offsets = -offsets
				angle = 180
				projectile_speed = -projspeed
			end
			id = tfm.exec.addShamanObject(projectile[math.random(#projectile)], xpos + offsets, ypos, angle, projectile_speed, 0, false)
			tfm.exec.displayParticle (3, xpos + offsets, ypos)
			table.insert(despawn, {os.time(), id})
			player.projectile.timestamp = os.time()	
		end
	end
	if key == 0 then
		player.facingLeft = true
		player.facingRight = false
		if down then
			player.movingLeft = true
			player.movingRight = false
		else
			player.movingLeft = false
			player.movingRight = false
		end
	end
	if key == 2 then
		player.facingLeft = false
		player.facingRight = true
		if down then
			player.movingLeft = false
			player.movingRight = true
		else
			player.movingLeft = false
			player.movingRight = false
		end
	end
	if key == 90 and player.isAlive then
		if player.ballon.timestamp <= (os.time() - 10000) then
			if player.ballon.id then
				tfm.exec.removeObject(player.ballon.id)
			end
			player.ballon.id = tfm.exec.addShamanObject(math.random(29, 31), xpos, ypos + 40, 0, 0, 0, false)
			player.ballon.timestamp = os.time()
		else
			print(string.format(text[room.lang].warnings.ballon.not_available, ((os.time() - 10000)/1000))) -- (os.time() - 10000))/1000)
		end
	end
	if key == 88 and player.isAlive and room.elapsed_time >= acid.start_delay then
		if player.trampoline.id then
			print(text[room.lang].warnings.trampoline.used)
		else
			player.trampoline.id = tfm.exec.addShamanObject(7, xpos, ypos + 30, 0, 0, 0, false)
			player.trampoline.timestamp = os.time()
		end
	end
	if key == 67 and player.isAlive then -- c
		if player.second_jump.timestamp <= (os.time() - player.second_jump.cooldown) then
			tfm.exec.movePlayer(playerName, 0, 0, true, 0, -100, true)
			player.second_jump.timestamp = os.time()
		else
			print(string.format(text[room.lang].warnings.second_jump.not_available, ((os.time() - 10000)/1000)))
		end
	end
	if key == 72 then -- h
		eventTextAreaCallback(2, playerName, "help")
	end
	if key == 71 then -- g
		eventTextAreaCallback(2, playerName, "settings")
	end
	if key == 80 then -- p
		eventTextAreaCallback(2, playerName, "profile")
	end
end

function eventChatCommand(playerName, command)
	local arguments = {}
	for arg in command:gmatch("[^%s]+") do
		table.insert(arguments, arg)
	end
	if command == "help" then
		eventTextAreaCallback(2, playerName, "help")
	elseif command == "exit" and playerName == modulo_creator then
		system.exit()
	elseif command == "settings" then
		eventTextAreaCallback(2, playerName, "settings")
	elseif command == "profile" then
		eventTextAreaCallback(2, playerName, "profile")
	else
		print(text[room.lang].warnings.command_not)
	end
end

function eventNewGame()
	updateMapInfo()

	room.alive_players = room.total_players
	for player in pairs(tfm.get.room.playerList) do
		startPlayer(player)
	end

	victoryControl = {
		timestamp = nil,
		status = false,
		winner = nil,
		hold = 5000
	}

	acid.id = 1
	acid.timestamp = nil
	acid.relative_height = 0
	acid.bodydef.width = room.map.width
	
	local rise_ticks = (2 * (room.game_time - 60 - (acid.start_delay/1000))) / (acid.rise_hold/500)
	acid.elevation_tick = (room.map.height - 200) / rise_ticks
	print(acid.elevation_tick)
	if acid.elevation_tick < 1 then
		acid.elevation_tick = 1
	end
	
	ui.removeTextArea(1)
	ui.setMapName(modulo_name)
	
	started = false
	tfm.exec.setGameTime(room.game_time)
end

function updateMapInfo()
	local height
	local width

	room.map.last = room.map.current
	room.map.current = 0 -- tfm.get.room.xmlMapInfo.mapCode

	room.map.height = tonumber(mapTagMatch("H"))
	room.map.width = tonumber(mapTagMatch("L"))
end

function mapTagMatch(tag)
	local obj
	obj = (tfm.get.room.xmlMapInfo or {}).xml or '' obj = obj:match("%W"..tag.."=\"(.-)\"")

	if not obj or obj == "" then
		if tag == "H" then
			return 400
		end
		if tag == "L" then
			return 800
		end
	end
	return obj
end

function eventLoop(time, timeRemaining)
	room.time_remaining = timeRemaining
	room.elapsed_time = time
	if time >= 5000 and not started then
		started = true
	end
	if timeReamining == 60000 then
		for player in pairs(room.players) do
			if player.isAlive then
				tfm.exec.giveMeep (player, true)
			end
		end
	end
	if timeRemaining <= 30000 and room.alive_players > 1 then
		local i
		local id = tfm.exec.addShamanObject(10, math.random(1, room.map.width), 0, 0, 0, 10, false)
		table.insert(room.anvils, {id, os.time()})
		for i, anvil in ipairs(room.anvils) do
			if anvil[2] <= (os.time() - 5000) then
				tfm.exec.removeObject(anvil[1])
				table.remove(room.anvils, i)
			end
		end
	end
	if timeRemaining <= 0 then
		tfm.exec.newGame(maps[math.random(#maps)])
	end

	if acid.timestamp then
		if acid.timestamp <= (os.time() - acid.rise_hold) and room.alive_players >= 1 then
			if acid.relative_height < (room.map.height - 200) then
				if acid.relative_height >= ((acid.bodydef.height*acid.id) - (acid.id*acid.elevation_tick)) then
					tfm.exec.addPhysicObject(acid.id, room.map.width / 2, math.ceil((room.map.height - acid.relative_height) + (acid.bodydef.height / 2) + (acid.id*acid.elevation_tick)), acid.bodydef)
					acid.id = acid.id + 1
				end
				tfm.exec.addPhysicObject(0, room.map.width / 2, math.floor((room.map.height + acid.bodydef.height/2) - acid.relative_height), acid.bodydef)
				acid.relative_height = acid.relative_height + acid.elevation_tick
				acid.timestamp = os.time()
			end
		end
	elseif (not acid.timestamp) and (time >= acid.start_delay) and (room.alive_players >= 1) and (room.time_remaining > 10) then
		acid.timestamp = os.time()
		ui.addTextArea (0, "<font size='36' align='center'>"..(text[room.lang].alerts.acid_rising).."</p>", targetPlayer, 200, 150, 600, 200, 0x000000, 0x000000, 1, true)
	end
	if time >= acid.start_delay + 3000 then
		ui.removeTextArea(0)
	end

	if victoryControl.timestamp then
		if victoryControl.timestamp <= (os.time() - victoryControl.hold) then
			tfm.exec.playerVictory(victoryControl.winner)
			acid.timestamp = nil
		end
	end

	for i, cannon in ipairs(despawn) do
		if cannon[1] <= (os.time() - despawn_time) then
			tfm.exec.removeObject(cannon[2])
			table.remove(despawn, i)
		end
	end

	if room.killTextTimestamp then
		if room.killTextTimestamp <= (os.time() - 3000) then
			ui.removeTextArea(10)
			room.killTextTimestamp = nil
		end
	end
end

function eventPlayerDied(playerName)
	if acid.timestamp then
		-- if then
		-- else
		room.players[playerName].deathType = "acid"
		ui.addTextArea (1, "<a href='event:clear'><font size='36' align='center'><R>"..(string.format(text[room.lang].alerts.touch_acid)).."</R></p></a>", playerName, 225, 150, 600, 200, 0x000000, 0x000000, 1, true)
		-- end
	elseif not acid.timestamp then
		room.players[playerName].deathType = "vacuum"
		ui.addTextArea (1, "<a href='event:clear'><font size='36' align='center'>"..(string.format(text[room.lang].alerts.fall_vacuum)).."</p></a>", playerName, 225, 150, 600, 200, 0x000000, 0x000000, 1, true)
	end
	room.players[playerName].isAlive = false
	room.players[playerName].deathTimestamp = os.time()
	if room.players[playerName].deathType then
		if room.players[playerName].deathType == "acid" then
			ui.addTextArea(10, string.format(text[room.lang].alerts.death_causes.touch_acid, playerName), targetPlayer, 10, 380, 0, 0, 0x000000, 0x000000, 1, true)
		elseif room.players[playerName].deathType == "vacuum" then
			ui.addTextArea(10, string.format(text[room.lang].alerts.death_causes.fall_vacuum, playerName), targetPlayer, 10, 380, 0, 0, 0x000000, 0x000000, 1, true)
		else
			ui.addTextArea(10, string.format(text[room.lang].alerts.death_causes.unknown, playerName), targetPlayer, 10, 380, 0, 0, 0x000000, 0x000000, 1, true)
		end
		room.killTextTimestamp = os.time()
	end
	room.alive_players = room.alive_players - 1
	if room.alive_players == 0 then
		if room.time_remaining > 10 then
			if not victoryControl.status then
				tfm.exec.setGameTime(10)
			end
			acid.timestamp = nil
		end
	elseif room.alive_players == 1 then
		victoryControl.status = true
		for player in pairs(room.players) do
			if player.isAlive then
				victoryControl.winner = player
				victoryControl.timestamp = os.time()
				tfm.exec.playEmote(player, 0, nil)
				tfm.exec.giveCheese(room.players[player])
				break
			end
		end
		tfm.exec.setGameTime(7)
	end
end

function eventTextAreaCallback(id, player, event)
	if event == "clear" then
		ui.removeTextArea(id, player)
	end
	if id == 2 then
		if event == "help" then
			ui.addTextArea(20, "<font size='24'><T>"..(text[room.lang].ui.help.title).."</T></font>\n\n"..(text[room.lang].ui.help.description).."\n\n"..(text[room.lang].ui.help.desc2).."\n\n\n<a href='event:control'>"..(text[room.lang].ui.controls.title).."</a> | <a href='event:clear'><R>"..(text[room.lang].ui.tclose).."</R></a>", player, 200, 50, 400, 300, 0x010101, 0x010101, 0.5, true)
		end
		if event == "settings" then
			ui.addTextArea(20, "<font size='24'><T>"..(text[room.lang].ui.settings.title).."</T></font>\n\n"..(text[room.lang].ui.settings.description).."\n\n\n<a href='event:clear'><R>"..(text[room.lang].ui.tclose).."</R></a>", player, 200, 50, 400, 300, 0x010101, 0x010101, 0.5, true)
		end
		if event == "profile" then
			local title = tfm.get.room.playerList[player].title
			local gender = tfm.get.room.playerList[player].gender
			local cheeses = tfm.get.room.playerList[player].cheeses
			ui.addTextArea(20, "<font size='24'><T>"..(text[room.lang].ui.profile.title).."</T></font>\n\n"..(string.format(text[room.lang].ui.profile.description, player)).."\n\nVasıf: "..title.."\n\nCinsiyet: "..gender.."\n\nPeynirler: "..cheeses.."\n\n\n<a href='event:clear'><R>"..(text[room.lang].ui.tclose).."</R></a>", player, 200, 50, 400, 300, 0x010101, 0x010101, 0.5, true)
		end
	end
	if id == 20 then
		if event == "control" then
			ui.addTextArea(200, "<font size='24'><T>"..(text[room.lang].ui.controls.title).."</T></font>\n\n[ Space ] Ok atar\n[Z] Balon çağırır (10s bekleme süresi)\n[X] Trambolin çıkarır (Round başı 1 kere kullanılır)\n[C] Bonus zıplama (10s bekleme süresi)\n\n\n<a href='event:clear'><R>"..(text[room.lang].ui.tclose).."</R></a>", player, 200, 50, 400, 300, 0x010101, 0x010101, 1, true)
		end
	end
end

function main()
	for name, player in pairs(tfm.get.room.playerList) do
		eventNewPlayer(name)
	end

	ui.addTextArea (2, "<font size='16' ><a href='event:profile'>"..(text[room.lang].ui.profile.title).."</a> | <a href='event:settings'>"..(text[room.lang].ui.settings.title).."</a> | <a href='event:help'>"..(text[room.lang].ui.help.title).."</a></p>", targetPlayer, 600, 375, 0, 0, 0x000000, 0x000000, 0.75, true)

	tfm.exec.newGame(maps[math.random(#maps)])
end

main()