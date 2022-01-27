------------------
-- UTHS by Szel ----- Translated in RO by Posesyon --
-- version 1.3  --
------------------
 
---- CHANGE IT/ ZMIEN TO:
superAdmin = {'Devilstrkpro'}
admins = {'Devilstrkpro', 'Salsalb'}
language = 'ro' -- 'ro' or 'en' or 'pl'
 
-- cd. nie ruszac
version = '1.3'
lang = {}
lang.ro = {
    help = [[<p align="center"><font size="19px">Ultimate Tribe House Script</font> v. ]]..version..[[</p><p align="right"><font size="10px" color="#ffffff">created by Szel --- tradus in romana de Posesyon</font></p>Commands:
    !cmd - arata comenzile
    !set - arata setarile
    !help - arata meniul de ajutor
Hotkeys:
    h - arata meniul de ajutor
    Esc - inchide fereastra
    i - arata comenzile
    o - arata setarile
    m - arata minigame-urile
]],
    disabled = 'Dezactivat',
    enabled = 'Activat',
    disable = 'Dezactiveaza',
    enable = 'Activeaza',
    refresh = 'refresh',
    close = 'Inchide',
    minigames = 'Minigames',
    minigame = 'Minigame',
    module_stop = '!module stop - pentru a opri minigame-ul',
 
    maps_queue = 'mape in asteptare',
    queuing = 'Queuing',
    played = 'Jucate',
    maps2 = 'mape',
    delete = 'sterge',
    admins = 'Admini',
    reset_settings = 'reseteaza setarile',
    settings = 'Setari',
    commands = 'Comenzi',
    for_admins = 'pentru admini',
    banned = 'Esti banat',
   
    module_des = 'arata lista minigame-urilor',
    made_des = 'comanda noua',
    kill_des = 'omorari',
    ice_des = 'inghetari',
    sham_des = 'da shaman',
    ch_des = 'da branza',
    tp_des = 'teleport',
    utp_des = 'dezactiveaza teleport, [unglue player]',
    tpp_des = 'teleport cu lipici',
    ro_des = 'sterge toate obiectele',
    meep_des = 'da meep',
    ban_des = 'dezactiveaza comenzile pentru <nume>',
    unban_des = 'activeaza comenzile pentru <nume>',
    admin_des = 'da admin rank',
    unadmin_des = 'withdraws admin rank',
    score_des = 'seteaza <player> scor',
    mapname_des = 'schimba numele mapei',
    shamname_des = 'schimba numele shamanului',
    respawn_des = 'respawns',
    autorespawn_des = 'on/off autorespawn',
    color_des = 'seteaza culoare numelui',
    queue_des = 'on/off maps queuing',
    maps_des = 'arata mapele in asteptare',
    np_des = 'mapele jucate',
    npp_des = 'adauga mape in asteptare',
    mort_des = 'sinucidere',
    off_des = 'dezactiveaza comanda',
    on_des = 'activeaza comanda',
    cmd_des = 'arata lista comenzilor',
    pet_des = 'converteste <nume> in animal de companie',
    unpet = 'withdraws !pet',
    set_des = 'arata lista setarilor',
    xml_des = 'joaca mape din  xml code',
    house_des = 'seteaza casa tribului',
    help_des = 'arata meniul de ajutor',
    vampire_des = 'transforma intr-un vampir',
    log_des = 'arata !commands log',
    queue_set = 'mape in asteptare',
    autorespawn_set = 'auto respwan',
    autoTimeLeft_set = 'auto schimbare timp',
    afk_set = 'AFK death',
    autoNewGame_set = 'auto schimbare mapa',
    autoScore_set = 'auto score',
    autoShaman_set = 'Selectie automata Shaman',
    shamanSkills_set = 'skill-urile shaman-ului',
    settime_des = 'seteaza timpul jocului',
    snow_des = 'sa ninga',
    _des = '',
    _des = '',
    _des = '',
 
}
 
lang.en = {
    help = [[<p align="center"><font size="19px">Ultimate Tribe House Script</font> v. ]]..version..[[</p><p align="right"><font size="10px" color="#ffffff">created by Szel</font></p>Commands:
    !cmd - shows commands
    !set - shows settings
    !help - shows help
Hotkeys:
    h - shows help
    Esc - closes window
    i - shows commands
    o - shows settings
    m - shows minigames
]],
    disabled = 'disabled',
    enabled = 'enabled',
    disable = 'disable',
    enable = 'enable',
    refresh = 'refresh',
    close = 'close',
    minigames = 'Minigames',
    minigame = 'Minigame',
    module_stop = '!module stop - to turn off minigame',
 
    maps_queue = 'Maps queue',
    queuing = 'Queuing',
    played = 'played',
    maps2 = 'maps',
    delete = 'delete',
    admins = 'Admins',
    reset_settings = 'reset settings',
    settings = 'Settings',
    commands = 'Commands',
    for_admins = 'for admins',
    banned = 'You are banned',
   
    module_des = 'shows list of minigames',
    made_des = 'new commend',
    kill_des = 'kills',
    ice_des = 'freezes',
    sham_des = 'gives shaman',
    ch_des = 'gives cheese',
    tp_des = 'teleport',
    utp_des = 'diesables teleport, [unglue player]',
    tpp_des = 'teleport with glue',
    ro_des = 'removes all objects',
    meep_des = 'gives meep',
    ban_des = 'disables commands for <name>',
    unban_des = 'enables commands for <name>',
    admin_des = 'gives admin rank',
    unadmin_des = 'withdraws admin rank',
    score_des = 'sets <player> score',
    mapname_des = 'changes map name',
    shamname_des = 'changes shaman name',
    respawn_des = 'respawns',
    autorespawn_des = 'on/off autorespawn',
    color_des = 'sets nickname color',
    queue_des = 'on/off maps queuing',
    maps_des = 'shows maps queue',
    np_des = 'plays map',
    npp_des = 'adds map to queue',
    mort_des = 'kill yourself',
    off_des = 'disables command',
    on_des = 'enables command',
    cmd_des = 'shows commands list',
    pet_des = 'converts <name> into pet',
    unpet = 'withdraws !pet',
    set_des = 'shows settings lists',
    xml_des = 'plays map from xml code',
    house_des = 'sets tribe house',
    help_des = 'shows help',
    vampire_des = 'turns into vampire',
    log_des = 'shows !commands log',
    queue_set = 'maps queuing',
    autorespawn_set = 'auto respwan',
    autoTimeLeft_set = 'automatic time change',
    afk_set = 'AFK death',
    autoNewGame_set = 'auto map change',
    autoScore_set = 'auto score',
    autoShaman_set = 'automatic selection of Shaman',
    shamanSkills_set = 'shaman skills',
    settime_des = 'sets game time',
    snow_des = 'toggles snow',
    _des = '',
    _des = '',
    _des = '',
 
}
lang.pl = {
    help = [[<p align="center"><font size="19px">Ultimate Tribe House Script</font> v. ]]..version..[[</p><p align="right"><font size="10px" color="#ffffff">created by Szel</font></p>Komendy:
    !cmd - wszystkie komendy
    !set - ustawienia
    !help - pomoc
Skróty klawiszowe:
    h - help
    Esc - zamyka okna
    i - komendy
    o - opcje
    m - minigry
]],
    disabled = 'wylaczone',
    enabled = 'wlaczone',
    disable = 'wylacz',
    enable = 'wlacz  ',
    refresh = 'odswiez',
    close = 'zamknij',
    minigame = 'Minigra',
    minigames = 'Minigry',
    module_stop = '!module stop - zeby wylaczyc minigre',
 
    maps_queue = 'Kolejka map',
    queuing = 'Kolejkowanie',
    played = 'Zagrano',
    maps2 = 'map',
    delete = 'usun',
    admins = 'Admini',
    reset_settings = 'resetuj ustawienia',
    settings = 'Ustawienia',
    commands = 'Komendy',
    for_admins = 'dla adminów',
    banned = 'Masz bana',
    a = '',
    a = '',
   
    module_des = 'wlacza minigre',
    made_des = 'nowa komenda',
    kill_des = 'zabija',
    ice_des = 'zamraza',
    sham_des = 'daje szamana',
    ch_des = 'daje ser',
    tp_des = 'teleportuje',
    utp_des = 'wylacza teleportacje, [odkleja gracza]',
    tpp_des = 'teleportuje i przykleja',
    ro_des = 'usuwa wszystkie objekty',
    meep_des = 'daje meep',
    ban_des = 'wylacza komendy dla <nick>',
    unban_des = 'wlacza komendy dla <nick>',
    admin_des = 'daje admina',
    unadmin_des = 'zabiera admina',
    score_des = 'ustawia wynik',
    mapname_des = 'zmienia nazwe mapy',
    shamname_des = 'zmienia nazwe szamana',
    respawn_des = 'odradza',
    autorespawn_des = 'wlacza/wylacza automatyczne odradzanie',
    datl_des = 'wlacza/wylacza czas',
    color_des = 'Ustawia kolor nicka',
    queue_des = 'wlacza/wylacza kolejkowanie map',
    maps_des = 'pokazuje kolejke map',
    np_des = 'wlacza mape',
    npp_des = 'dodaje mape do kolejki',
    mort_des = 'zabija gracza',
    off_des = 'wylacza komende',
    on_des = 'wlacza komende',
    cmd_des = 'pokazuje spis komend',
    pet_des = 'zamienia <arg1> w zwierzatko',
    unpet = 'wylacza !pet',
    set_des = 'pokazuje ustawienia',
    xml_des = 'laduje mape z kodu XML',
    house_des = 'ustawia chatke plemienna',
    help_des = 'pomoc',
    vampire_des = 'zamienia w wampira',
    log_des = 'pokazuje log !komend',
    queue_set = 'kolejkowanie map',
    autorespawn_set = 'automatyczne odradzanie',
    autoTimeLeft_set = 'autoTimeLeft',
    afk_set = 'smierec AFK',
    autoNewGame_set = 'automatyczna zmiana map',
    autoScore_set = 'automatyczne punkty',
    autoShaman_set = 'atomatyczne wybieranie szamana',
    shamanSkills_set = 'dodatkowe umiejetnosci szamana',
    settime_des = 'ustaw czas',
    snow_des = 'wlacza snieg',
    _des = '',
    _des = '',
    _des = '',
 
}
lg = lang[language]
mapNumber = 0
wait = 0
Log = '\n'
tp = {}
tpp = {}          
playerPosition = {}
ban = {}
maps = {}
ob = {}
timer = {}
pet = {}
move = {}
xml = {}
vote = {}
 
