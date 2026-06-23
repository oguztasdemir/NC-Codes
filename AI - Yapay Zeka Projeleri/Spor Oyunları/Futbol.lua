-- =========================================================================
-- NC - AI Futbol Modülü (Yapay Zeka Kalecili & YKF Harita Destekli)
-- Geliştirici: AI & Oğuz Taşdemir (Devilstrk#5475)
-- İletişim: LinkedIn: linkedin.com/in/oguz-tasdemir-846889353 | IG: @_oguztasdemir
-- =========================================================================
-- HAKKINDA: Night Ball modülündeki popüler "ykf" (küçük futbol sahası) XML
--           haritasını temel alan, otomatik skor sistemli ve yapay zeka kalecili futbol oyunu.
-- =========================================================================
local admins = {
    ["Devilstrkpro#5475"] = true,
    ["Devilstrk#5475"] = true
}

local game = {
    scoreLeft = 0,
    scoreRight = 0,
    ballObj = nil,
    ballX = 450,
    ballY = 200,
    goalTimer = 0,
    lastScorer = nil,
    started = false,
    playerTeams = {}, -- name -> "blue" or "red"
    gkLeftY = 250,
    gkRightY = 250,
    gkSpeed = 6
}

local uiIds = {
    hud = 600,
    menu = 601,
    helpPanel = 602,
    helpBtn = 603,
    helpClose = 604,
    goalBanner = 605,
    gkLeft = 606,
    gkRight = 607
}

local playerHelp = {}

local function runSafe(func)
    local status, err = pcall(func)
    if not status then print("[Futbol Hatası] " .. tostring(err)) end
end

local function drawHelpPanel(name)
    local helpText = [[
<p align='center'><font size='15' face='Lucida Console' color='#FFEF00'><b>⚽ PRO FUTBOL YARDIM</b></font></p>
<hr>
<font size='11' face='Verdana' color='#FFFFFF'>
• <b>Harita:</b> Klasik küçük futbol sahası (YKF) haritası.<br><br>
• <b>Takım Seçimi:</b> Başlangıç menüsünden Mavi veya Kırmızı takımı seçin.<br><br>
• <b>Yapay Zeka Kaleciler:</b> Kalede topu kurtarmaya çalışan bot kaleciler (Mavi X=80, Kırmızı X=820) bulunur.<br><br>
• <b>Şut / Vurma:</b> Topa yakınken <VP>SPACE (Boşluk)</VP> veya <VP>S / Aşağı Ok</VP> tuşuna basarak şut çekin.<br><br>
• Kapatmak için sağ üstteki <b>[X]</b> butonuna veya klavyeden <G>H</G> tuşuna basın.
</font>
]]
    ui.addTextArea(uiIds.helpPanel, helpText, name, 300, 100, 300, 220, 0x1a241e, 0x050c07, 0.95, true)
    ui.addTextArea(uiIds.helpClose, "<p align='center'><a href='event:close_help'><font size='12' color='#FF3232'><b>[X]</b></font></a></p>", name, 570, 105, 25, 20, 0x2b1b1b, 0x0c0505, 0.9, true)
    playerHelp[name] = true
end

local function removeHelpPanel(name)
    ui.removeTextArea(uiIds.helpPanel, name)
    ui.removeTextArea(uiIds.helpClose, name)
    playerHelp[name] = false
end

local function drawHelpButton(name)
    ui.addTextArea(uiIds.helpBtn, "<p align='center'><a href='event:show_help'>❓ Yardım</a></p>", name, 810, 35, 70, 20, 0x1a241e, 0x050c07, 0.85, true)
end

local function updateHUD()
    local hudHtml = string.format([[
<p align='center'><font size='16' face='Lucida Console'>
<font color='#00E5FF'>Mavi Takım</font> <font color='#FFFFFF'>[ <J>%d</J> - <J>%d</J> ]</font> <font color='#FF3D00'>Kırmızı Takım</font>
</font></p>
    ]], game.scoreLeft, game.scoreRight)
    ui.addTextArea(uiIds.hud, hudHtml, nil, 250, 25, 400, 40, 0x000000, 0x000000, 0.0, true)
end

local function drawMenu(name)
    runSafe(function()
        local menuHtml = [[
<p align='center'><font size='16' face='Lucida Console' color='#FFEF00'>⚽ <b>YKF AI LOBİSİ</b> ⚽</font></p>
<hr>
<p align='center'>
<a href='event:join_blue'><font size='12' color='#00E5FF'><b>Mavi Takım Ol (Sol)</b></font></a><br><br>
<a href='event:join_red'><font size='12' color='#FF3D00'><b>Kırmızı Takım Ol (Sağ)</b></font></a><br><br>
<hr>
<a href='event:start_game'><font size='13' color='#98FB98'><b>Maçı Başlat</b></font></a>
</p>
        ]]
        ui.addTextArea(uiIds.menu, menuHtml, name, 300, 110, 300, 200, 0x1e1e24, 0x0a0a0c, 0.95, true)
    end)
end

local function resetBall()
    game.ballX = 450
    game.ballY = 200
    if game.ballObj then
        tfm.exec.removeObject(game.ballObj)
    end
    game.ballObj = tfm.exec.addShamanObject(6, game.ballX, game.ballY, 0, 0, 0, false)
end

local function spawnPlayers()
    for name, team in pairs(game.playerTeams) do
        tfm.exec.respawnPlayer(name)
        if team == "blue" then
            tfm.exec.movePlayer(name, 250, 350, false, 0, 0, false)
        else
            tfm.exec.movePlayer(name, 650, 350, false, 0, 0, false)
        end
    end
end

local function checkGoal()
    if game.goalTimer > 0 then return end

    -- Fetch latest position from objectList
    if game.ballObj and tfm.get.room.objectList[game.ballObj] then
        local obj = tfm.get.room.objectList[game.ballObj]
        game.ballX = obj.x
        game.ballY = obj.y
    end

    local goalScored = false

    -- Left Goal (X < 0, Y in goalmouth height)
    if game.ballX < 0 and game.ballY >= 135 and game.ballY <= 400 then
        game.scoreRight = game.scoreRight + 1
        game.lastScorer = "Kırmızı Takım"
        goalScored = true
    -- Right Goal (X > 900, Y in goalmouth height)
    elseif game.ballX > 900 and game.ballY >= 135 and game.ballY <= 400 then
        game.scoreLeft = game.scoreLeft + 1
        game.lastScorer = "Mavi Takım"
        goalScored = true
    end

    if goalScored then
        game.goalTimer = 6 -- 3 seconds (6 loop counts)
        updateHUD()
        tfm.exec.displayParticle(13, game.ballX, game.ballY, 0, 0, 0, 0, nil)
        
        -- Flash Goal Banner
        local bannerHtml = string.format([[
<p align='center'><font size='26' face='Lucida Console' color='#FFD700'><b>⚽ GOOOL!!! ⚽</b></font><br>
<font size='16' color='#FFFFFF'><b>%s Skor Kazandı!</b></font></p>
        ]], game.lastScorer)
        ui.addTextArea(uiIds.goalBanner, bannerHtml, nil, 250, 140, 400, 100, 0x111111, 0x000000, 0.8, true)
        
        tfm.exec.chatMessage("<VP>[GOL] " .. game.lastScorer .. " gol attı!</VP>", nil)
    end
end

function eventNewPlayer(name)
    runSafe(function()
        tfm.exec.bindKeyboard(name, 32, true, true) -- Space
        tfm.exec.bindKeyboard(name, 40, true, true) -- Down arrow
        tfm.exec.bindKeyboard(name, 83, true, true) -- S
        tfm.exec.bindKeyboard(name, 72, true, true) -- H
        drawHelpButton(name)
        if not game.started then
            drawMenu(name)
        else
            -- Auto assign to team with fewer players
            local blues, reds = 0, 0
            for _, t in pairs(game.playerTeams) do
                if t == "blue" then blues = blues + 1 else reds = reds + 1 end
            end
            local assigned = blues <= reds and "blue" or "red"
            game.playerTeams[name] = assigned
            tfm.exec.respawnPlayer(name)
        end
        updateHUD()
    end)
end

function eventPlayerRespawn(name)
    runSafe(function()
        local team = game.playerTeams[name]
        if team then
            if team == "blue" then
                tfm.exec.movePlayer(name, 250, 350, false, 0, 0, false)
            else
                tfm.exec.movePlayer(name, 650, 350, false, 0, 0, false)
            end
        end
    end)
end

function eventTextAreaCallback(id, name, callback)
    runSafe(function()
        if callback == "show_help" then
            drawHelpPanel(name)
        elseif callback == "close_help" then
            removeHelpPanel(name)
        elseif callback == "join_blue" then
            game.playerTeams[name] = "blue"
            tfm.exec.chatMessage("<J>[Futbol]</J> Sol (Mavi) takıma <G>"..name.."</G> katıldı.", nil)
        elseif callback == "join_red" then
            game.playerTeams[name] = "red"
            tfm.exec.chatMessage("<J>[Futbol]</J> Sağ (Kırmızı) takıma <G>"..name.."</G> katıldı.", nil)
        elseif callback == "start_game" then
            -- Auto-assign anyone who hasn't chosen a team
            for pName in pairs(tfm.get.room.playerList) do
                if not game.playerTeams[pName] then
                    game.playerTeams[pName] = math.random(2) == 1 and "blue" or "red"
                end
            end
            
            for pName in pairs(tfm.get.room.playerList) do
                ui.removeTextArea(uiIds.menu, pName)
            end
            
            game.scoreLeft = 0
            game.scoreRight = 0
            game.started = true
            updateHUD()
            spawnPlayers()
            resetBall()
            tfm.exec.chatMessage("<VP>[Sistem] Futbol maçı başladı! Kalecileri geçip gol atmaya çalışın!</VP>", nil)
        end
    end)
end

function eventKeyboard(name, key, down, x, y)
    runSafe(function()
        if key == 72 then
            if playerHelp[name] then
                removeHelpPanel(name)
            else
                drawHelpPanel(name)
            end
            return
        end

        -- Check Kick (Space, Down Arrow, S)
        if key == 32 or key == 40 or key == 83 then
            local p = tfm.get.room.playerList[name]
            if p and not p.isDead then
                local dx = p.x - game.ballX
                local dy = p.y - game.ballY
                local dist = math.sqrt(dx*dx + dy*dy)
                
                if dist <= 45 then
                    local vx = p.isFacingRight and 17 or -17
                    local vy = -5
                    tfm.exec.moveObject(game.ballObj, game.ballX, game.ballY, false, vx, vy, false)
                    tfm.exec.displayParticle(11, game.ballX, game.ballY, 0, 0, 0, 0, nil)
                end
            end
        end
    end)
end

function eventLoop(time, timeLeft)
    runSafe(function()
        if not game.started then return end

        if game.goalTimer > 0 then
            game.goalTimer = game.goalTimer - 1
            if game.goalTimer == 0 then
                ui.removeTextArea(uiIds.goalBanner, nil)
                resetBall()
                spawnPlayers()
            end
            return
        end

        -- Goalkeeper AI logic (Follows ball Y coordinate in YKF map)
        -- Left GK (Mavi) Y position update
        local targetLeftY = math.min(360, math.max(160, game.ballY))
        local diffLeft = targetLeftY - game.gkLeftY
        if math.abs(diffLeft) > 5 then
            game.gkLeftY = game.gkLeftY + (diffLeft > 0 and game.gkSpeed or -game.gkSpeed)
        end
        
        -- Right GK (Kırmızı) Y position update
        local targetRightY = math.min(360, math.max(160, game.ballY))
        local diffRight = targetRightY - game.gkRightY
        if math.abs(diffRight) > 5 then
            game.gkRightY = game.gkRightY + (diffRight > 0 and game.gkSpeed or -game.gkSpeed)
        end

        -- Draw Goalkeepers at X=80 (Mavi) and X=820 (Kırmızı)
        ui.addTextArea(uiIds.gkLeft, "", nil, 80, game.gkLeftY - 20, 10, 40, 0x00E5FF, 0x00E5FF, 1.0, true)
        ui.addTextArea(uiIds.gkRight, "", nil, 820, game.gkRightY - 20, 10, 40, 0xFF3D00, 0xFF3D00, 1.0, true)

        -- Goalkeeper-Ball Collision Detection in YKF map
        -- Left Goalkeeper Block (Mavi, X=80)
        if game.ballX >= 72 and game.ballX <= 90 then
            if math.abs(game.ballY - game.gkLeftY) <= 28 then
                local obj = tfm.get.room.objectList[game.ballObj]
                local vx = obj and math.abs(obj.vx) or 10
                tfm.exec.moveObject(game.ballObj, 92, game.ballY, false, vx * 1.1 + 4, -3, false)
                tfm.exec.displayParticle(11, game.ballX, game.ballY, 0, 0, 0, 0, nil)
            end
        end

        -- Right Goalkeeper Block (Kırmızı, X=820)
        if game.ballX >= 810 and game.ballX <= 828 then
            if math.abs(game.ballY - game.gkRightY) <= 28 then
                local obj = tfm.get.room.objectList[game.ballObj]
                local vx = obj and math.abs(obj.vx) or 10
                tfm.exec.moveObject(game.ballObj, 808, game.ballY, false, -vx * 1.1 - 4, -3, false)
                tfm.exec.displayParticle(11, game.ballX, game.ballY, 0, 0, 0, 0, nil)
            end
        end

        checkGoal()
    end)
end

function eventPlayerLeft(name)
    game.playerTeams[name] = nil
end

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

-- Loaded ykf map from Night Ball Football 2021
local mapXML = [[<C><P G="0,6" L="900" /><Z><S><S H="1000" o="84b0e" L="2000" Y="252" c="4" X="410" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="135" o="821e1e" L="100" Y="62" c="4" X="-105" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="135" o="19639e" L="100" Y="57" c="4" X="998" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="1000" Y="400" c="2" X="450" P="0,0,0.1,1,,0,0,0" T="12" /><S H="64" o="ffffff" L="139" Y="425" c="2" X="-6" P="0,0,,,30,0,0,0" T="12" /><S H="10" o="ffffff" L="85" Y="200" c="4" X="450" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="10" o="54b0e" L="75" Y="200" c="4" X="450" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="400" o="ffffff" L="10" Y="200" c="4" X="450" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="15" Y="200" c="4" X="450" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="10" o="ffffff" L="150" Y="90" c="4" X="25" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="150" Y="310" c="4" X="25" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="230" o="ffffff" L="10" Y="200" c="4" X="100" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="250" Y="350" c="4" X="70" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="250" Y="50" c="4" X="70" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="150" o="0" L="10" Y="200" c="4" X="-50" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="80" Y="201" c="4" X="190" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="10" o="84b0e" L="70" Y="200" c="4" X="190" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="266" o="84b0e" L="79" Y="197" c="4" X="146" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="300" o="ffffff" L="10" Y="200" c="4" X="190" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="80" Y="200" c="4" X="710" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="10" o="84b0e" L="70" Y="200" c="4" X="710" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="266" o="84b0e" L="79" Y="198" c="4" X="753" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="110" Y="130" c="1" X="-100" P="0,0,0.,0.2,,0,0,0" T="12" /><S H="300" o="ffffff" L="10" Y="200" c="4" X="710" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="230" o="ffffff" L="10" Y="200" c="4" X="800" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="150" Y="310" c="4" X="875" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="150" Y="89" c="4" X="870" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="250" Y="50" c="4" X="830" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="64" o="ffffff" L="139" Y="393" c="3" X="-7" P="0,0,,1.2,30,0,0,0" T="12" /><S H="10" o="ffffff" L="250" Y="350" c="4" X="830" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="15" Y="200" c="4" X="150" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="50" o="383737" L="1200" Y="-24" c="4" X="450" P="0,0,0.3,0.2,,0,0,0" T="12" /><S X="-105" o="821e1e" L="100" Y="337" c="4" H="135" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="15" Y="200" c="4" X="750" P="0,0,0.3,0.2,,0,0,0" T="13" /><S H="150" o="0" L="10" Y="200" c="4" X="950" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="445" o="ffffff" L="10" Y="177" c="3" X="-150" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="132" o="ffffff" L="10" Y="61" X="950" P="0,0,0,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="110" Y="269" c="1" X="-100" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="130" o="ffffff" L="10" Y="60" X="-50" P="0,0,0,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="110" Y="129" c="1" X="1000" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="150" o="ffffff" L="10" Y="200" c="3" X="-1050" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="130" o="ffffff" L="10" Y="339" X="-50" P="0,0,0.2,,0,0,0" T="12" /><S H="64" o="ffffff" L="139" Y="425" c="2" X="906" P="0,0,,,-30,0,0,0" T="12" /><S H="64" o="ffffff" L="139" Y="395" c="3" X="906" P="0,0,,1.2,-30,0,0,0" T="12" /><S H="1000" o="84b0e" L="2000" Y="904" c="4" X="598" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="135" o="19639e" L="100" Y="337" c="4" X="1004" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="1210" Y="400" c="3" X="450" P="0,0,,1.1,,0,0,0" T="12" /><S H="130" o="ffffff" L="10" Y="339" X="950" P="0,0,0,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="110" Y="270" c="1" X="1000" P="0,0,0.3,0.2,,0,0,0" T="12" /><S H="10" o="ffffff" L="1200" Y="0" c="1" X="450" P="0,0,0.1,,,0,0,0" T="12" /><S X="450" o="ffffff" L="1210" Y="-49" c="3" H="10" P="0,0,,1.0,,0,0,0" T="12" /><S H="445" o="ffffff" L="10" Y="177" c="3" X="1050" P="0,0,0.3,0.2,,0,0,0" T="12" /></S><D><DS X="450" Y="-23" /></D><O /></Z></C>]]
tfm.exec.newGame(mapXML)

for name in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
