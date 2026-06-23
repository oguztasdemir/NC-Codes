-- =========================================================================
-- NC - AI Masa Tenisi (Ping Pong) 2D Fizik Modülü
-- Geliştirici: AI & Oğuz Taşdemir (Devilstrk#5475)
-- İletişim: LinkedIn: linkedin.com/in/oguz-tasdemir-846889353 | IG: @_oguztasdemir
-- =========================================================================
-- HAKKINDA: Yerçekimi fizik motorlu, yan görünüm 2D masa tenisi oyunu.
--           Oyuncular raketlerini masanın kendi yarı alanlarında W/A/S/D veya
--           yön tuşlarıyla hareket ettirip topu file üzerinden aşırmaya çalışır.
-- =========================================================================
local admins = {
    ["Devilstrkpro#5475"] = true,
    ["Devilstrk#5475"] = true
}

local game = {
    p1 = nil,
    p2 = nil,
    p1Score = 0,
    p2Score = 0,
    ballObj = nil,
    ballX = 400,
    ballY = 100,
    ballVX = 4,
    ballVY = 0,
    p1X = 200,
    p1Y = 220,
    p2X = 600,
    p2Y = 220,
    paddleSpeed = 15,
    started = false,
    p1IsBot = false,
    p2IsBot = false
}

local uiIds = {
    hud = 200,
    menu = 201,
    helpPanel = 202,
    helpBtn = 203,
    helpClose = 204
}

local playerHelp = {}

local function runSafe(func)
    local status, err = pcall(func)
    if not status then print("[Masa Tenisi Hatası] " .. tostring(err)) end
end

local function drawHelpPanel(name)
    local helpText = [[
<p align='center'><font size='15' face='Lucida Console' color='#FFEF00'><b>🏓 2D FİZİKSEL MASA TENİSİ</b></font></p>
<hr>
<font size='11' face='Verdana' color='#FFFFFF'>
• <b>Amaç:</b> Topu yerçekimi etkisinde masadan sektirip file üzerinden karşıya atmak.<br><br>
• <b>Kontroller:</b><br>
  - Sol Oyuncu (Mavi): <VP>W/A/S/D</VP> Tuşları<br>
  - Sağ Oyuncu (Kırmızı): <VP>Yön Tuşları</VP><br><br>
• Kapatmak için sağ üstteki <b>[X]</b> butonuna veya klavyeden <G>H</G> tuşuna basın.
</font>
]]
    ui.addTextArea(uiIds.helpPanel, helpText, name, 250, 100, 300, 220, 0x1e1e24, 0x0a0a0c, 0.95, true)
    ui.addTextArea(uiIds.helpClose, "<p align='center'><a href='event:close_help'><font size='12' color='#FF3232'><b>[X]</b></font></a></p>", name, 520, 105, 25, 20, 0x2b1b1b, 0x0c0505, 0.9, true)
    playerHelp[name] = true
end

local function removeHelpPanel(name)
    ui.removeTextArea(uiIds.helpPanel, name)
    ui.removeTextArea(uiIds.helpClose, name)
    playerHelp[name] = false
end

local function drawHelpButton(name)
    ui.addTextArea(uiIds.helpBtn, "<p align='center'><a href='event:show_help'>❓ Yardım</a></p>", name, 720, 35, 70, 20, 0x1e1e24, 0x0a0a0c, 0.85, true)
end

local function updateHUD()
    local hudHtml = string.format([[
<p align='center'><font size='16' face='Lucida Console'>
<font color='#87CEFA'>%s</font> <font color='#FFFFFF'>[ <J>%d</J> - <J>%d</J> ]</font> <font color='#FFA07A'>%s</font>
</font></p>
    ]], 
    game.p1 and game.p1:sub(1, 10) or "Oyuncu 1",
    game.p1Score,
    game.p2Score,
    game.p2 and game.p2:sub(1, 10) or "Oyuncu 2"
    )
    ui.addTextArea(uiIds.hud, hudHtml, nil, 200, 25, 400, 40, 0x000000, 0x000000, 0.0, true)
end

local function drawMenu(name)
    runSafe(function()
        local menuHtml = [[
<p align='center'><font size='16' face='Lucida Console' color='#FFEF00'>🏓 <b>2D MASA TENİSİ (AI)</b> 🏓</font></p>
<hr>
<p align='center'>
<a href='event:join_p1'><font size='12' color='#87CEFA'><b>Sol Oyuncu (W/A/S/D)</b></font></a><br><br>
<a href='event:join_p2'><font size='12' color='#FFA07A'><b>Sağ Oyuncu (Yön Tuşları)</b></font></a><br><br>
<hr>
<a href='event:start_game'><font size='13' color='#98FB98'><b>Maçı Başlat</b></font></a>
</p>
        ]]
        ui.addTextArea(uiIds.menu, menuHtml, name, 250, 110, 300, 200, 0x1e1e24, 0x0a0a0c, 0.95, true)
    end)
end

local function resetBall()
    game.ballX = math.random(2) == 1 and 250 or 550
    game.ballY = 100
    game.ballVX = game.ballX < 400 and math.random(4, 6) or -math.random(4, 6)
    game.ballVY = 0
    if game.ballObj then
        tfm.exec.removeObject(game.ballObj)
    end
    game.ballObj = tfm.exec.addShamanObject(6, game.ballX, game.ballY, 0, game.ballVX, game.ballVY, false)
end

local function checkCollisions()
    -- P1 Paddle collision (horizontal paddle width 50, height 16)
    if math.abs(game.ballX - game.p1X) <= 35 and math.abs(game.ballY - game.p1Y) <= 18 then
        game.ballVY = -math.abs(game.ballVY) * 0.85 - 2.5
        game.ballVX = game.ballVX + (game.ballX - game.p1X) * 0.12 + 1.5
        tfm.exec.displayParticle(11, game.ballX, game.ballY, 0, 0, 0, 0, nil)
    end

    -- P2 Paddle collision
    if math.abs(game.ballX - game.p2X) <= 35 and math.abs(game.ballY - game.p2Y) <= 18 then
        game.ballVY = -math.abs(game.ballVY) * 0.85 - 2.5
        game.ballVX = game.ballVX + (game.ballX - game.p2X) * 0.12 - 1.5
        tfm.exec.displayParticle(11, game.ballX, game.ballY, 0, 0, 0, 0, nil)
    end

    -- Table Surface collision (Table is at Y=285, top is Y=277)
    if game.ballY >= 262 and game.ballY <= 285 then
        if game.ballX >= 140 and game.ballX <= 660 then
            game.ballVY = -math.abs(game.ballVY) * 0.75
            game.ballY = 260
            tfm.exec.displayParticle(3, game.ballX, game.ballY + 15, 0, 0, 0, 0, nil)
        end
    end

    -- Net Collision (X=400, Y between 232 and 277)
    if game.ballY >= 225 and game.ballY <= 285 then
        if math.abs(game.ballX - 400) <= 8 then
            game.ballVX = -game.ballVX * 0.7
            game.ballX = game.ballX < 400 and 390 or 410
        end
    end

    -- Borders & Out of Bounds
    if game.ballY < 20 then
        game.ballVY = math.abs(game.ballVY) * 0.8
        game.ballY = 22
    end
    
    if game.ballX < 15 then
        game.ballVX = math.abs(game.ballVX) * 0.8
        game.ballX = 18
    elseif game.ballX > 785 then
        game.ballVX = -math.abs(game.ballVX) * 0.8
        game.ballX = 782
    end

    -- Scoring (Ball lands on floor or falls off the table sides)
    if game.ballY > 360 then
        if game.ballX < 400 then
            game.p2Score = game.p2Score + 1
        else
            game.p1Score = game.p1Score + 1
        end
        updateHUD()
        resetBall()
    end
end

function eventNewPlayer(name)
    runSafe(function()
        -- Keyboard keys: W/A/S/D (87/65/83/68) and Arrows (38/37/40/39) and H (72)
        tfm.exec.bindKeyboard(name, 38, true, true)
        tfm.exec.bindKeyboard(name, 40, true, true)
        tfm.exec.bindKeyboard(name, 37, true, true)
        tfm.exec.bindKeyboard(name, 39, true, true)
        tfm.exec.bindKeyboard(name, 87, true, true)
        tfm.exec.bindKeyboard(name, 83, true, true)
        tfm.exec.bindKeyboard(name, 65, true, true)
        tfm.exec.bindKeyboard(name, 68, true, true)
        tfm.exec.bindKeyboard(name, 72, true, true)
        drawHelpButton(name)
        drawMenu(name)
    end)
end

function eventTextAreaCallback(id, name, callback)
    runSafe(function()
        if callback == "show_help" then
            drawHelpPanel(name)
        elseif callback == "close_help" then
            removeHelpPanel(name)
        elseif callback == "join_p1" then
            game.p1 = name
            game.p1IsBot = false
            if game.p2 == name then
                game.p2 = nil
            end
            tfm.exec.chatMessage("<J>[Masa Tenisi]</J> Sol oyuncu koltuğuna <G>"..name.."</G> oturdu.", nil)
        elseif callback == "join_p2" then
            game.p2 = name
            game.p2IsBot = false
            if game.p1 == name then
                game.p1 = nil
            end
            tfm.exec.chatMessage("<J>[Masa Tenisi]</J> Sağ oyuncu koltuğuna <G>"..name.."</G> oturdu.", nil)
        elseif callback == "start_game" then
            if not game.p1 and not game.p2 then
                game.p1 = name
                game.p1IsBot = false
            end
            
            if not game.p1 then
                game.p1 = "Yapay Zeka"
                game.p1IsBot = true
            elseif not game.p2 then
                game.p2 = "Yapay Zeka"
                game.p2IsBot = true
            end
            
            for pName in pairs(tfm.get.room.playerList) do
                ui.removeTextArea(uiIds.menu, pName)
            end
            
            game.p1Score = 0
            game.p2Score = 0
            game.started = true
            updateHUD()
            resetBall()
            tfm.exec.chatMessage("<VP>[Sistem] Tenis maçı başladı! Sol: "..game.p1.." | Sağ: "..game.p2.."</VP>", nil)
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
        if not game.started then return end

        if name == game.p1 then
            if key == 87 then
                game.p1Y = math.max(100, game.p1Y - game.paddleSpeed)
            elseif key == 83 then
                game.p1Y = math.min(270, game.p1Y + game.paddleSpeed)
            elseif key == 65 then
                game.p1X = math.max(50, game.p1X - game.paddleSpeed)
            elseif key == 68 then
                game.p1X = math.min(380, game.p1X + game.paddleSpeed)
            end
        end

        if name == game.p2 then
            if key == 38 then
                game.p2Y = math.max(100, game.p2Y - game.paddleSpeed)
            elseif key == 40 then
                game.p2Y = math.min(270, game.p2Y + game.paddleSpeed)
            elseif key == 37 then
                game.p2X = math.max(420, game.p2X - game.paddleSpeed)
            elseif key == 39 then
                game.p2X = math.min(750, game.p2X + game.paddleSpeed)
            end
        end
    end)
end

local loopCounter = 0
function eventLoop(time, timeLeft)
    runSafe(function()
        if not game.started then return end
        loopCounter = loopCounter + 1
        
        -- Bot movement
        if game.p1IsBot then
            local targetX = 200
            local targetY = 220
            if game.ballX < 420 then
                targetX = math.max(80, game.ballX - 10)
                targetY = math.min(265, game.ballY + 12)
            end
            local dx = targetX - game.p1X
            local dy = targetY - game.p1Y
            if math.abs(dx) > 10 then
                game.p1X = game.p1X + (dx > 0 and 7 or -7)
            end
            if math.abs(dy) > 10 then
                game.p1Y = game.p1Y + (dy > 0 and 7 or -7)
            end
        end
        if game.p2IsBot then
            local targetX = 600
            local targetY = 220
            if game.ballX > 380 then
                targetX = math.min(720, game.ballX + 10)
                targetY = math.min(265, game.ballY + 12)
            end
            local dx = targetX - game.p2X
            local dy = targetY - game.p2Y
            if math.abs(dx) > 10 then
                game.p2X = game.p2X + (dx > 0 and 7 or -7)
            end
            if math.abs(dy) > 10 then
                game.p2Y = game.p2Y + (dy > 0 and 7 or -7)
            end
        end
        
        -- Neon 2D paddles (horizontal bars)
        ui.addTextArea(1, "", nil, game.p1X - 25, game.p1Y - 8, 50, 16, 0x00E5FF, 0x00E5FF, 1.0, true)
        ui.addTextArea(2, "", nil, game.p2X - 25, game.p2Y - 8, 50, 16, 0xFF3D00, 0xFF3D00, 1.0, true)
        
        -- Apply Gravity & Damping
        game.ballVY = game.ballVY + 0.35
        game.ballVX = game.ballVX * 0.99
        game.ballVY = game.ballVY * 0.99
        
        game.ballX = game.ballX + game.ballVX
        game.ballY = game.ballY + game.ballVY
        
        if game.ballObj then
            tfm.exec.moveObject(game.ballObj, game.ballX, game.ballY, false, game.ballVX, game.ballVY, false)
        end
        
        checkCollisions()
    end)
end

function eventPlayerLeft(name)
    runSafe(function()
        if game.p1 == name then
            game.p1 = nil
            game.p1IsBot = false
            if game.started then
                game.started = false
                tfm.exec.chatMessage("<R>[Masa Tenisi] Sol oyuncu odadan ayrıldığı için maç iptal edildi.</R>", nil)
                for pName in pairs(tfm.get.room.playerList) do
                    drawMenu(pName)
                end
            end
        elseif game.p2 == name then
            game.p2 = nil
            game.p2IsBot = false
            if game.started then
                game.started = false
                tfm.exec.chatMessage("<R>[Masa Tenisi] Sağ oyuncu odadan ayrıldığı için maç iptal edildi.</R>", nil)
                for pName in pairs(tfm.get.room.playerList) do
                    drawMenu(pName)
                end
            end
        end
    end)
end

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

-- 2D Side-view Ping Pong Table Map XML
local mapXML = [[<C><P L="800" H="400" /><Z><S><S T="12" X="400" Y="5" L="800" H="10" P="0,0,0,0.5,0,0,0,0" o="1e1e24" /><S T="12" X="400" Y="395" L="800" H="10" P="0,0,0,0.3,0,0,0,0" o="1e1e24" /><S T="12" X="5" Y="200" L="10" H="400" P="0,0,0,0.5,0,0,0,0" o="1e1e24" /><S T="12" X="795" Y="200" L="10" H="400" P="0,0,0,0.5,0,0,0,0" o="1e1e24" /><S T="12" X="400" Y="285" L="520" H="15" P="0,0,0.1,0.0,0,0,0,0" o="1e3d59" /><S T="12" X="200" Y="340" L="10" H="100" P="0,0,0,0,0,0,0,0" o="17252a" /><S T="12" X="600" Y="340" L="10" H="100" P="0,0,0,0,0,0,0,0" o="17252a" /><S T="12" X="400" Y="340" L="10" H="100" P="0,0,0,0,0,0,0,0" o="17252a" /><S T="12" X="400" Y="255" L="4" H="45" P="0,0,0,0.1,0,0,0,0" o="dddddd" /></S><D><DS X="400" Y="360" /></D><O /></Z></C>]]
tfm.exec.newGame(mapXML)

for name in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