commands = {
    kill = {on = 1, admin = 1, arg = 0, arg2 = 1, des = lg.kill_des, func = function(nick, args)
        tfm.exec.killPlayer(name(1))
    end},
    ice = {on = 1, admin = 1, arg = 1, des = lg.ice_des, func = function(nick, args)
        if tfm.get.room.playerList[args[2]] then
            local y = tfm.get.room.playerList[args[2]].y
            local x = tfm.get.room.playerList[args[2]].x
            tfm.exec.addShamanObject(54, x, y, 0, 0, 0, false)
            tfm.exec.killPlayer(args[2])
        end
    end},
    sham = {on = 1, admin = 1, arg = 0, arg2 = 1, des = lg.sham_des, func = function(nick, args)
        tfm.exec.setShaman(name(1))
    end},
    ch = {on = 1, admin = 1, arg = 0, arg2 = 1, des = lg.ch_des, func = function(nick, args)
        tfm.exec.giveCheese(name(1))
    end},
    tp = {on = 1, admin = 1, arg = 0, arg2 = 1, des = lg.tp_des, func = function(nick, args)
        system.bindMouse(nick,true)
        tpp[nick] = nil
        tp[nick] = args[2] 
    end},
    tpp = {on = 1, admin = 1, arg = 0, arg = 1, des = lg.tpp_des, func = function(nick, args)
        system.bindMouse(nick,true)
        tp[nick] = nil
        tpp[nick] = args[2]
    end},
    utp = {on = 1, admin = 1, arg = 0, arg2 = 1, des = lg.utp_des, func = function(nick, args)
        playerPosition[name(1)] = nil
        tpp[nick] = nil
        tp[nick] = nil
        playerPosition[nick] = nil
    end},
    ro = {on = 1, admin = 1, arg = 0, des = lg.ro_des, func = function(nick, args)
        for key,val in pairs(tfm.get.room.objectList) do
            table.insert(ob, key)
        end
        for key,val in pairs(ob) do
            tfm.exec.removeObject(val)
        end
        ob = {}
    end},
    meep = {on = 1, admin = 1, arg = 1, des = lg.meep_des, func = function(nick, args)
        tfm.exec.giveMeep(args[2])
    end},
    ban = {on = 1, admin = 1, arg = 1, des = lg.ban_des, func = function(nick, args)
        ban[args[2]] = true
    end},
    unban = {on = 1, admin = 1, arg = 1, des = lg.unban_des, func = function(nick, args)
        ban[args[2]] = false
    end},
    admin = {on = 1, admin = 1, arg = 1, des = lg.admin_des, func = function(nick, args)
        table.insert(admins, args[2])
    end},
    unadmin = {on = 1, admin = 2, arg = 1, des = lg.unadmin_des, func = function(nick, args)
        for i=1,#admins,1 do
            if admins[i] == args[2] then
                table.remove(admins, i)
            end
        end
    end},
    score = {on = 1, admin = 1, arg = 1, arg2 = 2, des = lg.score_des, func = function(nick, args)
        tfm.exec.setPlayerScore(args[2], args[3], 0)
    end},
    mapname = {on = 1, admin = 1, arg = -1, des = lg.mapname_des, func = function(nick, args)
        tfm.exec.setUIMapName(bbcode(rest))
    end},
    shamname = {on = 1, admin = 1, arg = -1, des = lg.shamname_des, func = function(nick, args)
        tfm.exec.setUIShamanName(bbcode(rest))
    end},
    respawn = {on = 1, admin = 1, arg = 0, arg2 = 1, des = lg.respawn_des, func = function(nick, args)
        tfm.exec.respawnPlayer(name(1))
    end},
    autorespawn = {on = 1, admin = 1, arg = 1, des = lg.autorespawn_des, func = function(nick, args)
        if args[2] == 'off' then
            settings.autorespawn.on = 0
        else   
            settings.autorespawn.on = 1
        end
    end},
    color = {on = 1, admin = 1, arg = 1, arg = 2, des = lg.color_des, func = function(nick, args)
        tfm.exec.setNameColor(args[2],'0x'..args[3])
    end},
    queue = {on = 1, admin = 1, arg = 1, des = lg.queue_des, func = function(nick, args)
        if args[2] == 'off' then
            settings.queue.on = 0
            tfm.exec.disableAutoNewGame(false)
        else
            settings.queue.on = 1
            tfm.exec.disableAutoNewGame(true)
            message('all', 'Wlaczono kolejkowanie', 'green')
        end
    end},
    maps = {on = 1, admin = 0, arg = 0, des = lg.maps_des, func = function(nick, args)
        showQueue(nick)
    end},
    np = {on = 1, admin = 0, arg = 1, des = lg.np_des, func = function(nick, args)
        tfm.exec.newGame(args[2])
    end},
    npp = {on = 1, admin = 0, arg = 1, des = lg.npp_des, func = function(nick, args)
        if #maps - mapNumber == 17 then
            message(nick, 'Nie mozesz dodac wiecej map', 'red')
        else
            local code = args[2]
            if args[2] == 'xml' then
                if not xml[nick] then
                    return false
                end
                code = xml[nick].xml
            end
            local mapNr = #maps+1;
            maps[mapNr] = {}
            maps[mapNr].code = code
            maps[mapNr].name = args[2]
            maps[mapNr].nick = nick
        end
    end},
    meep = {on = 1, admin = 0, arg = 0, des = lg.meep_des, func = function(nick, args)
        tfm.exec.giveMeep(nick)
    end},
    mort = {on = 1, admin = 0, arg = 0, des = lg.mort_des, func = function(nick, args)
        tfm.exec.killPlayer(nick)
    end},
    off = {on = 1, admin = 1, arg = 1, des = lg.off_des, func = function(nick, args)
        if args[2] == 'off' or args[2] == 'on' then
       
        elseif not commands[args[2]] then
            message(nick, 'Nie ma takiej komendy', 'red')
        else
            commands[args[2]].on = 0
            message(nick, 'Wylaczono "'..args[2]..'"', 'green')
        end
    end},
    on = {on = 1, admin = 1, arg = 1, des = lg.on_des, func = function(nick, args)
        if not commands[args[2]] then
            message(nick, 'Nie ma takiej komendy', 'red')
        else
            commands[args[2]].on = 1
            message(nick, 'Wlaczono "'..args[2]..'"', 'green')
        end
    end},
    cmd = {on = 1, admin = 0, arg = 0, des = lg.cmd_des, func = function(nick, args)
        showCmd(nick)
    end},
    pet = {on = 1, admin = 1, arg = 1, des = lg.pet_des, func = function(nick, args)
        pet[args[2]] = nick
    end},
    unpet = {on = 1, admin = 1, arg = 1, des = lg.unpet,func = function(nick, args)
        pet[args[2]] = nil
    end},
    set = {on = 1, admin = 0, arg = 0, des = lg.set_des, func = function(nick, args)
        options(nick)
    end},
    xml = {on = 1, admin = 0, arg = -1, des = lg.xml_des, func = function(nick, args)
        if args[2] == 'start' then
            xml[nick] = {}
            xml[nick].f = 1
            xml[nick].xml = ' '
        elseif args[2] == 'play' then
            if xml[nick] ~= nil then
                tfm.exec.newGame(xml[nick].xml)    
            end
        elseif xml[nick] ~= nil then
            if xml[nick].f == 1 then
                xml[nick].xml = string.gsub(rest, "&lt;", "<")
                xml[nick].f = 0
            else
                xml[nick].xml = xml[nick].xml..string.gsub(rest, "&lt;", "<")
            end
        end
    end},
    house = {on = 1, admin = 0, arg = 1, des = lg.house_des, func = function(nick, args)
        if args[2] == 'off' then
            house = nil
            tfm.exec.disableAfkDeath(false)
            tfm.exec.disableAutoShaman(false)
            tfm.exec.disableAutoNewGame(false)
        else
            tfm.exec.disableAfkDeath(true)
            tfm.exec.disableAutoShaman(true)
            tfm.exec.disableAutoNewGame(true)
           
            if args[2] == 'xml' then
                house = xml[nick]
                tfm.exec.newGame(xml[nick])
            else
                house = args[2]
                tfm.exec.newGame(args[2])
            end
           
        end
    end},
    help = {on = 1, admin = 0, arg = 0, des = lg.help_des, func = function(nick, args)
        showHelp(nick)
    end},
    vampire = {on = 1, admin = 0, arg = 0, arg2 = 1, des = lg.vampire_des, func = function(nick, args)
        tfm.exec.setVampirePlayer(name(1)) 
    end},
    log = {on = 1, admin = 2, arg = 0, arg2 = 0, des = lg.log_des, func = function(nick, args)
        ui.addTextArea(3,  Log:sub(1, 2000), nick, 250, 40, 300, 335, nil, nil,0.7)
    end},
    module = {on = 1, admin = 0, arg = 0, arg2 = 1, des = lg.module_des, func = function(nick, args)
        if not args[2] then
            showModules(nick)
        elseif module.on == 1 and (args[2] == 'stop' or args[2] == 'off')and isAdmin(nick) then
            if modules[module.play].off then
                modules[module.play]:off(args)
            end
            module.on = 0
            module.play = ''
        elseif isAdmin(nick) and modules[args[2]] then
            modulePlay(nick, args[2])
        end
    end},
    settime = {on = 1, admin = 1, arg = 1, des = lg.settime_des, func = function(nick, args)
        tfm.exec.setGameTime(args[2])  
    end},
    snow = {on = 1, admin = 1, arg = 0, des = lg.snow_des, func = function(nick, args)
        tfm.exec.snow()
    end},
 
    -- own commands / wlasne komendy
   
 
   
    -- end of own commands / koniec wlasnych komend
}
 
