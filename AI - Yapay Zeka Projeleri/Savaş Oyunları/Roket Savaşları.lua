-- =========================================================================
-- NC - AI Roket Savaşları Modülü
-- Geliştirici: AI & Oğuz Taşdemir (Devilstrk#5475)
-- İletişim: LinkedIn: linkedin.com/in/oguz-tasdemir-846889353 | IG: @_oguztasdemir
-- =========================================================================
-- HAKKINDA: Yöneticilerin ve oyuncuların roketlerle (sol ve sağ yönlü güllerle)
--           birbirlerini vurarak hayatta kalmaya çalıştıkları bir savaş oyunu.
-- NASIL OYNANIR:
--   1. Kabile evinde /lua yazılıp kod çalıştırılır.
--   2. Yön tuşlarıyla hareket edilir ve platformlarda konum alınır.
--   3. SPACE (Boşluk) tuşuna basarak baktığınız yöne doğru roket fırlatılır.
--   4. Her roket isabeti rakibe 35 hasar verir. Canı 0 olan oyuncular elenir.
--   5. H tuşuna veya YARDIM butonuna basarak rehber açılıp kapatılabilir.
-- =========================================================================
local players = {}
local rockets = {}
local playerHelp = {}
local uiIds = {
    hud = 300,
    health = 301,
    helpPanel = 302,
    helpBtn = 303,
    helpClose = 304
}

local function runSafe(func)
    local status, err = pcall(func)
    if not status then print("[Roket Savaşları Hatası] " .. tostring(err)) end
end

local function drawHelpPanel(name)
    local helpText = [[
<p align='center'><font size='14' color='#FF3232'><b>🚀 ROKET SAVAŞLARI YARDIM</b></font></p>
<hr>
<font size='11' color='#FFFFFF'>
• <b>Amaç:</b> Rakiplerinizi roketlerle vurarak canlarını bitirmek ve puan toplamak.<br><br>
• <b>Ateş Etme:</b> <VP>Space (Boşluk)</VP> tuşuna basarak baktığınız yöne roket atarsınız.<br><br>
• <b>Hasar:</b> Her isabet rakibe 35 hasar verir.<br><br>
• Kapatmak için sağ üstteki <b>[X]</b> butonuna veya klavyeden <G>H</G> tuşuna basın.
</font>
]]
    ui.addTextArea(uiIds.helpPanel, helpText, name, 250, 100, 300, 220, 0x1a0505, 0x0c0202, 0.95, true)
    ui.addTextArea(uiIds.helpClose, "<p align='center'><a href='event:close_help'><font size='12' color='#FF3232'><b>[X]</b></font></a></p>", name, 520, 105, 25, 20, 0x1a0505, 0x0c0202, 0.9, true)
    playerHelp[name] = true
end

local function removeHelpPanel(name)
    ui.removeTextArea(uiIds.helpPanel, name)
    ui.removeTextArea(uiIds.helpClose, name)
    playerHelp[name] = false
end

local function drawHelpButton(name)
    ui.addTextArea(uiIds.helpBtn, "<p align='center'><a href='event:show_help'>❓ Yardım</a></p>", name, 720, 35, 70, 20, 0x1a0505, 0x0c0202, 0.8, true)
end

local function updateHUD(name)
    runSafe(function()
        if not players[name] then return end
        local hudHtml = string.format([[
<p align='center'><font size='13' face='Lucida Console' color='#FF3232'>
❤️ <b>CAN: %d/100</b> | 🚀 <b>LEŞ: %d</b>
</font></p>
        ]], players[name].health, players[name].kills)
        ui.addTextArea(uiIds.health, hudHtml, name, 300, 25, 200, 30, 0x1a0505, 0x0c0202, 0.8, true)
    end)
end

function eventNewPlayer(name)
    runSafe(function()
        players[name] = {health = 100, kills = 0, lastFire = 0}
        tfm.exec.bindKeyboard(name, 32, true, true)
        tfm.exec.bindKeyboard(name, 72, true, true)
        tfm.exec.respawnPlayer(name)
        drawHelpButton(name)
        updateHUD(name)
        
        tfm.exec.chatMessage("<R>#RoketSavaşları</R> aktif! <VP>Space (Boşluk)</VP> tuşuna basarak roket fırlat ve rakiplerini yok et!", name)
    end)
end

function eventPlayerLeft(name)
    players[name] = nil
end

function eventPlayerRespawn(name)
    runSafe(function()
        if players[name] then
            players[name].health = 100
            updateHUD(name)
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
        local p = tfm.get.room.playerList[name]
        if not p or p.isDead then return end
        
        local now = os.time()
        if key == 32 and (now - players[name].lastFire > 1000) then
            players[name].lastFire = now
            
            local vx = p.isFacingRight and 30 or -30
            local startX = p.isFacingRight and x + 25 or x - 25
            
            local rocketType = p.isFacingRight and 20 or 19
            local rocketId = tfm.exec.addShamanObject(rocketType, startX, y - 5, 0, vx, 0, false)
            table.insert(rockets, {id = rocketId, owner = name, x = startX, y = y - 5, vx = vx})
            
            tfm.exec.displayParticle(1, startX, y - 5, 0, 0, 0, 0, nil)
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

function eventLoop(time, timeLeft)
    runSafe(function()
        for name in pairs(players) do
            updateHUD(name)
        end

        for i = #rockets, 1, -1 do
            local rocket = rockets[i]
            rocket.x = rocket.x + rocket.vx
            tfm.exec.displayParticle(2, rocket.x, rocket.y, 0, 0, 0, 0, nil)

            local exploded = false
            local hitPlayer = nil
            
            for name, data in pairs(players) do
                local p = tfm.get.room.playerList[name]
                if p and not p.isDead and name ~= rocket.owner then
                    local dx = p.x - rocket.x
                    local dy = p.y - rocket.y
                    if (dx*dx + dy*dy) <= 900 then
                        exploded = true
                        hitPlayer = name
                        break
                    end
                end
            end

            if rocket.x < 10 or rocket.x > 790 then
                exploded = true
            end

            if exploded then
                tfm.exec.displayParticle(3, rocket.x, rocket.y, 0, 0, 0, 0, nil)
                tfm.exec.removeObject(rocket.id)
                
                if hitPlayer and players[hitPlayer] then
                    players[hitPlayer].health = players[hitPlayer].health - 35
                    tfm.exec.chatMessage("<R>İsabet aldın! -35 Can</R>", hitPlayer)
                    
                    if players[hitPlayer].health <= 0 then
                        tfm.exec.killPlayer(hitPlayer)
                        if players[rocket.owner] then
                            players[rocket.owner].kills = players[rocket.owner].kills + 1
                            tfm.exec.chatMessage("<VP>[Leş] " .. hitPlayer .. " oyuncusunu patlattın!</VP>", rocket.owner)
                        end
                    end
                end
                
                table.remove(rockets, i)
            end
        end
    end)
end

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
-- Mathematical premium arena XML
local mapXML = [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a0505" /><S T="12" X="150" Y="260" L="220" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b1212" /><S T="12" X="650" Y="260" L="220" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b1212" /><S T="12" X="400" Y="160" L="200" H="20" P="0,0,0.3,0.2,0,0,0,0" o="2b1212" /><S T="12" X="400" Y="260" L="30" H="120" P="0,0,0.3,0.2,0,0,0,0" o="2b1212" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]]
tfm.exec.newGame(mapXML)

for name in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
