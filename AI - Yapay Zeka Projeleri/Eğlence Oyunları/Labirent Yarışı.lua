-- =========================================================================
-- NC - AI Labirent Yarışı Modülü
-- Geliştirici: AI & Oğuz Taşdemir (Devilstrk#5475)
-- İletişim: LinkedIn: linkedin.com/in/oguz-tasdemir-846889353 | IG: @_oguztasdemir
-- =========================================================================
-- HAKKINDA: Labirent içerisinde dinamik olarak beliren altınları rakiplerden
--           önce toplama ve hız alanlarını kullanarak bitişe ulaşma oyunudur.
-- NASIL OYNANIR:
--   1. Kabile evinde /lua yazılıp kod çalıştırılır.
--   2. Yön veya WASD tuşlarıyla labirentte hareket edilir.
--   3. Ekranda rastgele beliren altın peynirlere temas edilerek altın toplanır.
--   4. Haritadaki hızlandırıcı alanlara basıldığında fare 3 sn hız kazanır.
--   5. H tuşuna veya YARDIM butonuna basarak rehber açılıp kapatılabilir.
-- =========================================================================
local uiIds = { 
    helpPanel = 501, 
    helpBtn = 502,
    helpClose = 503
}

local coinPositions = {
    {x = 100, y = 100}, {x = 700, y = 100}, {x = 400, y = 150},
    {x = 200, y = 300}, {x = 600, y = 300}, {x = 400, y = 350},
    {x = 150, y = 200}, {x = 650, y = 200}, {x = 300, y = 250}
}

local boostPositions = {
    {x = 250, y = 120}, {x = 550, y = 120}, {x = 400, y = 270}
}

local players = {}
local activeCoins = {}
local playerHelp = {}

local function runSafe(func)
    local status, err = pcall(func)
    if not status then print("[Labirent Yarışı Hatası] " .. tostring(err)) end
end

local function drawHelpPanel(name)
    local helpText = [[
<p align='center'><font size='14' color='#FFD700'><b>🏆 LABİRENT YARIŞI YARDIM</b></font></p>
<hr>
<font size='11' color='#FFFFFF'>
• <b>Amaç:</b> Labirentteki altın peynirleri toplayıp en yüksek skora ulaşmak.<br><br>
• <b>Hızlandırıcılar:</b> Haritadaki ışıklı yeşil alanlara bastığınızda fırlatma ivmesi kazanırsınız.<br><br>
• <b>Kontroller:</b> Yön veya WASD tuşlarıyla hareket edebilirsiniz.<br><br>
• Kapatmak için sağ üstteki <b>[X]</b> butonuna veya klavyeden <G>H</G> tuşuna basın.
</font>
]]
    ui.addTextArea(uiIds.helpPanel, helpText, name, 250, 100, 300, 220, 0x1f1f2e, 0x14141f, 0.95, true)
    ui.addTextArea(uiIds.helpClose, "<p align='center'><a href='event:close_help'><font size='12' color='#FF3232'><b>[X]</b></font></a></p>", name, 520, 105, 25, 20, 0x1f1f2e, 0x14141f, 0.9, true)
    playerHelp[name] = true
end

local function removeHelpPanel(name)
    ui.removeTextArea(uiIds.helpPanel, name)
    ui.removeTextArea(uiIds.helpClose, name)
    playerHelp[name] = false
end

local function drawHelpButton(name)
    ui.addTextArea(uiIds.helpBtn, "<p align='center'><a href='event:show_help'>❓ Yardım</a></p>", name, 720, 190, 70, 20, 0x1f1f2e, 0x14141f, 0.85, true)
end

local function drawLeaderboard()
    runSafe(function()
        local list = {}
        for name, data in pairs(players) do
            table.insert(list, {name = name, score = data.score})
        end
        table.sort(list, function(a, b) return a.score > b.score end)

        local html = "<p align='center'><font size='13' color='#FFD700'>🏆 <b>LİDERLİK TABLOSU</b></font></p><hr>"
        for i = 1, math.min(5, #list) do
            html = html .. string.format("<font size='11' color='#FFFFFF'>%d. %s - <J>%d Altın</J></font><br>", i, list[i].name:sub(1, 12), list[i].score)
        end
        ui.addTextArea(500, html, nil, 620, 40, 170, 140, 0x1f1f2e, 0x14141f, 0.8, true)
    end)
end

local function spawnCoin()
    runSafe(function()
        if #activeCoins >= 4 then return end
        local pos = coinPositions[math.random(#coinPositions)]
        local objId = tfm.exec.addShamanObject(85, pos.x, pos.y, 0, 0, 0, false)
        table.insert(activeCoins, {id = objId, x = pos.x, y = pos.y})
    end)
end

function eventNewPlayer(name)
    runSafe(function()
        players[name] = {score = 0, lastBoost = 0}
        tfm.exec.bindKeyboard(name, 72, true, true)
        drawHelpButton(name)
        tfm.exec.chatMessage("<VP>[Yarış]</VP> Labirent yarışı başladı! Ekranda çıkan altınları rakiplerinden önce topla!", name)
        drawLeaderboard()
    end)
end

function eventPlayerLeft(name)
    players[name] = nil
    drawLeaderboard()
end

function eventPlayerGetCheese(name)
    runSafe(function()
        if players[name] then
            players[name].score = players[name].score + 5
            tfm.exec.chatMessage("<J>[Altın]</J> Delik/Peynir bonusu aldın! <VP>+5 Altın</VP>", name)
            drawLeaderboard()
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
        end
    end)
end

function eventTextAreaCallback(id, name, callback)
    runSafe(function()
        if callback == "show_help" then
            drawHelpPanel(name)
        elseif callback == "close_help" then
            removeHelpPanel(name)
        end
    end)
end

local loopCounter = 0
function eventLoop(time, timeLeft)
    runSafe(function()
        loopCounter = loopCounter + 1

        if loopCounter % 8 == 0 then
            spawnCoin()
        end

        for _, pos in pairs(boostPositions) do
            tfm.exec.displayParticle(11, pos.x, pos.y, 0, 0, 0, 0, nil)
        end

        for name, data in pairs(players) do
            local p = tfm.get.room.playerList[name]
            if p and not p.isDead then
                for i = #activeCoins, 1, -1 do
                    local coin = activeCoins[i]
                    local dx = p.x - coin.x
                    local dy = p.y - coin.y
                    if (dx*dx + dy*dy) <= 900 then
                        tfm.exec.removeObject(coin.id)
                        table.remove(activeCoins, i)
                        data.score = data.score + 1
                        tfm.exec.chatMessage("<J>[Altın] Bir altın topladın!</J>", name)
                        tfm.exec.displayParticle(13, coin.x, coin.y, 0, 0, 0, 0, nil)
                        drawLeaderboard()
                    end
                end

                for _, pos in pairs(boostPositions) do
                    local dx = p.x - pos.x
                    local dy = p.y - pos.y
                    if (dx*dx + dy*dy) <= 625 and (time - data.lastBoost > 3000) then
                        data.lastBoost = time
                        tfm.exec.chatMessage("<VP>[Hızlandırıcı] Hızın 3 saniyeliğine arttı!</VP>", name)
                        local vx = p.isFacingRight and 35 or -35
                        tfm.exec.movePlayer(name, p.x, p.y, false, vx, -5, true)
                        tfm.exec.displayParticle(3, p.x, p.y, 0, 0, 0, 0, nil)
                    end
                end
            end
        end
    end)
end

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
-- Mathematical maze XML
local mapXML = [[<C><P /><Z><S><S T="12" X="400" Y="390" L="800" H="20" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="10" L="800" H="20" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="10" Y="200" L="20" H="400" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="790" Y="200" L="20" H="400" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="200" Y="130" L="150" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b2b3a" /><S T="12" X="600" Y="130" L="150" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b2b3a" /><S T="12" X="400" Y="230" L="300" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b2b3a" /><S T="12" X="200" Y="310" L="150" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b2b3a" /><S T="12" X="600" Y="310" L="150" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b2b3a" /></S><D><DS X="400" Y="360" /></D><O /></Z></C>]]
tfm.exec.newGame(mapXML)

for name in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