settings = {
    queue = {on = 0, def = 0,
        des = lg.queue_set,
        fOn = function() end,
        fOff = function() end},
    autorespawn = {on = 0, def = 0,
        des = lg.autorespawn_set,
        fOn = function() end,
        fOff = function() end},
    autoTimeLeft = {on = 0, def = 0,
        des = lg.autoTimeLeft_set,
        fOn = function() tfm.exec.disableAutoTimeLeft(false) end,
        fOff = function() tfm.exec.disableAutoTimeLeft(true) end},
    afk = {on = 1, def = 0,
        des = lg.afk_set,
        fOn = function() tfm.exec.disableAfkDeath(false) end,
        fOff = function() tfm.exec.disableAfkDeath(true) end},
    autoNewGame = {on = 1, def = 1,
        des = lg.autoNewGame_set,
        fOn = function() tfm.exec.disableAutoNewGame(false) end,
        fOff = function() tfm.exec.disableAutoNewGame(true) end},
    autoScore = {on = 1, def = 1,
        des = lg.autoScore_set,
        fOn = function() tfm.exec.disableAutoScore(false) end,
        fOff = function() tfm.exec.disableAutoScore(true) end},
    autoShaman = {on = 1, def = 1,
        des = lg.autoShaman_set,
        fOn = function() tfm.exec.disableAutoShaman(false) end,
        fOff = function() tfm.exec.disableAutoShaman(true) end},
    shamanSkills = {on = 1, def = 1,
        des = lg.shamanSkills_set,
        fOn = function() tfm.exec.disableAllShamanSkills(false) end,
        fOff = function() tfm.exec.disableAllShamanSkills(true) end},
    -- own settings / wlasne ustawienia
   
   
   
    -- end of own settings / koniec wlasnych ustawien          
}
 
