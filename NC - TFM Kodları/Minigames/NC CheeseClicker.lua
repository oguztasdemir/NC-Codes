	-- Variables 

		-- System
			lang_name = "fr"
			theme = nil
			admin = "Psykotik"
			gameLaunched = false
			bootcampLaunched = false
			mapLaunched = false
			bootcampDuration = 360
			bootTimer = 0
		
		-- Money stuff

			cheese = 100
			cheesepersecond = 0
			cheeseperclicks = 1
			cow = 0
			cowprice = 200
			barn = 0
			barnprice = 2000
			farm = 0
			farmprice = 20000
			cave = 0
			caveprice = 200000
			land = 0
			landprice = 2000000
			field = 0
			fieldprice = 20000000

		-- UI stuff
			str = "<br>"
			maxpages = 2

		-- Tables
			isGameOpen = {}
			scoreChecked = {}
			currentPage = {}
			playerScore = {}
			nickScores = {}

			bootcampMaps = {"@1427980", "@161434", "@216173", "@172621", "@500000", "@3908151", "@512887","@374995", "@306365", "@155606", "@333002", "@172547", "@3734998", "@1737914", "@2989803", "@3136410", "@438449", "@976944", "@1595965", "@1636814", "@2009003", "@3804078", "@3768117", "@3799357", "@3278138", "@3311534", "@3779861", "@3576303", "@3780618", "@2789121", "@2811229", "@3659983", "@3759157", "@597804", "@2998268", "@2132250", "@3745158", "@3338283", "@3062939", "@3137929", "@3560999", "@3182487", "@3725142", "@3012311", "@3493456", "@343456", "@208056", "@881158", "@492399", "@268915", "@505619", "@397469", "@729863", "@184648", "@156720", "@541693", "@842019", "@1303323", "@1807217", "@164916", "@174223", "@186066", "@191642", "@1014313", "@319443", "@176729", "@397478", "@1733211", "@365061", "@541223", "@306384", "@504485", "@496886", "@444589"}
		
		
	-- Text

			lang = {}

				lang.fr = {

					title = "Cheese Clicker",
					cheese = "Fromages:",
					cps = "Fromages/secondes:",
					cpc = "Fromages/clics:",
					cows = "Vaches: ",
					cowsprice = ""..cowprice.." fromages",
					barns = "Granges: ",
					barnsprice = ""..barnprice.." fromages",
					farms = "Fermes: ",
					farmsprice = ""..farmprice.." fromages",
					lands = "Terres: ",
					landsprice = ""..landprice.." fromages",
					caves = "Caves: ",
					cavesprice = ""..caveprice.." fromages",
					fields = "Prés: ",
					fieldsprice = ""..fieldprice.." fromages",
					score = "Scores",
					help = "Aide",
					back = "Accueil",
					helptext = "Bievenue dans Cheese Clicker ! Dans ce module, votre but est de récolter le plus de fromages possible en cliquant sur la zone marquée de 'XXX'. Économisez assez de fromages et vous pourrez acheter votre première vache, ce qui vous permettra d'automatiser votre production. Vous pourrez alors investir dans des granges, des fermes, et des hectares pour vos terres afin de décupler votre rendement !",
					helprate = "Taux de production:<br>Vaches: 2 fromages par seconde, +1 fromage par clic<br>Granges: 22 fromages par seconde, +10 fromage par clic<br>Fermes: 230 fromages par seconde, +100 fromages par clic<br>Caves: 2,400 fromages par seconde, +1,000 fromages par clic<br>Terres: 25,000 fromages par seconde, +10,000 fromages par clic<br>Prés: 260,000 fromages par seconde, +100,000 fromages par clic",
					optiontitle = "Options",
					optiontext = "<br><br>Langue:<br><br><br><br>Thème:",
					optionfr = "Français",
					optionen = "Anglais",
					optionclear = "Transparent",
					optionopaque = "Classique",
					refresh = "Actualiser",
					bootcamp = "Bootcamp",
					mapload = "Charger une map",
					stop = "Stop",
					skip = "Passer",
					maploaderror = "Entrez un code à chiffres (0, 3, 62...) ou un code commençant par @ (@4161033, @2266455...)"
				}

				lang.en = {

					title = "Cheese Clicker",
					cheese = "Cheese:",
					cps = "Cheese/second:",
					cpc = "Cheese/clicks:",
					cows = "Cows: ",
					cowsprice = ""..cowprice.." cheese",
					barns = "Granges: ",
					barnsprice = ""..barnprice.." cheese",
					farms = "Fermes: ",
					farmsprice = ""..farmprice.." cheese",
					lands = "Terres: ",
					landsprice = ""..landprice.." cheese",
					caves = "Caves: ",
					cavesprice = ""..caveprice.." cheese",
					fields = "Fields: ",
					fieldsprice = ""..fieldprice.." cheese",
					score = "Scores",
					help = "Help",
					back = "Home",
					helptext = "Welcome to Cheese Clicker ! In this module, you have to get as much cheese as you can by clicking the 'XXX'. Save enough cheese and you'll be able to afford your first cow, which will help automate your production. You may then invest in barns, farms, and lands which will further multiply your production rate !",
					helprate = "Production rate:<br> Cows: 2 cheese per second, +1 cheese per click<br>Barns: 22 cheese per second, +10 cheese per click<br>Farms: 230 cheese per second, +100 cheese per cick<br>Caves: 2,400 cheese per second, +1,000 cheese per click<br>Lands: 25,000 cheese per second, +10,000 cheese per click<br>Fields: 260,000 cheese per second, +100,000 cheese per click",
					optiontitle = "Options",
					optiontext = "<br><br>Language:<br><br><br><br>Theme:",
					optionfr = "French",
					optionen = "English",
					optionclear = "Clear",
					optionopaque = "Classic",
					refresh = "Refresh",
					bootcamp = "Bootcamp",
					mapload = "Load a map",
					stop = "Stop",
					skip = "Skip",
					maploaderror = "Enter a numeric code (0, 3, 62...) or a code starting with @ (@4161033, @2266455...)"
				}

				text = lang[lang_name]


	-- TextAreas IDs

			id = {}

			id.main_area = 1
			id.clicking_button = 2
			id.cheese_area = 3
			id.first_buy = 4
			id.second_buy = 5
			id.third_buy = 6
			id.fourth_buy = 7
			id.fifth_buy = 16
			id.sixth_buy = 17
			id.first_price = 18
			id.second_price = 19
			id.third_price = 20
			id.fourth_price = 21
			id.fifth_price = 22
			id.sixth_price = 23
			id.score_button = 25
			id.help_button = 8
			id.minimize_button = 9
			id.option_button = 10
			id.option_fr = 11
			id.option_en = 12
			id.option_clear = 13
			id.option_classic = 14
			id.back_page = 15
			id.next_page = 24
			id.score_popup = 26
			id.bootcamp_button = 27
			id.mapload_button = 28
			id.mapload_popup = 29
			id.mapload_error = 30

	----------------------------------------------------------
	-- Functions											     -
	----------------------------------------------------------


	----------------------------------------------------------

	-- Chat Commands (mainly debug)

	function eventChatCommand(playerName, message)

		if message == "var" then
			print(table.concat(playerScore))
		end


	end

	----------------------------------------------------------

	-- Launches the game

	function launchGame()

			
			tfm.exec.disableAfkDeath(true)
			tfm.exec.disableAutoTimeLeft(true)

			for playerName,v in pairs(tfm.get.room.playerList) do
				if isGameOpen[playerName] == nil then
					isGameOpen[playerName] = false
				end
				if scoreChecked[playerName] == nil then
					scoreChecked[playerName] = false
				end
				if currentPage[playerName] == nil then
					currentPage[playerName] = 1
				end
				if playerScore[playerName] == nil then
					playerScore[playerName] = 0
				end
				tfm.exec.setPlayerScore(playerName, 0)
			end

			gameLaunched = false
			loadUi(playerName)
			minimize(playerName)

	end

	----------------------------------------------------------

	function loadBootcamp()

		tfm.exec.disableAutoNewGame(true)
		bootcampLaunched = true
		tfm.exec.disableAutoShaman(true)
		tfm.exec.newGame(bootcampMaps[math.random(#bootcampMaps)])

	end

	function skipBootcamp()

		tfm.exec.newGame(bootcampMaps[math.random(#bootcampMaps)])

	end
	
	function loadMap()

		ui.addPopup(id.mapload_popup, 2, "<p align='center'>"..text.mapload.."</p>", playerName, 300, 145, 200, true)

	end

	function eventPopupAnswer(popupId, playerName, answer)
		if popupId==29 then
			if bootcampLaunched == true then
				bootcampLaunched = false
				ui.updateTextArea(id.bootcamp_button, "<p align='center'><a href='event:bootcamp'>"..text.bootcamp.."</a></p>", nil)
				ui.updateTextArea(id.mapload_button, "<p align='center'><a href='event:mapload'><font size='9'>"..text.mapload.."</font></a></p>", nil)
			end
			if tonumber(answer) ~= nil or string.sub(answer, 1, 1) == "@" then
					if string.sub(answer, 1, 1) == "@" and tonumber(string.sub(answer, 2)) ~= nil then
						mapCode = string.sub(answer, 2)
						tfm.exec.newGame(mapCode)
					elseif tonumber(string.sub(answer, 2)) == nil and string.len(answer) ~= 1 then
						ui.addPopup(id.mapload_error, 0, "<p align='center'>"..text.maploaderror.."</p>", playerName, 300, 145, 200, true)

					elseif tonumber(answer) ~= nil then
						tfm.exec.newGame(answer)
					end
			else
				ui.addPopup(id.mapload_error, 0, "<p align='center'>"..text.maploaderror.."</p>", playerName, 300, 145, 200, true)
			end
		end
	end

	----------------------------------------------------------

	-- Executes when a new player enters the room

	function eventNewPlayer(playerName)
		
			isGameOpen[playerName] = true
			scoreChecked[playerName] = false
			currentPage[playerName] = 1
			playerScore[playerName] = 0
	 		gameLaunched = false

			loadUi(playerName)
			minimize(playerName)

	end

	-- Executes when a player leaves the room

	function eventPlayerLeft(playerName)

		table.removekey(playerScore, playerName)
	
	end

	-- Executes when a player dies

	function eventPlayerDied(playerName)
		if bootcampLaunched == true then
		    tfm.exec.respawnPlayer(playerName)
		end
	end

	-- Executes when a player wins

	function eventPlayerWon(playerName)
		    tfm.exec.respawnPlayer(playerName)
	end

	-- Executes at the start of a new game.

	function eventNewGame()
		if bootcampLaunched == true then
			tfm.exec.setGameTime(bootcampDuration)
		end
	end

	----------------------------------------------------------

	-- Loads all the UI text areas

	function loadUi(playerName)

			ui.addTextArea(id.main_area, "<p align='center'>"..text.title.."</p>", playerName, 5, 28, 790, 367, theme, nil, nil, true)
			ui.addTextArea(id.clicking_button, "<p align='center'><a href='event:clic'>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></p>", playerName, 325, 85, 150 ,200, nil, 0x000000, 0.1, true)
			-- ui.addTextArea(id.back_page, "<p align='center'><a href='event:backpage'>{</a></p>", playerName, 178, 342, 20, 20, theme, nil, nil, true)
			-- ui.addTextArea(id.next_page, "<p align='center'><a href='event:nextpage'>}</a></p>", playerName, 648, 342, 20, 20, theme, nil, nil, true)
			ui.addTextArea(id.cheese_area, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", playerName, 325, 300, 150, 80, theme, nil, nil, true)
			ui.addTextArea(id.first_buy, "", playerName, 60, 85, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.first_price, "", playerName, 60, 120, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.second_buy, "", playerName, 60, 155, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.second_price, "", playerName, 60, 190, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.third_buy, "", playerName, 60, 225, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.third_price, "", playerName, 60, 260, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fourth_buy, "", playerName, 545, 85, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fourth_price, "", playerName, 545, 120, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fifth_buy, "", playerName, 545, 155, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fifth_price, "", playerName, 545, 190, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.sixth_buy, "", playerName, 545, 225, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.sixth_price, "", playerName, 545, 260, 200, 20, theme, nil, nil, true)
			loadPages(playerName)
			if bootcampLaunched == false then
			ui.addTextArea(id.bootcamp_button, "<p align='center'><a href='event:bootcamp'>"..text.bootcamp.."</a></p>", playerName, 10, 360, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.mapload_button, "<p align='center'><a href='event:mapload'><font size='9'>"..text.mapload.."</font></a></p>", playerName, 10, 325, 100, 20, theme, nil, nil, true)
			else
			ui.addTextArea(id.bootcamp_button, "<p align='center'><a href='event:stop'>"..text.stop.."</a></p>", playerName, 10, 360, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.mapload_button, "<p align='center'><a href='event:skip'>"..text.skip.."</a></p>", playerName, 10, 325, 100, 20, theme, nil, nil, true)
			end
			ui.addTextArea(id.help_button, "<p align='center'><a href='event:help'>"..text.help.."</a></p>", playerName, 690, 360, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.score_button, "<p align='center'><a href='event:score'>"..text.score.."</a></p>", playerName, 690, 325, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.minimize_button, "<p align='center'><a href='event:mini'>-</a></p>", all, 780, 30, 10, 20, nil, nil, nil, true)
			ui.addTextArea(id.option_button, "<p align='center'><a href='event:option'>0</a></p>", playerName, 755, 30, 10, 20, nil, nil, nil, true)

	end

	----------------------------------------------------------

	-- Reloads the UI

	function reloadUi(playerName)

			ui.removeTextArea(id.option_fr, playerName)
			ui.removeTextArea(id.option_en, playerName)
			ui.removeTextArea(id.option_clear, playerName)
			ui.removeTextArea(id.option_classic, playerName)
			ui.updateTextArea(id.main_area, "<p align='center'>"..text.title.."</p>", playerName)
			ui.updateTextArea(id.cheese_area, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", playerName)
			ui.addTextArea(id.clicking_button, "<p align='center'><a href='event:clic'>XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</a></p>", playerName, 325, 85, 150 ,200, nil, 0x000000, 0.1, true)
			ui.addTextArea(id.first_buy, "", playerName, 60, 85, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.first_price, "", playerName, 60, 120, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.second_buy, "", playerName, 60, 155, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.second_price, "", playerName, 60, 190, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.third_buy, "", playerName, 60, 225, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.third_price, "", playerName, 60, 260, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fourth_buy, "", playerName, 545, 85, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fourth_price, "", playerName, 545, 120, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fifth_buy, "", playerName, 545, 155, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.fifth_price, "", playerName, 545, 190, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.sixth_buy, "", playerName, 545, 225, 200, 20, theme, nil, nil, true)
			ui.addTextArea(id.sixth_price, "", playerName, 545, 260, 200, 20, theme, nil, nil, true)
			loadPages(playerName)
			if bootcampLaunched == false then
			ui.addTextArea(id.bootcamp_button, "<p align='center'><a href='event:bootcamp'>"..text.bootcamp.."</a></p>", playerName, 10, 360, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.mapload_button, "<p align='center'><a href='event:mapload'><font size='9'>"..text.mapload.."</font></a></p>", playerName, 10, 325, 100, 20, theme, nil, nil, true)
			else
			ui.addTextArea(id.bootcamp_button, "<p align='center'><a href='event:stop'>"..text.stop.."</a></p>", playerName, 10, 360, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.mapload_button, "<p align='center'><a href='event:skip'>"..text.skip.."</a></p>", playerName, 10, 325, 100, 20, theme, nil, nil, true)
			end
			-- ui.addTextArea(id.back_page, "<p align='center'><a href='event:backpage'>{</a></p>", playerName, 178, 342, 20, 20, theme, nil, nil, true);
			-- ui.addTextArea(id.next_page, "<p align='center'><a href='event:nextpage'>}</a></p>", playerName, 648, 342, 20, 20, theme, nil, nil, true);
			ui.addTextArea(id.score_button, "<p align='center'><a href='event:score'>"..text.score.."</a></p>", playerName, 690, 325, 100, 20, theme, nil, nil, true)
			ui.updateTextArea(id.help_button, "<p align='center'><a href='event:help'>"..text.help.."</a></p>", playerName)
			ui.updateTextArea(id.minimize_button, "<p align='center'><a href='event:mini'>-</a></p>", playerName)
			ui.updateTextArea(id.option_button, "<p align='center'><a href='event:option'>0</a></p>", playerName)

	end

	----------------------------------------------------------

	function clearHomeUI(playerName)

			ui.removeTextArea(id.clicking_button, playerName)
			ui.removeTextArea(id.first_buy, playerName)
			ui.removeTextArea(id.first_price, playerName)
			ui.removeTextArea(id.second_buy, playerName)
			ui.removeTextArea(id.second_price, playerName)
			ui.removeTextArea(id.third_buy, playerName)
			ui.removeTextArea(id.third_price, playerName)
			ui.removeTextArea(id.fourth_buy, playerName)
			ui.removeTextArea(id.fourth_price, playerName)
			ui.removeTextArea(id.fifth_buy, playerName)
			ui.removeTextArea(id.fifth_price, playerName)
			ui.removeTextArea(id.sixth_buy, playerName)
			ui.removeTextArea(id.sixth_price, playerName)
			ui.removeTextArea(id.bootcamp_button, playerName)
			ui.removeTextArea(id.mapload_button, playerName)
			-- ui.removeTextArea(id.back_page, playerName)
			-- ui.removeTextArea(id.next_page, playerName)

	end
	----------------------------------------------------------

	-- Loads the store pages

	function loadPages(playerName)

		-- if currentPage[playerName] == 1 then
			ui.updateTextArea(id.first_buy, "<p align='center'><a href='event:cow'><font size='10'>"..text.cows..""..cow.." </font></a></p>", playerName)
			ui.updateTextArea(id.first_price, "<p align='center'><a href='event:cow'><font size='10'>"..text.cowsprice.." </font></a></p>", playerName)
			ui.updateTextArea(id.second_buy, "<p align='center'><a href='event:barn'><font size='10'>"..text.barns..""..barn.." </font></a></p>", playerName)
			ui.updateTextArea(id.second_price, "<p align='center'><a href='event:barn'><font size='10'>"..text.barnsprice.." </font></a></p>", playerName)
			ui.updateTextArea(id.third_buy, "<p align='center'><a href='event:farm'><font size='10'>"..text.farms..""..farm.." </font></a></p>", playerName)
			ui.updateTextArea(id.third_price, "<p align='center'><a href='event:farm'><font size='10'>"..text.farmsprice.." </font></a></p>", playerName)
			ui.updateTextArea(id.fourth_buy, "<p align='center'><a href='event:cave'><font size='10'>"..text.caves..""..cave.." </font></a></p>", playerName)
			ui.updateTextArea(id.fourth_price, "<p align='center'><a href='event:cave'><font size='10'>"..text.cavesprice.." </font></a></p>", playerName)
			ui.updateTextArea(id.fifth_buy, "<p align='center'><a href='event:land'><font size='10'>"..text.lands..""..land.." </font></a></p>", playerName)
			ui.updateTextArea(id.fifth_price, "<p align='center'><a href='event:land'><font size='10'>"..text.landsprice.." </font></a></p>", playerName)
			ui.updateTextArea(id.sixth_buy, "<p align='center'><a href='event:field'><font size='10'>"..text.fields..""..field.." </font></a></p>", playerName)
			ui.updateTextArea(id.sixth_price, "<p align='center'><a href='event:field'><font size='10'>"..text.fieldsprice.." </font></a></p>", playerName)
		-- elseif currentPage[playerName] == 2 then
		-- end

	end

	----------------------------------------------------------

	-- Loads the help

	function loadHelp(playerName)

			isGameOpen[playerName] = true

			clearHomeUI(playerName)
			ui.removeTextArea(id.score_button, playerName)
			ui.updateTextArea(id.main_area, "<p align='center'>"..text.help.."<br><br><br><font size='14'>"..text.helptext.."<br><br>"..text.helprate.."</font></p>", playerName)
			ui.updateTextArea(id.help_button, "<p align='center'><a href='event:back'>"..text.back.."</a></p>", playerName)
			ui.updateTextArea(id.minimize_button, "<p align='center'><a href='event:mini'>-</a></p>", playerName)
			ui.updateTextArea(id.option_button, "<p align='center'><a href='event:option'>0</a></p>", playerName)
			ui.updateTextArea(id.cheese_area, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)


	end

	----------------------------------------------------------

	-- Loads the options

	function loadOptions(playerName)
		

			isGameOpen[playerName] = true

			clearHomeUI(playerName)
			ui.removeTextArea(id.score_button, playerName)
			ui.updateTextArea(id.main_area, "<p align='center'>"..text.optiontitle.."</p><p align='left'><font size='14'>"..text.optiontext.."</font></p>", playerName)
			ui.updateTextArea(id.help_button, "<p align='center'><a href='event:back'>"..text.back.."</a></p>", playerName)
			ui.updateTextArea(id.minimize_button, "<p align='center'><a href='event:mini'>-</a></p>", playerName)
			ui.updateTextArea(id.option_button, "<p align='center'><a href='event:option'>0</a></p>", playerName)
			ui.addTextArea(id.option_fr, "<p align='center'><a href='event:french'>"..text.optionfr.."</a></p>", playerName, 30, 105, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.option_en, "<p align='center'><a href='event:english'>"..text.optionen.."</a></p>", playerName, 145, 105, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.option_clear, "<p align='center'><a href='event:clear'>"..text.optionclear.."</a></p>", playerName, 30, 170, 100, 20, theme, nil, nil, true)
			ui.addTextArea(id.option_classic, "<p align='center'><a href='event:opaque'>"..text.optionopaque.."</a></p>", playerName, 145, 170, 100, 20, theme, nil, nil, true)
			ui.updateTextArea(id.cheese_area, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)

	end

	----------------------------------------------------------

	function loadScores(playerName)

			clearHomeUI(playerName)
			displayscores = table.tostring(playerScore)
			ui.updateTextArea(id.main_area,"<p align='center'>"..text.score.."</p><p align='center'><font size='12'>"..displayscores.."</font></p>", playerName)
			ui.updateTextArea(id.score_button, "<p align='center'><a href='event:refresh'>"..text.refresh.."</a></p>", playerName)
			ui.updateTextArea(id.help_button, "<p align='center'><a href='event:back'>"..text.back.."</a></p>", playerName)
			ui.updateTextArea(id.cheese_area, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)

	end

	----------------------------------------------------------

	-- Table manipulation fonctions

	function table.val_to_str ( v )

		if "string" == type( v ) then
			v = string.gsub( v, "\n", "\\n" )
		if string.match( string.gsub(v,"[^'\"]",""), '^"+$' ) then
			return "'" .. v .. "'"
		end
			return '"' .. string.gsub(v,'"', '\\"' ) .. '"'
		else
			return "table" == type( v ) and table.tostring( v ) or
			tostring( v )
		end

	end

	function table.key_to_str ( k )

		if "string" == type( k ) and string.match( k, "^[_%a][_%a%d]*$" ) then
			return k
		else
			return "[" .. table.val_to_str( k ) .. "]"
		end

	end

	function table.tostring( tbl )

		local result, done = {}, {}
		for k, v in ipairs( tbl ) do
			table.insert( result, table.val_to_str( v ) )
			done[ k ] = true
		end
		for k, v in pairs( tbl ) do
			if not done[ k ] then
				table.insert( result,
				table.key_to_str( k ) .. ": " .. table.val_to_str( v ) )
			end
		end
		return "<br>" .. table.concat( result, "<br>" ) .. ""

	end

	function table.removekey(table, key)
		local element = table[key]
		table[key] = nil
		return element
	end

----------------------------------------------------------

	-- Minimizes and maximizes the game

	function minimize(playerName)

			if gameLaunched==false then

				
				ui.removeTextArea(id.cheese_area, playerName)
				clearHomeUI(playerName)
				ui.removeTextArea(id.score_button, playerName)
				ui.removeTextArea(id.help_button, playerName)
				ui.removeTextArea(id.option_button, playerName)
				ui.removeTextArea(id.main_area, playerName)

				gameLaunched = true

			end
		
			if isGameOpen[playerName]==true then

				ui.removeTextArea(id.cheese_area, playerName)
				clearHomeUI(playerName)
				ui.removeTextArea(id.score_button, playerName)
				ui.removeTextArea(id.help_button, playerName)
				ui.removeTextArea(id.option_button, playerName)
				ui.removeTextArea(id.option_fr, playerName)
				ui.removeTextArea(id.option_en, playerName)
				ui.removeTextArea(id.option_clear, playerName)
				ui.removeTextArea(id.option_classic, playerName)
				ui.removeTextArea(id.main_area, playerName)

				isGameOpen[playerName] = false
			
			elseif isGameOpen[playerName]==false then

				isGameOpen[playerName] = true
				loadUi(playerName)

			end
	end

	----------------------------------------------------------

	function updatePrice(currentprice)
			local nextprice = math.floor((currentprice*0.196)+0.5)
			currentprice = currentprice + nextprice
			return(currentprice)
	end

	----------------------------------------------------------
	--- Clicks function										 -
	----------------------------------------------------------

	-- Executes when you click on a text

	function eventTextAreaCallback(id, playerName, callback)

			if callback=="clic" then
		
				cheese = cheese + 1 + cow + (barn * 10) + (farm * 100) + (cave * 1000) + (land * 10000) + (field * 100000)
				ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
				playerScore[playerName] = playerScore[playerName] + 1
		
			elseif callback=="cow" then
		
				if cheese >= cowprice then
			
					cow = cow + 1
					cheese = cheese - cowprice
					cowprice = updatePrice(cowprice)
					cheesepersecond = cheesepersecond + 2
					cheeseperclicks = cheeseperclicks + 1
					lang.fr.cows = "Vaches: "
					lang.fr.cowsprice = ""..cowprice.." fromages"
					lang.en.cows = "Cows: "
					lang.en.cowsprice = ""..cowprice.." cheese"
					text = lang[lang_name]
					loadPages(playerName)
					ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
					playerScore[playerName] = playerScore[playerName] + 5

				end
			
			elseif callback=="barn" then
		
				if cheese >= barnprice then
			
					barn = barn + 1
					cheese = cheese - barnprice
					barnprice = updatePrice(barnprice)
					cheesepersecond = cheesepersecond + 22
					cheeseperclicks = cheeseperclicks + 10
					lang.fr.barns = "Granges: "
					lang.fr.barnsprice = ""..barnprice.." fromages"
					lang.en.barns = "Barns: "
					lang.en.barnsprice = ""..barnprice.." cheese"
					text = lang[lang_name]
					loadPages(playerName)
					ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
					playerScore[playerName] = playerScore[playerName] + 50

				end

			elseif callback=="farm" then
		
				if cheese >= farmprice then
			
					farm = farm + 1
					cheese = cheese - farmprice
					farmprice = updatePrice(farmprice)
					cheesepersecond = cheesepersecond + 230
					cheeseperclicks = cheeseperclicks + 100
					lang.fr.farms = "Fermes: "
					lang.fr.farmsprice = ""..farmprice.." fromages"
					lang.en.farms = "Farms: "
					lang.en.farmsprice = ""..farmprice.." cheese"
					text = lang[lang_name]
					loadPages(playerName)
					ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
					playerScore[playerName] = playerScore[playerName] + 500
		
				end

			elseif callback=="cave" then

				if cheese >= caveprice then
		
					cave = cave + 1
					cheese = cheese - caveprice
					caveprice = updatePrice(caveprice)
					cheesepersecond = cheesepersecond + 2400
					cheeseperclicks = cheeseperclicks + 1000
					lang.fr.caves = "Caves: "
					lang.fr.cavesprice = ""..caveprice.." fromages"
					lang.en.caves = "Caves: "
					lang.en.cavesprice = ""..caveprice.." cheese"
					text = lang[lang_name]
					loadPages(playerName)
					ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
					playerScore[playerName] = playerScore[playerName] + 5000
		
				end

			elseif callback=="land" then
		
				if cheese >= landprice then
		
					land = land + 1
					cheese = cheese - landprice
					landprice = updatePrice(landprice)
					cheesepersecond = cheesepersecond + 25000
					cheeseperclicks = cheeseperclicks + 10000
					lang.fr.lands = "Terres: "
					lang.fr.landsprice = ""..landprice.." fromages"
					lang.en.lands = "Lands: "
					lang.en.landsprice = ""..landprice.." cheese"
					text = lang[lang_name]
					loadPages(playerName)
					ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
					playerScore[playerName] = playerScore[playerName] + 50000
		
				end

			elseif callback=="field" then

				if cheese >= fieldprice then

					field = field + 1
					cheese = cheese - fieldprice
					fieldprice = updatePrice(fieldprice)
					cheesepersecond = cheesepersecond + 260000
					cheeseperclicks = cheeseperclicks + 100000
					lang.fr.fields = "Prés: "
					lang.fr.fieldsprice = ""..fieldprice.." fromages"
					lang.en.lands = "Fields: "
					lang.en.landsprice = ""..fieldprice.." cheese"
					text = lang[lang_name]
					loadPages(playerName)
					ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", all)
					playerScore[playerName] = playerScore[playerName] + 500000

				end

			elseif callback=="nextpage" then

				if currentPage[playerName] < maxpages then
					currentPage[playerName] = currentPage[playerName] + 1
					loadPages(playerName)
				end

			elseif callback=="backpage" then
				
				if currentPage[playerName] > 1 then
					currentPage[playerName] = currentPage[playerName] - 1
					loadPages(playerName)
				end

			elseif callback=="mini" then

				minimize(playerName)

			elseif callback=="score" then

				loadScores(playerName, playerScore)

			elseif callback=="help" then
		
				loadHelp(playerName)
		
			elseif callback=="option" then
		
				loadOptions(playerName)
			
			elseif callback=="back" then
		
				reloadUi(playerName)
			
			elseif callback=="french" then
		
				lang_name = "fr"
				text = lang[lang_name]
				reloadUi(playerName)
				loadOptions(playerName)
			
			elseif callback=="english" then
		
				lang_name = "en"
				text = lang[lang_name]
				reloadUi(playerName)
				loadOptions(playerName)
			
			elseif callback=="clear" then
		
				theme = 0
				loadUi(playerName)
				loadOptions(playerName)
			
			elseif callback=="opaque" then
		
				theme = nil
				loadUi(playerName)
				loadOptions(playerName)
			
			elseif callback=="refresh" then
				loadScores(playerName)

			elseif callback=="mapload" then
				loadMap()

			elseif callback=="bootcamp" then
				ui.updateTextArea(27, "<p align='center'><a href='event:stop'>"..text.stop.."</a></p>", nil)
				ui.updateTextArea(28, "<p align='center'><a href='event:skip'>"..text.skip.."</a></p>", nil)
				loadBootcamp()

			elseif callback=="skip" then
				bootTimer = 0
				skipBootcamp()

			elseif callback=="stop" then
				bootcampLaunched = false
				bootTimer = 0
				ui.updateTextArea(27, "<p align='center'><a href='event:bootcamp'>"..text.bootcamp.."</a></p>", nil)
				ui.updateTextArea(28, "<p align='center'><a href='event:mapload'><font size='9'>"..text.mapload.."</font></a></p>", nil)
				tfm.exec.disableAutoNewGame(false)
				tfm.exec.newGame()
			end

	end

	----------------------------------------------------------
	--- Main loop											 -
	----------------------------------------------------------

	-- Executes every 0.5 second

	function eventLoop(currentTime, timeRemaining)

				if bootcampLaunched == true then
					bootTimer = bootTimer + 0.5
					if bootTimer >= bootcampDuration then
							tfm.exec.newGame(bootcampMaps[math.random(#bootcampMaps)])
							bootTimer = 0
					end
				end
			if cheese > 0 then
				ui.updateTextArea(3, "<p align='center'><font size='10'>"..text.cheese.."<br>"..cheese.."<br>"..text.cps.."<br>"..cheesepersecond.."<br>"..text.cpc.."<br>"..cheeseperclicks.."<br></font></p>", playerName)
			end
		
			if cheese < 0 then
				cheese = 0
			end
		
			if cow > 0 then
				cheese = cheese + (cow * 1)
			end	

			if barn > 0 then
				cheese = cheese + (barn * 11)
			end

			if farm > 0 then
				cheese = cheese + (farm * 115)
			end

			if cave > 0 then
				cheese = cheese + (cave * 1200)
			end

			if land > 0 then
				cheese = cheese + (land * 12500)
			end	
			
			if field > 0 then
				cheese = cheese + (field * 130000)
			end

			for playerName,_ in pairs(tfm.get.room.playerList) do
				if isGameOpen[playerName]==true then
					loadPages(playerName)
				end
			end

	end

	----------------------------------------------------------
	--- Main											    	 -
	----------------------------------------------------------

	-- Executes when you launch the lua

	launchGame()