-- moduly
module = {on = 0, play = ''}
modules = {
    racing = {name = 'Racing', maps = {3078,8679,82090,127419,129835,142101,142738,146364,146615,147437,149853,153201,155415,159076,159204,162804,164931,165808,169033,169909,178486,179656,180035,180617,181261,182233,185646,185955,185985,186484,186695,191070,197413,197442,197503,197742,199957,201502,201606,210217,211248,212576,212903,213470,214465,214788,215601,219889,220737,221767,222730,228517,233294,233333,235464,237251,238378,240994,244642,245152,247329,247904,248906,250491,250619,261462,266889,269131,269534,270645,274963,276098,280637,281784,284702,286087,292057,294500,298123,302456,303391,306755,313182,318970,321268,327447,329627,335361,337813,352622,353079,363635,364490,366205,369138,371072,371332,387110,402190,405795,417816,421885,422655,423989,424864,429339,433483,446627,446819,455094,466871,470069,482003,500133,505196,511007,520258,523865,547602,552213,557334,581408,611234,629731,639804,659216,667934,724780,763961,780286,847540,1053516,1107804,1190826,1193625,1222017,1222509,1252255,1368022,1429444,1481024,1502799,1550076,1556972,1563226,1662570,1683790,1698845,1699288,1855968,1864676,1931963,1943359,1958341,1970001,2006183,2019746,2188104,2208335,2223354,2227644,2261303,2262297,2311047,2355739,2378818,2419958,2439335,2444362,2458243,2558294,2589845,2598599,2616341,2675699,2708773,2746128,2805602,2808729,2813218,2827176,2842279,2847966,2870002,2929597,2932980,2959762,2959999,2960917,2969368,2972400,2973921,2978151,3008536,3014728,3051957,3117749,3124326,3124696,3224383,3237735,3270188,3279863,3297112,3314017,3373223,3407209,3425103,3432133,3452208,3464359,3469357,3497411,3512325,3526384,3560912,3586018,3603116,3605217,3671328,3710926,3714605,3723142,3779546,3865524,3866374,4116927,4140588,4148686,2283,2806,3154,72339,103182,107544,112790,114122,117548,120152,122911,124359,130763,136966,138036,138678,140850,144468,144677,145020,145762,146801,147436,148424,150692,152299,155168,156685,156847,157590,158128,159351,160762,161730,163682,164802,165112,165747,165843,166705,167941,168776,169065,169892,171152,176263,177236,177813,178545,178657,179339,179541,180191,180255,180274,180469,180509,180619,181312,184110,184924,185760,185774,186604,190026,191201,191716,191749,191753,192391,192566,193009,193588,193936,195720,196433,196468,196574,197219,197501,198549,198715,199219,201323,201442,206810,208058,208162,208914,209315,209708,209799,210188,211041,211528,211565,211885,212542,213331,213697,213933,214037,214660,214775,215938,216439,216505,216553,216735,217282,217881,217900,219548,220500,221564,222098,223293,223810,223986,224441,225017,226069,226879,226883,227417,227851,228462,229814,229827,229830,229834,229835,229944,230510,230741,231254,231694,231905,232140,232274,232451,232699,232791,233230,233345,233398,233687,234039,234502,234959,235034,235501,235651,236146,237000,237041,237263,237269,237278,237281,237297,237321,237744,237759,238380,238791,239826,239880,240544,240548,240973,241211,241295,242708,243279,244006,244699,244888,245223,246790,246973,247815,247818,248098,250610,250634,251459,252033,252759,252806,253883,254291,255098,255542,255893,258717,259604,259716,259833,260024,260292,260338,260377,260384,260478,260678,261078,261172,261720,261959,262144,262212,262239,263163,263182,263624,263907,264132,264232,264348,265221,266704,266765,266807,266854,266913,266930,267187,267597,268985,269337,270668,270819,271523,273434,274321,275017,275514,277687,277784,278506,278916,279100,279256,280382,280896,281730,282101,282434,282694,283526,283715,283874,284299,285752,286333,287268,289821,291628,292348,292614,293065,294522,294943,299002,299503,299971,300055,301315,302936,304356,305677,306213,308280,308435,308694,308711,308729,308992,309029,309057,309169,309834,312713,313245,314159,314205,315801,316289,317696,317754,317779,318378,318813,319524,319841,321339,321712,321814,321906,322771,323085,323115,323366,323600,324355,325172,326032,326192,326585,327254,327266,330441,332210,332290,332467,333277,333656,333714,333837,335507,337581,337774,339272,339418,339643,339896,340069,340901,341116,341239,343048,344361,344865,344952,345257,345312,345943,348479,348801,349140,349389,349984,350251,350519,352381,352710,352885,354616,354878,355658,355676,355769,355957,356722,356982,357328,357428,357629,359055,359521,359901,360201,360271,360273,360365,361382,361852,362549,363411,363625,363638,363822,364186,364998,365315,365464,365652,365774,367520,369160,369230,370444,370850,371076,371078,372970,373511,375381,378826,379326,379550,379745,379866,381043,381287,381305,381569,381669,382977,384206,384869,385203,385295,386029,386046,386959,387012,387180,387270,387290,387638,389582,391625,391693,391831,391868,391990,392446,392492,392913,393675,393851,394890,395459,395585,395607,395638,396223,396332,396347,396645,396861,397093,397296,397501,397812,397938,398011,398041,398081,398942,399633,399673,400429,400666,401443,401778,401945,401995,402214,402239,402453,402936,403698,403910,404440,404590,405075,405295,405339,405497,405679,405833,405955,406266,406486,406881,406982,407165,407230,407294,407455,407457,407488,407495,407536,407686,407746,408978,409199,410230,410532,410565,410608,410736,410813,412211,412316,412657,412752,413408,414188,414460,414899,416015,416142,416552,418022,418196,418265,418293,418323,418337,418600,418606,418658,419374,419735,420806,420956,421302,421717,422361,422580,422939,423062,423449,423517,423672,424361,424786,424795,425030,425044,425215,425349,425548,425600,425771,425797,425806,426638,427300,428517,429262,429822,429897,430145,430219,430736,431142,431373,431887,433937,434887,436041,436107,436447,437860,438154,440676,441047,441376,441598,443309,444490,444830,444964,445133,445219,447556,448281,453701,455167,459349,463195,463977,465205,468260,470687,470727,471053,472379,472665,475151,475790,477370,477603,480023,482951,483924,484992,494706,496091,496945,499109,499682,499684,499687,500074,501428,501711,501916,504409,504461,504704,504951,505109,505963,506215,507308,507325,508106,508451,509047,509082,510194,511187,511275,512291,512927,514510,514982,517005,517697,523046,528428,531569,536235,537776,538116,545493,549470,551126,556253,556426,558790,563183,563484,564033,566347,566438,571144,580031,583056,583715,586622,586688,587458,590641,592204,594049,594883,595447,603381,606719,606723,608459,610137,611320,613985,616373,616433,620996,624098,624721,627609,634945,639649,645288,646968,658464,664949,667920,669031,670226,694900,704015,734476,737824,737841,749102,759128,763371,763378,789058,792062,798953,813156,824082,829657,838069,846805,849224,879616,905496,972616,976721,976786,979179,982242,996947,1015436,1015582,1019378,1033170,1034035,1051378,1051384,1058681,1085530,1102815,1130728,1132357,1132639,1142116,1143815,1144548,1162611,1167153,1167734,1172426,1174107,1195842,1208798,1208979,1210037,1214182,1216253,1221661,1222899,1229246,1231216,1234914,1249601,1252122,1253523,1255130,1255148,1256845,1262248,1281700,1281981,1286910,1307880,1311059,1321417,1321664,1341396,1346440,1351308,1352534,1358446,1359797,1364063,1368222,1368233,1371239,1371294,1372941,1373000,1373748,1375345,1378209,1393405,1394120,1398732,1404417,1405249,1405496,1416040,1425101,1428436,1445160,1448760,1450554,1453667,1471124,1483155,1487161,1490438,1491022,1492120,1495344,1503393,1504586,1506007,1509474,1512355,1513407,1525272,1531388,1538895,1539515,1539791,1542618,1542736,1555532,1555862,1556661,1564762,1567620,1573213,1573997,1580508,1583655,1586439,1587904,1588884,1589026,1591471,1592767,1595600,1595610,1597594,1600443,1601492,1601786,1601857,1602654,1603050,1605364,1608259,1608638,1609978,1611631,1612436,1612796,1613550,1613927,1614563,1618110,1619934,1621611,1622737,1623300,1628732,1629164,1632294,1632541,1632706,1632746,1634741,1637638,1639996,1643157,1644638,1646120,1648583,1651658,1654096,1654105,1654841,1654903,1657021,1657360,1658171,1659639,1659716,1661852,1663380,1663415,1665249,1665516,1665775,1669046,1673174,1674534,1675083,1678717,1687268,1689382,1692628,1693705,1694602,1703617,1705316,1716693,1716949,1718723,1724289,1728943,1749434,1751944,1759287,1768347,1778687,1787232,1787239,1794287,1802907,1841744,1845710,1848032,1851411,1851568,1851968,1856349,1862800,1862823,1873736,1923785,1924227,1926831,1927270,1932796,1951856,1952851,1954369,1954898,1956002,1956555,1964700,1964752,1965819,1973574,1975275,1975286,1975684,1975753,1976007,1976857,1979131,1982476,1985019,1987990,2005559,2007170,2007205,2007295,2012147,2018511,2023552,2030343,2046467,2047177,2048474,2068543,2070768,2076632,2079190,2089069,2098621,2101747,2106576,2118599,2134537,2138401,2139408,2141379,2144010,2149382,2150335,2174319,2176620,2180790,2185089,2194041,2214661,2219308,2223685,2228834,2245005,2255210,2262476,2286056,2287914,2331474,2347666,2372538,2378820,2393139,2417713,2424058,2453022,2509175,2527934,2536577,2538131,2546484,2557885,2564883,2577060,2580114,2582610,2586491,2588032,2617003,2645615,2682985,2683170,2686505,2725924,2726034,2794075,2796001,2813487,2816067,2840770,2854246,2868414,2883986,2894072,2928081,2953315,2981609,2988325,2989266,2991507,2992312,3008155,3026533,3029580,3036416,3120368,3123384,3142015,3156569,3175920,3203738,3209087,3213562,3249833,3267620,3347209,3408247,3444803,3447108,3453351,3469987,3504036,3517347,3518418,3535192,3537419,3544895,3548376,3548378,3548406,3549484,3549627,3549840,3556405,3556489,3556690,3572407,3574927,3575034,3575108,3575170,3575216,3575293,3575425,3575463,3579335,3579476,3582577,3584275,3584689,3592471,3594130,3595900,3603799,3603802,3603809,3604799,3607846,3611885,3613029,3617674,3620542,3630433,3631748,3637041,3638794,3639993,3644272,3652003,3652102,3654416,3662698,3667358,3668754,3669358,3670084,3674997,3676141,3676555,3679397,3679666,3679884,3680180,3680220,3680221,3680223,3682405,3683201,3683224,3683294,3683383,3683393,3683520,3683600,3684229,3684455,3684457,3684465,3684784,3684802,3685352,3685382,3685486,3688419,3690578,3691609,3691622,3693822,3696662,3700155,3700684,3702767,3705931,3706599,3712183,3716560,3721990,3727755,3728013,3737576,3738767,3778389,3799507,3799857,3799951,3801780,3816622,3818249,3821104,3832217,3834905,3845214,3847244,3854268,3857914,3877599,3889414,3901403,3909339,3912540,3931290,3946626,3948683,3953320,3953425,3967150,3967250,3970909,3974317,3984750,3985806,3986301,3988460,3992276,3992671,3994471,3999981,4003729,4024450,4029729,4035194,4049042,4059294,4088014,4088129,4091580,4103460,4119705,4142205,4146225,4148332,4174318,4174320,4212491,4229660,4230149,4234534,4238784,4271298,4323335,4337892,4338921},
        help = [[
    !mode normal/drunk
]],
        func = function(self)
            self.mode = 'normal'
            tfm.exec.newGame(self.maps[math.random(#self.maps)])
            tfm.exec.disableAutoNewGame(true)
            tfm.exec.disableAutoShaman(true)
            tfm.exec.disableAutoTimeLeft(true)
        end,
        off = function(self)
            tfm.exec.disableAutoNewGame(false)
            tfm.exec.disableAutoShaman(true)
            tfm.exec.disableAutoTimeLeft(false)
        end,
        eventLoop = function(self, t1, t2)
            if self.mode == 'drunk' then
                if math.random(5) == 1 then
                    for key,val in pairs(tfm.get.room.playerList) do
                        x = math.random(-50, 50)
                        if x ~= 0 then
                            tfm.exec.movePlayer(key, 0, 0, true, math.random(-50, 50), 0, true)
                        end
                    end
                end
            end
            if t2<=0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
        eventPlayerWon = function(self, name)
            local i=0
            for k,v in pairs(tfm.get.room.playerList) do
                if not v.isDead then
                    i=i+1
                end
            end
            if i==0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
        eventPlayerDied = function(self, name)
            local i=0
            for k,v in pairs(tfm.get.room.playerList) do
                if not v.isDead then
                    i=i+1
                end
            end
            if i==0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
        eventChatCommand = function(self, name, msg)
            if msg == 'mode drunk' then
                self.mode = 'drunk'
            elseif msg == 'mode normal' then
                self.mode = 'normal'
            end
        end,
        eventNewGame = function(self)
            tfm.exec.setGameTime(63)
        end
    },
    survivor = {name = 'Simple survivor', maps = {276534,279689,280120,280159,281431,281479,281492,281649,289932,289964,290388,290546,290725,290865,290971,290974,291399,291643,292592,292672,292678,293222,293487,295988,296033,299123,300404,302224,304198,304482,305748,305753,306106,306360,306382,307930,311496,390383,390386,390649,390657,391057,391643,391664,391738,392616,392646,393406,395246,397066,459284,464787,478116,479091,481676,489470,489829,490248,492283,495880,500312,521931,540495,573817,697561,741041,770675,787131,793117,797964,799141,802958,802975,803074,811211,848697,852617,866256,908739,937383,958881,1026249,1277941,1388662,1463332,1492805,1514928,1515058,1519483,1522692,1525486,1528388,1533333,1533374,1539148,1543937,1545834,1659906,1661909,1794873,1794907,1812056,2387888,2408376,2526952,2732060,2842113,2931068,2939549,3061252,3067251,3107377,3146721,3175437,3295213,3322939,3349286,3400319,3419948,3473722,3480467,3540608,3549404,3550350,3584123,3584826,3587860,3620709,3670885,3685564,3699989},
        func = function(self)
            tfm.exec.newGame(self.maps[math.random(#self.maps)])
            tfm.exec.disableAutoNewGame(true)
        end,
        off = function(self)
            tfm.exec.disableAutoNewGame(false)
        end,
        eventLoop = function(self, t1, t2)
            if t2<=0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
        eventPlayerDied = function(self, name)
            local i=0
            for k,v in pairs(tfm.get.room.playerList) do
                if not v.isDead then
                    i=i+1
                end
            end
            if i==0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
    },
   
    vampire = {name = 'Vampire survivor', maps = {258972,334445,423793,615791,760329,812007,946893,955523,1296883,1542025,1638989,1676629,1782151,2389613,2393716,2403639,2428213,2429313,2435372,2541364,2561153,2563004,2680717,2683284,2686097,2693083,2761246,2821033,2910904,2929496,2938327,2940045,2944932,2951616,2953590,2956031,2956156,2971085,2975699,2976059,2983430,2986318,2999898,3001393,3006311,3020988,3027934,3032840,3033710,3044452,3057493,3061098,3068111,3069138,3079426,3090849,3101671,3103683,3105156,3110659,3119050,3120924,3128337,3140275,3167932,3170618,3187755,3195331,3197349,3225462,3240230,3270111,3292389,3296041,3333339,3334083,3337200,3359267,3377553,3430472,3435288,3460936,3482009,3485896,3488764,3509662,3515991,3611033,3745155,3745168,3808004,3946003},
        func = function(self)
            tfm.exec.newGame(self.maps[math.random(#self.maps)])
            tfm.exec.disableAutoNewGame(true)
        end,
        off = function(self)
            tfm.exec.disableAutoNewGame(false)
        end,
        eventLoop = function(self, t1, t2)
            if t2<=0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
            local i=0
            for k,v in pairs(tfm.get.room.playerList) do
                if not v.isDead then
                    i = i+1
                end
            end
            local x = 0
            for k,v in pairs(tfm.get.room.playerList) do
                if v.isVampire then
                    x = x+1
                end
            end
            if i == 0 or x == i then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
    },
    bootcamp = {name = 'Bootcamp', maps = {155517,156510,159116,159145,167333,170007,175454,176615,177652,186855,187035,195453,197368,212322,215933,229974,235717,249760,253469,255943,257092,258289,259854,266398,277631,277835,280949,281668,281985,285589,285961,292668,292808,293658,294478,295487,296020,298424,301559,305680,313138,313214,322922,330590,342640,343875,346684,353356,357837,366809,368585,371579,374995,392861,431873,503679,507341,507884,515684,544695,549759,554154,591528,593003,597348,597804,621850,639878,651656,655207,658960,720672,733146,763368,814311,1102513,1110982,1134969,1296299,1350382,1526368,1533335,1584555,1610638,1636814,1642725,1646448,1657819,1705006,1719709,1737297,1737800,1737914,1766343,1802012,1802528,1828801,1830551,1852910,1853529,1853689,1869912,1872179,1949730,1951944,1952415,1962695,2009003,2031184,2033229,2036898,2050389,2080400,2082776,2128560,2132250,2176211,2202628,2208924,2239788,2242899,2252731,2297260,2309030,2341982,2346943,2357991,2362046,2378364,2395201,2420714,2427910,2432090,2444812,2448730,2466489,2474044,2484316,2574744,2574960,2601214,2636207,2643916,2668918,2669415,2673019,2682583,2692883,2693344,2693587,2704483,2707566,2708585,2718406,2719419,2738370,2747525,2750014,2758747,2772507,2777168,2789121,2797076,2803483,2805938,2811229,2812309,2817711,2818330,2819876,2828481,2844637,2850177,2854813,2858882,2860211,2860683,2869337,2877042,2884392,2887929,2890123,2901717,2914456,2917286,2918822,2920826,2925531,2925762,2933011,2933215,2933390,2941840,2945156,2947140,2961800,2963166,2967631,2974387,2996951,2998268,2999994,3000006,3003490,3008319,3008515,3012178,3012311,3016226,3023941,3024238,3024606,3034308,3041105,3042080,3043779,3053202,3062939,3075090,3076903,3085218,3089270,3099302,3118161,3118286,3133917,3137929,3142783,3146209,3149125,3161324,3163166,3164813,3182006,3182487,3185979,3200001,3219400,3225624,3241030,3242050,3243455,3250426,3264848,3278138,3281758,3292308,3293485,3295954,3295960,3311534,3330219,3337127,3338283,3343092,3343148,3374634,3386996,3395605,3399831,3402881,3404894,3424529,3428069,3430712,3434941,3447134,3459986,3463050,3471016,3473704,3473925,3478040,3483300,3484437,3491601,3493456,3493490,3500755,3513929,3521460,3526517,3527399,3530999,3535850,3547571,3560999,3561333,3571256,3576303,3588395,3603631,3619320,3637540,3645415,3659983,3668877,3690128,3702819,3707630,3725142,3734988,3734989,3734990,3734991,3734996,3734997,3734998,3734999,3745158,3747520,3750360,3759157,3767893,3768117,3779861,3780618,3799357,3804078,3815568,3820467,3820501,3826546,3846632,3849999,3860578,3866660,3866663,3875019,3920916,3937567,3938895,3944386,3944814,3958217,3959785,3964892,3969628,3976725,3976766,3995343,3999991,3999992,3999997,4000007,4000008,4000009,4019421,4027263,4038388,4039451,4058168,4093488,4107909,4121359,4237910,4241333,4283009,113156,124000,149422,149451,150607,150651,150664,151655,152260,152733,153996,155480,155606,155611,155628,155765,156720,157004,157203,157805,157960,158345,158417,158909,159131,159187,159298,159932,160841,161023,161434,162482,163094,163159,163172,163506,163531,163596,164544,164916,165186,166032,166037,166056,166271,166333,166361,166430,166805,167075,167903,168204,168754,169059,169076,169110,169139,169228,170514,171148,171480,171482,171776,172501,172512,172520,172547,172605,172621,172951,172976,173623,173816,174223,175204,175280,176253,176507,176619,176710,176729,179005,179488,179492,179807,180801,182370,182769,183139,183141,184648,184817,184868,185289,185428,185529,185873,185887,186066,186220,186378,189819,190646,190996,191177,191203,191205,191443,191642,192158,192959,193662,195116,197229,198988,199210,199710,199826,201000,202574,203664,204488,204647,205240,205506,206396,208056,208373,208653,208940,209848,213752,213755,213874,214631,214755,216171,216173,217261,220352,222377,222910,223174,223947,224108,225744,226266,230588,231137,231921,232469,232678,235037,236768,237091,250153,254785,257218,257324,257715,258160,258192,258908,259319,261298,261814,263819,263926,264091,268915,270143,270924,271193,271411,272402,272518,272689,277427,277513,277824,279337,281948,282584,284134,286254,289865,290824,295630,295932,297442,299942,299983,301610,302080,303151,303939,304861,305567,305614,305705,305820,306365,306384,306655,307324,313216,314743,315666,315800,316012,318129,319443,320483,320626,322582,327354,327743,329200,329318,329571,330933,330967,331344,331988,332130,332906,333002,336305,337644,342035,343456,354984,361500,365061,368839,372255,372419,373105,375455,376704,378704,380516,383358,391924,392240,393426,394132,395216,395310,395961,397467,397469,397478,398116,399364,401630,403755,403940,406154,408577,408643,410040,410045,412467,412913,419335,419369,419635,420877,422981,423311,424604,424685,424900,425747,425884,431433,431749,432501,435812,438333,438364,438449,439092,444589,447805,449496,454049,455271,457726,458528,460961,467137,476706,478236,482791,492222,492399,496610,496886,497965,499986,500000,500690,500748,500894,504485,505619,506032,506613,506940,510996,511136,512887,514311,522719,523270,528032,531084,536905,541223,541693,541729,543010,551317,552986,556575,556841,556973,557066,557074,560526,560583,562897,563436,564198,568122,571683,574183,575497,584783,586901,587501,592189,593164,593204,593431,593530,596239,598845,605255,608368,612415,618999,654894,684566,692650,692740,698992,721319,722837,729863,758595,783547,801683,815336,834297,842019,842167,868262,881158,898934,912356,914570,919484,970919,976944,999963,1000006,1004622,1014313,1018394,1046877,1066607,1111252,1130256,1156092,1157281,1162831,1164086,1226207,1242584,1255359,1256085,1265789,1301649,1303323,1323048,1333846,1383297,1384078,1390405,1398609,1403454,1410539,1413528,1427980,1435902,1494499,1503203,1526894,1531604,1540221,1580356,1580835,1593066,1595965,1615753,1615949,1620703,1647131,1678634,1722755,1733211,1788490,1807217,1809410,1923584,1955745,1989803,1990413,2024960,2040569,2130169,2178800,2311703,2329940,2416969,2423300,2451444,2469365,2520540,2636519,2788517,2794566,2795201,2846829,2989803,3038589,3136410,3199998,3242049,3295967,3326197,3333223,3380788,3456260,3551333,3668866,3668888,3690269,3907267,3908151,3988424,4067327,4074214},
        help = [[
    !s or !ss to save position
    !l or l key to load
    !new to new map
]],
        func = function(self)
            self.save = {}
            for k,v in pairs(tfm.get.room.playerList) do
               eventNewPlayer(k)
            end
            system.disableChatCommandDisplay('ss', true)
            system.disableChatCommandDisplay('s', true)
            system.disableChatCommandDisplay('l', true)
            tfm.exec.disableAutoShaman(true)
            tfm.exec.disableAutoNewGame(true)
            tfm.exec.disableAutoTimeLeft(true)
            tfm.exec.disableAfkDeath(true)
            tfm.exec.newGame(self.maps[math.random(#self.maps)])
        end,
        off = function(self)
            tfm.exec.disableAutoShaman(false)
            tfm.exec.disableAutoNewGame(false)
            tfm.exec.disableAutoTimeLeft(false)
            tfm.exec.disableAfkDeath(false)
            system.disableChatCommandDisplay('ss', false)
            system.disableChatCommandDisplay('s', false)
            system.disableChatCommandDisplay('l', false)
        end,
        eventLoop = function(self, t1, t2)
            if t2<=0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
        eventPlayerDied = function(self, name)
            tfm.exec.respawnPlayer(name)
        end,
        eventPlayerWon = function(self, name)
            tfm.exec.respawnPlayer(name)
        end,
        eventNewPlayer = function(self, name)
            tfm.exec.respawnPlayer(name)
            tfm.exec.bindKeyboard(name,76,true,true)
        end,
        eventNewGame = function(self)
            tfm.exec.setGameTime(300)
            self.save = {}
        end,
        eventChatCommand = function(self, name, msg)
            if msg == 's' or msg == 'ss' then
                if not self.save[name] then
                    self.save[name] ={}
                end
                self.save[name].x = tfm.get.room.playerList[name].x
                self.save[name].y = tfm.get.room.playerList[name].y
                self.save[name].cheese = tfm.get.room.playerList[name].hasCheese
            elseif msg == 'l' then
                if self.save[name] then
                    tfm.exec.movePlayer(name, self.save[name].x, self.save[name].y)
                    if self.save[name].cheese then
                        tfm.exec.giveCheese(name)
                    end
                end
            elseif msg == 'next' then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
        end,
        eventKeyboard = function(self, name, key, down, x, y)
            if key == 76 then
                if self.save[name] then
                    tfm.exec.movePlayer(name, self.save[name].x, self.save[name].y, false, 1, 1)
                    if self.save[name].cheese then
                        tfm.exec.giveCheese(name)
                    end
                end
            end
        end,
    },
    ffa = {name = 'Free for all', author = 'Shamousey', maps={521833,401421,541917,541928,541936,541943,527935,559634,559644,888052,878047,885641,770600,770656,772172,891472,589736,589800,589708,900012,901062,754380,901337,901411,907870,910078,1190467,1252043,1124380,1016258,1252299,1255902,1256808,986790,1285380,1271249,1255944,1255983,1085344,1273114,1276664,1279258,1286824,1280135,1280342,1284861,1287556,1057753,1196679,1288489,1292983,1298164,1298521,1293189,1296949,1308378,1311136,1314419,1314982,1318248,1312411,1312589,1312845,1312933,1313969,1338762,1339474,1349878,1297154,644588,1351237,1354040,1354375,1362386,1283234,1370578,1306592,1360889,1362753,1408124,1407949,1407849,1343986,1408028,1441370,1443416,1389255,1427349,1450527,1424739,869836,1459902,1392993,1426457,1542824,1533474,1561467,1563534,1566991,1587241,1416119,1596270,1601580,1525751,1582146,1558167,1420943,1466487,1642575,1648013,1646094,1393097,1643446,1545219,1583484,1613092,1627981,1633374,1633277,1633251,1585138,1624034,1616785,1625916,1667582,1666996,1675013,1675316,1531316,1665413,1681719,1699880,1688696,623770,1727243,1531329,1683915,1689533,1738601,3756146,912118,3326933,3722005,3566478,1456622,1357994,1985670,1884075,1708065,1700322,2124484,3699046,2965313,4057963,4019126,3335202,2050466},
        func = function(self)
            tfm.exec.disableAutoNewGame(true)
            tfm.exec.disableAutoShaman(true)
            self.players={}
            self.toDespawn={}
            for name,player in pairs(tfm.get.room.playerList) do
                eventNewPlayer(name)
            end
 
            tfm.exec.newGame(self.maps[math.random(#self.maps)])
        end,
        off = function(self)
            tfm.exec.disableAutoNewGame(false)
            tfm.exec.disableAutoShaman(false)
            tfm.exec.newGame()
        end,
        eventNewPlayer = function(self, name)
            for i,key in pairs({32,40,83}) do
                tfm.exec.bindKeyboard(name,key,true,true)
            end
            self.players[name]={
                timestamp=os.time(),
                offsets={x=2, y=10}
            }
        end,
        eventKeyboard = function(self, name,key,down,x,y)
            if (key==32 or key==40 or key==83) and not tfm.get.room.playerList[name].isDead and self.started then
                if self.players[name].timestamp < os.time()-1000 then
                    local id
                    if tfm.get.room.playerList[name].isFacingRight then
                        id=tfm.exec.addShamanObject(19,x+self.players[name].offsets.x,y+self.players[name].offsets.y)
                    else
                        id=tfm.exec.addShamanObject(20,x+self.players[name].offsets.x,y+self.players[name].offsets.y)
                    end
                    self.players[name].timestamp=os.time()
                    table.insert(self.toDespawn,{os.time(),id})
                end
            end
        end,
        eventNewGame = function(self)
            self.started=false
        end,
        eventLoop = function (self, t1,t2)
            if t1 >= 3000 and not started then
                self.started=true
            end
            if t2<=0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            end
            for i,cannon in ipairs(self.toDespawn) do
                if cannon[1] <= os.time()-3000 then
                    tfm.exec.removeObject(cannon[2])
                    table.remove(self.toDespawn,i)
                end
            end
        end,
        eventPlayerDied = function(self, name)
            local i=0
            local n
            for pname,player in pairs(tfm.get.room.playerList) do
                if not player.isDead then
                    i=i+1
                    n=pname
                end
            end
            if i==0 then
                tfm.exec.newGame(self.maps[math.random(#self.maps)])
            elseif i==1 then
                tfm.exec.giveCheese(n)
                tfm.exec.playerVictory(n)
                tfm.exec.setGameTime(5)
            end
        end,
    },
    -- own modulese / wlasne moduly
   
   
   
    -- end of own modulese / koniec wlasnych modulów
}
 
---- sortowanie tablic (skopiowane)
function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end
    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end
    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end
 
-- sparwdzanie czy admin
function isAdmin(nick)
    for key, val in pairs(admins) do
        if val == nick then
            return true
        end
    end
    return false
end
 
---- sprawdzanie komend
function cmd(com, args, nick)
    if commands[args[1]] then
        if not commands[com].arg2 then
            commands[com].arg2 = commands[com].arg
        end
        if  commands[com].on == 1 and (((#args - 1) >= commands[com].arg and (#args - 1) <= commands[com].arg2) or commands[com].arg == -1) then
            if commands[com].admin == 1 then
                for key,val in pairs(admins) do
                    if val == nick then
                        commands[com].func(nick, args)
                        return true
                    end
                end
                return false
            elseif commands[com].admin == 2 then
                for key,val in pairs(superAdmin) do
                    if val == nick then
                        commands[com].func(nick, args)
                        return true
                    end
                end
                return false
            end
            commands[com].func(nick, args)
            return true
        end
    end
    return false
end
 
---- BBcode
function bbcode(text)
    text = string.gsub(text, "%[(.?)b%]", "<%1b>")
    text = string.gsub(text, "%[(.?)i%]", "<%1i>")
    text = string.gsub(text, "%[(.?)u%]", "<%1u>")
    text = string.gsub(text, "%[/color%]", "</font>")
    text = string.gsub(text, '%[color=#?(......)%]', '<font color="#%1">')
    return text
end
 
---- wyswietlanie komunikatów
function message(nick, msg, color)
    local nick2 = nick
    if nick == 'all' then
        nick2 = nil
    end
    if color == 'red' then
        cr = '#CB546B'
    elseif color == 'green' then
        cr = '#2ECF73'
    elseif color == 'blue' then
        cr = '#2F7FCC'
    end
    ui.addTextArea(2, '<font color="'..cr..'">'..msg..'</font>', nick2, 10, 30, 300, 18, nil, nil,0.9)
    timer[nick] = {}
    timer[nick].tim = 4
    timer[nick].make = function() ui.removeTextArea(2, nick2) end
end
 
---- terazniejszy czas
function time()
    local utc = 2
    local h = math.floor(os.time()/1000%86400/60/60) + utc
    local m = math.floor(os.time()/1000%86400/60%60)
    local s = math.floor(os.time()/1000%86400%60%60)
 
    if h >= 24 then h = h -24 end
    if h < 10 then h = '0'..h end
    if m < 10 then m = '0'..m end
    if s < 10 then s = '0'..s end
    return h..':'..m..':'..s
end
 
---- licz spacje
function countSpace(nr, text, d, o)
    local xx = nr - string.len(text)
    if d ~= nil then
        xx  = xx/d
    end
    if o ~= nil then
        xx = xx - string.len(o)
    end
    local space = ' '
    for i=2,xx,1 do
        space = space..' '
    end
    return space
end
 
---- show Help
function showHelp(nick, kx, ky)
    local space = countSpace(48, ' ['..lg.refresh..']['..lg.close..']')
    local text = '<font face="Courier"><font color="#5DB9D8"><a href="event:move 1">=</a>'..space..'<a href="event:refresh 1">['..lg.refresh..']</a><a href="event:close">['..lg.close..']</a></font></font>\n'..lg.help
    if kx == nil and ky == nil then
        kx, ky = 200, 40
    end
    if module.on == 1 then
        local h = ''
        if modules[module.play].help then
            h = modules[module.play].help
        end
        text = text..'___________________________________________________\n\n<font size="12px"><b>'..lg.minigame..'</b></font> '..modules[module.play].name..'\n\n'..h
    end
    ui.addTextArea(8, text, nick, kx, ky, 400, 300, nil, nil,0.6)
 
 
end
 
---- Pokaz kolejke map
function showQueue(nick, kx, ky)
    if kx == nil and ky == nil then
        kx, ky = 250, 40
    end
    if settings.queue.on == 0 then
        kolejka = '<font color="#EB1D51">'..lg.disabled..'</font>'
    else
        kolejka = '<VP>'..lg.enabled
    end
    local space = countSpace(38, ' ['..lg.refresh..']['..lg.close..']')
    local napis = '<font face="Courier"><font color="#ED67EA"><a href="event:move 1">=</a>'..space..'<a href="event:refresh 1">['..lg.refresh..']</a><a href="event:close">['..lg.close..']</a></font>\n'
    napis = napis..'<p align="center"><font  size="20px" color="#ffffff">'..lg.maps_queue..'</font></p>'..lg.queuing..' '..kolejka..'\n<n>'..lg.played..' <j>'..mapNumber..'<n> '..lg.maps2..'\n'
    local x = 1
    for key,val in pairs(maps) do
        if key > mapNumber then
            local space = countSpace(37,x..'. '..maps[key].name..' - '..maps[key].nick..'['..lg.delete..']')           
            napis = napis..'<n>'..x..'. <vp>'..maps[key].name..'<n> - <t>'..maps[key].nick..space..'<a href="event:delmap '..key..'"><font color="#CB546B">['..lg.delete..']</font></a>\n'
            x = x+1
        end
    end
    ui.addTextArea(1, napis, nick, kx, ky, 300, 300, nil, nil,0.6)
end
 
---- pokaz opcje
function options(nick, kx, ky)
    if kx == nil and ky == nil then
        kx, ky = 10, 40
    end
    local adm = ' '
    local add = ' '
    for key,val in pairs(admins) do
        adm = adm..'<font color="#BABD2F">'..val..'</font>, '
        add = add..val..', '
    end
    local space = countSpace(96 , ' ['..lg.refresh..']['..lg.close..']')
    local space2 = countSpace(95 , lg.admins..':'..add..'  - '..lg.enabled..'    - '..lg.disabled)
    local text = [[<font face="Courier"><a href="event:move 6">=</a>]]..space..[[<a href="event:refresh3">[]]..lg.refresh..[[]</a><a href="event:close">[]]..lg.close..[[]</a></font>
<p align="center"><font size="19px">]]..lg.settings..[[</font></p>]]..[[
 
<font face="Courier">]]..lg.admins..[[:]]..adm..space2..[[<font color="#40B033">¦ - ]]..lg.enabled..[[</font>  <font color="#E33D3D">¦ - ]]..lg.disabled..[[</font></font>
]]
    local color
    x = 1
    for key,val in spairs(settings) do
        local onOff
        if val.on == 1 then
            color  = '#40B033'
            onOff='[<a href="event:set off '..key..'"><font color="#E33D3D">'..lg.enable..'</font></a>]'
        else
            color  = '#E33D3D'
            onOff='[<a href="event:set on '..key..'"><font color="#40B033">'..lg.disable..'</font></a>]'
        end
        if not isAdmin(nick) then onOff = ''end
        local line = onOff..' <font color="'..color..'">'..key..'</font>  - '..val.des..'\n'
       
        text = text..line
       
        x = x+1
    end
    text = text..'\n<font color="#ED67EA"><a href="event:stat_reset">['..lg.reset_settings..']</a></font>'
    ui.addTextArea(6, text, nick, kx, ky, 780, 335, 0x424C6B, nil,0.7)
end
 
---- pokaz liste komend
function showCmd(nick, kx, ky)
    if kx == nil and ky == nil then
        kx, ky = 10, 40
    end
    local adm = ' '
    local add = ' '
    for key,val in pairs(admins) do
        adm = adm..'<font color="#BABD2F">'..val..'</font>, '
        add = add..val..', '
    end
   
    local space = countSpace(96 , ' ['..lg.refresh..']['..lg.close..']')
    local space2 = countSpace(96 , lg.admins..': '..add..'  - '..lg.enabled..'    - '..lg.disabled..'  * - '..lg.for_admins)
    local text = [[<font face="Courier"><a href="event:move 3">=</a>]]..space..[[<a href="event:refresh3"><font color="">[]]..lg.refresh..[[]</font></a><a href="event:close"><font color="">[]]..lg.close..[[]</font></a>
<p align="center"><font size="19px">]]..lg.commands..[[</font></p>]]..lg.admins..[[:]]..adm..space2..[[<font color="#40B033">¦ - ]]..lg.enabled..[[</font>  <font color="#E33D3D">¦ - ]]..lg.disabled..[[</font>  <font color="#B32EAA">* - ]]..lg.for_admins..[[</font></font>]]
    local text1 = '<font face="Courier">'
    local text2 = '<font face="Courier">'
    local color
    x = 1
    for key,val in spairs(commands) do
        local arg = ''
        local arg2 = ''
        local star = ' '
        for i=1, val.arg, 1 do
            arg = arg..'&lt;arg'..i..'> '
        end
        if val.arg2 ~= nil then
            for i=1, val.arg2 - val.arg, 1 do  
                arg2 = arg2..'[arg'..i..'] '
        end end
        if val.admin == 1 then
            star = '<font color="#B32EAA">*</font>'
        end
        if val.on == 1 then
            color  = '#40B033'
        else
            color  = '#E33D3D'
        end
        local line = star..'<font color="'..color..'">!'..key..' '..arg..arg2..'- '..val.des..'</font>\n'
        if string.len('!'..key..arg..arg2..' - '..val.des) > 47 then
            x = x+1
        end
        if x>22 then
            text2 = text2..line
        else   
            text1 = text1..line
        end
        x = x+1
    end
    text1 = text1..'</font>'
    text2 = text2..'</font>'
 
    ui.addTextArea(3, text, nick, kx, ky, 780, 335, 0x424C6B, nil,0.9)
    ui.addTextArea(4, text1, nick, kx, ky+45, 385, 305, 0x000000, nil,0.6)
    ui.addTextArea(5, text2, nick, kx+395, ky+45, 385, 305, 0x000000, nil,0.6)
end
 
-- pokaz minigry
function showModules(nick, kx, ky)
    if kx == nil and ky == nil then
        kx, ky = 200, 40
    end
    local space = countSpace(49 , '  ['..lg.close..']')
    local text = [[<font face="Courier"><a href="event:move 7">=</a>]]..space..[[<a href="event:close">[]]..lg.close..[[]</a></font>
<font size="19px"><p align="center">]]..lg.minigames..[[</p></font>
<font color="#BABD2F">]]..lg.module_stop..[[</font>
 
 
]]
    local color
    x = 1
    for key,val in spairs(modules) do
        local author = ''
        if modules[key].author then
            author = ' by '..modules[key].author
        end
        text = text..'<font color="#40B033"><a href="event:module '..key..'">!module '..key..'</a></font> - '..modules[key].name..author..'\n'
    end
    ui.addTextArea(7, text, nick, kx, ky, 400, 335, 0x424C6B, nil, 0.7)
end
 
--
function modulePlay(nick, name)
    if commands.module.admin > 0 then
        if not isAdmin(nick) then
            return
        end
    end
    module.on = 1
    module.play = name
    message('all', lg.minigame..': '..modules[name].name, 'blue')
    if modules[name].func then
        modules[name]:func(args)
    end
 
end
 
-------- EVENTS --------
-- nowy gracz
function eventNewPlayer(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventNewPlayer then
            modules[module.play]:eventNewPlayer(nick)
        end
    else
        -- modules off
       
    end
    -- rest
    ui.addTextArea(0, ' ', nick, 10, 30, 1, 1, 0x56F73D, 0x56F73D, 0.5)
    system.bindMouse(nick,true)
    for key,val in pairs({27, 72, 73, 77, 79}) do
        tfm.exec.bindKeyboard(nick,val,true,true)
    end
    for key,val in pairs({72, 73, 77}) do
        tfm.exec.bindKeyboard(nick,val,false,true)
    end
   
end
 
 
 
-- eventPlayerDied
function eventPlayerDied(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerDied then
            modules[module.play]:eventPlayerDied(nick)
        end
    else
        -- modules off
       
    end
    if settings.autorespawn.on == 1 or house ~= nil then
        tfm.exec.respawnPlayer(nick)
    end
end
 
-- eventPlayerWon(String playerName)
function eventPlayerWon(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerWon then
            modules[module.play]:eventPlayerWon(nick)
        end
    else
        -- modules off
       
    end
    if house ~= nil then
        tfm.exec.respawnPlayer(nick)
    end
end
 
---- petla
function eventLoop(t1, t2)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventLoop then
            modules[module.play]:eventLoop(t1, t2)
        end
    else
        -- modules off
       
    end
    if wait ~= 0 then
        wait = wait -1
    end
    -- queue on, nowa mapa
    if settings.queue.on == 1 and #maps > mapNumber and t2 < t1 and wait == 0 then
        mapNumber = mapNumber +1
        if not tfm.exec.newGame(maps[mapNumber].code) then
            wait = 6
        end
    -- wszyscy martwi
    elseif settings.queue.on == 1 and wait == 0 then
        local dead = 1
        for key,val in pairs(tfm.get.room.playerList) do
            if not tfm.get.room.playerList[key].isDead then
                dead = 0
                break
            end
        end
        if dead == 1 then
            if #maps > mapNumber then
                mapNumber = mapNumber +1
                if not tfm.exec.newGame(maps[mapNumber].code) then
                    wait = 6
                end
            else
                tfm.exec.newGame(0)
            end
        end
    end
    -- komunikaty
    for key,val in pairs(timer) do
        if timer[key].tim == 0 then
            timer[key].make()
        else
            timer[key].tim = timer[key].tim - 1
        end
    end
    -- auto teleportacja
    for key,val in pairs(playerPosition) do
        local x = playerPosition[key].x
        local y = playerPosition[key].y
        tfm.exec.movePlayer(key, x, y, 0, -1,-1)
    end
    -- piesek
    for key,val in pairs(pet) do   
        local x = tfm.get.room.playerList[val].x
        local y = tfm.get.room.playerList[val].y
        tfm.exec.movePlayer(key, x, y, 0, -1,-1)
    end
end
 
-- klawiatura
function eventKeyboard(nick ,key ,down ,x ,y)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventKeyboard then
            modules[module.play]:eventKeyboard(nick ,key ,down ,x ,y)
        end
    else
        -- modules off
       
    end
    -- esc
    if key == 27 then
        for i=1, 10, 1 do
            ui.removeTextArea(i, nick)
        end
    -- m - modules
    elseif key == 77 then
        if down then
            showModules(nick)
        else
            ui.removeTextArea(7, nick)
        end
    -- o - opcje
    elseif key == 79 then
        options(nick)
    -- h - help
    elseif key == 72 then
        if down then
            showHelp(nick)
        else
            ui.removeTextArea(8, nick)
        end
    elseif key == 73 then
        if down then
            showCmd(nick)
        else
            ui.removeTextArea(3, nick)
            ui.removeTextArea(4, nick)
            ui.removeTextArea(5, nick) 
        end
    end
end
 
---- klikniecie
function eventMouse(nick, x, y)  
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventMouse then
            modules[module.play]:eventMouse(nick, x, y)
        end
    else
        -- modules off
       
    end
    -- przenoszenie menu
    if move[nick] ~= nil then
        if move[nick] == 6 then
            options(nick, x-8, y-8)
        elseif move[nick] ==  1 then
            showQueue(nick, x-8, y-8)
        elseif move[nick] == 3 then
            showCmd(nick, x-8, y-8)
        elseif move[nick] == 8 then
            showHelp(nick, x-8, y-8)
        elseif move[nick] == 7 then
            showModules(nick, x-8, y-8)
        end
        move[nick] = nil
    else
        -- tp
        for key,val in pairs(tp) do
            if key == nick then
                tpp[key] = nil
                playerPosition[key] = nil
                tfm.exec.movePlayer(val, x, y, 0, -1,-1)
                break
            end
        end
        -- tpp
        for key,val in pairs(tpp) do
            if key == nick then
                playerPosition[val] = {}
                playerPosition[val].x = x
                playerPosition[val].y = y
                break
            end
        end
    end
end
function name(i, nick)
    if #args < (i+1) then
        return nick
    else
        return args[i+1]
    end
end
---- !komendy
function eventChatCommand(nick, msg)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventChatCommand then
            modules[module.play]:eventChatCommand(nick, msg)
        end
    else
        -- modules off
       
    end
    -- log
    Log = '['..time()..'] '..nick..' - !'..msg..'\n'..Log
    -- dzielenie argumentów
    local args={}
    for arg in msg:gmatch("[^%s]+") do
        table.insert(args,arg)
    end
    rest = msg:match("%s(.*)") or ""
    -- wylaczenie dostepu dla tych z banem
    for key,val in pairs(ban) do
        for k,v in pairs(superAdmin) do
            if key == nick and val == true and nick ~= v then
                message(nick, lg.banned, 'red')
                return false
            end
        end
    end
    function name(i)
        if #args < (i+1) then
            return nick
        else
            return args[i+1]
        end
    end
    -------------
    cmd(args[1], args, nick)
   
end
 
---- odwolania z <a>
function eventTextAreaCallback(id, nick, callback)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventTextAreaCallback then
            modules[module.play]:eventTextAreaCallback(id, nick, callback)
        end
    else
        -- modules off
       
    end
    local args={}
    for arg in callback:gmatch("[^%s]+") do
        table.insert(args,arg)
    end
    -- zamykanie
    if callback == 'close' then
        if id == 3 then
            ui.removeTextArea(3, nick)
            ui.removeTextArea(4, nick)
            ui.removeTextArea(5, nick)
        else
            ui.removeTextArea(id, nick)
        end
    -- odswiezanie
    elseif args[1] == 'refresh' then
        if id == 1 then
            showQueue(nick)
        elseif id == 6 then
            options(nick)
        end
    -- ustawienia
    elseif args[1] == 'set' then
        if args[2] ==  'on' then
            settings[args[3]].on = 1
            settings[args[3]].fOn()
        else
            settings[args[3]].on = 0
            settings[args[3]].fOff()
        end
        options(nick)
    -- przenoszenie textarea
    elseif args[1] == 'move' then
        move[nick] = id
    -- resetowanie ustawien
    elseif args[1] == 'stat_reset' then
        for key,val in pairs(settings) do
            settings[key].on = settings[key].def
        end
        options(nick)
    -- !maps usuwanie
    elseif args[1] == 'delmap' then
        if isAdmin(nick) then
            table.remove(maps, args[2])
            showQueue(nick)
        end
    -- moduly
    elseif args[1] == 'module' then
        modulePlay(nick, args[2])  
    end
end
 
function eventEmotePlayed(nick, emoteId)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventEmotePlayed then
            modules[module.play]:eventEmotePlayed(nick, emoteId)
        end
    else
        -- modules off
       
    end
end
 
function eventPlayerGetCheese(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerGetCheese then
            modules[module.play]:eventPlayerGetCheese(nick)
        end
    else
        -- modules off
       
    end
end
 
function eventPlayerLeft(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerLeft then
            modules[module.play]:eventPlayerLeft(nick)
        end
    else
        -- modules off
       
    end
end
 
function eventPlayerVampire(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerVampire then
            modules[module.play]:eventPlayerVampire(nick)
        end
    else
        -- modules off
       
    end
end
 
function eventPlayerWon(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerWon then
            modules[module.play]:eventPlayerWon(nick)
        end
    else
        -- modules off
       
    end
end
 
function eventPlayerRespawn(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPlayerRespawn then
            modules[module.play]:eventPlayerRespawn(nick)
        end
    else
        -- modules off
       
    end
end
 
function eventPopupAnswer(id, nick, answer)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventPopupAnswer then
            modules[module.play]:eventPopupAnswer(id, nick, answer)
        end
    else
        -- modules off
       
    end
end
 
function eventSummoningStart(nick, objectType, x, y, angle)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventSummoningStart then
            modules[module.play]:eventSummoningStart(nick, objectType, x, y, angle)
        end
    else
        -- modules off
       
    end
end
 
function eventSummoningCancel(nick)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventSummoningCancel then
            modules[module.play]:eventSummoningCancel(nick)
        end
    else
        -- modules off
       
    end
end
 
function eventSummoningEnd(nick, objectType, x, y, angle, xSpeed, ySpeed, objectType, other)
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventSummoningEnd then
            modules[module.play]:eventSummoningEnd(nick, objectType, x, y, angle, xSpeed, ySpeed, objectType, other)
        end
    else
        -- modules off
       
    end
end
 
function eventNewGame()
    if module.on == 1 then
        -- modules on
        if modules[module.play].eventNewGame then
            modules[module.play]:eventNewGame()
        end
    else
        -- modules off
       
    end
end
 
-- wylaczenie widzialnosci komend
for k,v in pairs(commands) do
system.disableChatCommandDisplay(k, true)
end
 
-- wymuszenie nowego gracza
for playername,player in pairs(tfm.get.room.playerList) do
   eventNewPlayer(playername)
end
 
print 'Ultimate Tribe House Script loaded'
 
---- koniec skryptu