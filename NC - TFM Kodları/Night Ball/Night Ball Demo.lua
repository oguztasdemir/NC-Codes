-- Updates : Particles customisation, RIP Stats, Simple banning system implemented, Overtime.
local admin = {Devilstrkpro = true, Pie = true, Devilstrk = true}
local ball = {currentCoords = {x = 0, y = 0}, ID = 604, spawnCoords = {x = 750, y = 300}}
local banned = {Etho = true}
local blue = {}
local keys = {space = 38, left = 37, up = 32, right = 39, down = 40, a = 65, c = 67, d = 68, e = 69, q = 81, s = 83, h = 72, p = 80, w = 87}
local players = {}
local playerSettings = {direction = 1, pressKey = 0, boost = 0, moveLeft = 0, moveRight = 0, holdTime = math.huge, particleID = 2}
local red = {}
local spectators = {}

-- Settings stoof.
-- Remove me and this game will break. Don't you even dare!
admin["Onkei"] = true
local enabledSoupbot = true
local globalBoostForce = 1
local gameStart = false
local loadedCharges = false
local overTime = false
local score = {red = 0, blue = 0}
local settings = {
  leftKeys = {[keys.left] = true, [keys.a] = true, [keys.q] = true},
  rightKeys = {[keys.right] = true, [keys.d] = true},
  downKeys = {[keys.down] = true, [keys.s] = true},
  upKeys = {[keys.up] = true, [keys.w] = true},
}
local tasks = {}

textSB = {
  help = "<p align='center'><font size='18'><b><u>Night Ball</u></b></font></p><br><u><b>Oyun Hakkýnda</b></u><br>Bu oyun Devilstrkpro ve Devilstrk tarafýndan kodlanmýþtýr. Kod Night Club Seri'sine özel bir koddur. Oynamak isteyenler Devilstrkpro'ya söyleyebilir.<br><br><u><b>Oyun Nasýl Oynanýr?</b></u><br>Oyun kýrmýzý ve mavi takým olmak üzere iki takýmdan oluþur. Takýmlar oyun tarafýndan otomatik seçilir.Oyunun gol atmaktýr.Ard arda zýplamaya basýnca fare uçar, aþaya basýlý tutup çekince faremiz yere hýzla iner.Oyun süresi 5 dakikadýr.<b> <br><br><u><b>Oyun Komutlarý:</b></u><br>•<b> !controls or C</b> kontrol sayfasýný açar.<br>•<b> !particles or P</b> (Üstünde çalýþýlýyor.Þuan bir þey yapamamaktýr.)<br>•<b> !mort</b> faremizi öldürür.<br>•<b> !playtime</b> oyun süresini ayarlar.<br>•<b> !commands or H</b> Komut sayfasýný açar.(Admin komutlarýný sadece oyun kurucularý yapabilmektiedir.)<br><br><b><u>Admin Komutlarý:</u></b><br>•<b> !admin name</b> oyun bitene kadar adý seçilen oyuncuyu admin yapar.<br>•<b> !announce text</b> tüm odanýn görebildiði bir yazý çýkarýr.<br>•<b> !ban/unban name</b> adý yazýlan oyuncuyu banlar veya banlanmýþ bir oyuncucu banýný kaldýrýr.<br>•<b> !kill name</b> adý yazýlan oyuncuyu öldürür.<br>•<b> !reload</b> oyunu tekrardan açar.<br>•<b> !ball</b> 15 saniye içinde yeni top yaratýr.<br>•<b> !time num</b> oyunu bozar.<br>•<b> !red/blue name</b> adý yazýlan oyuncuyu kýrmýzý veya mavi takýma gönderir.<br>•<b> !spec name</b> adý yazýlan oyuncuyu izleyi moduna çevirir<br>•<b> !lock/unlock</b> odaya þifre koyar veya þifreyi kaldýrýr<br>•<b> !overtime</b> Süreyi 5 saniyeye indirir.<br><br><br>";
  commands = "<b><p align='center'><font size='18'><u>Admin Komutlarý</u></font></p></b><br>•<b> !admin name</b> to make the selected player admin.<br>•<b> !announce text</b> to display text to everyone.<br>•<b> !ban/unban name</b> to ban or unban the selected player.<br>•<b> !kill name</b> to kill the selected player.<br>•<b> !reload</b> This will reload the map.<br>•<b> !ball</b> to spawn another ball if no ball appears after 15 seconds.<br>•<b> !time num</b> to set the time to num.<br>•<b> !red/blue name</b> to set the name's team to red or blue.<br>•<b> !spec name</b> to enable or disable spectator mode for the selected player.<br>•<b> !lock/unlock</b> odaya þifre koyar veya þifresi kaldýrýr.<br>•<b> !force num</b> to set a new boost multipler. The default is 1, and the max is 4.<br>•<b> !overtime</b> to manually start overtime mode.<br><br><br>";
  controls = "<b><p align='center'><font size='18'><u>Change Ducking ?</u></font></p></b><br>For this game, you can modify what happens when you press down. The first version (by default) allows you to charge your ducking power via hold and release, this is called useRelease. The second version allows you to immediately traverse down but you cannot modify your speed.<br><br>Do you want to continue using <b>useRelease</b>? <b><a href='event:release_yes'>Yes</a></b> or <B><a href='event:release_no'>No</a></b>.<br>Please press an option, otherwise close this popup.<br><br><br>";
  particles = "<b><p align='center'><font size='18'><u>Change Particles ?</u></font></p></b><br>For this game, whenever you boost, your mouse secretes some particles. By default, it shows orange glitters.<br><br>If you want to change your particle effect, then just choose from one of the options down below.<br><b><a href='event:particle_0'>• White Glitter</a><br><a href='event:particle_1'>• Purple Glitter</a><br><a href='event:particle_2'>• Orange Glitter</a><br><a href='event:particle_5'>• Hearts</a><br><a href='event:particle_6'>• Bubbles</a><br><a href='event:particle_13'>• Red Glitter</a><br><a href='event:particle_14'>• Water Drops</a><br><a href='event:particle_29'>• Yellow Stars</a><br><a href='event:particle_32'>• Flowers</a><br><br><br>";
};

-- Functions galore!
function announceText(text, size)
  ui.addTextArea(0, "<p align='center'><font size='"..size.."'>"..text, nil, 10, 20, 780, 80, 0x324650, 0x89a7f5, 0.7, true)
  tasks[os.time() + 5000] = function() ui.removeTextArea(0, nil) end;
end

-- Someone's super useful thingamabob.
function capitalize(word)
  return string.upper(word:sub(1,1))..string.lower(word:sub(2));
end

boost = {
  Effect = function(n, x, y)
    local player = players[n]
    tfm.exec.movePlayer(n, 0, 0, 0, player.boost * globalBoostForce * player.direction, 0, true)
    local num = math.floor(player.boost / 10) 
    for i = 1, num do
      -- Stole formula from Ninguem.
      tfm.exec.displayParticle(player.particleID, x, y, (math.random(30) - 15) / 5, (math.random(10) - 5) / 5, 0, 0)
    end
    if player.boost > 125 then
      for pn, otherPlayer in pairs(tfm.get.room.playerList) do
        if not otherPlayer.isDead and (red[n] or blue[n]) then
          if player.direction == 1 and (otherPlayer.x < x) then
            tfm.exec.movePlayer(pn, 0, 0, true, -50, 0, true)
          elseif player.direction == -1 and (otherPlayer.x > x) then
            tfm.exec.movePlayer(pn, 0, 0, true, 50, 0, true)
          end
        end
      end
    end
  end,
  Reset = function(n)
    tfm.exec.setPlayerScore(n, 0, false)
    players[n].boost = 0
  end,
}

charges = {
  Detect = function()
    loadedCharges = false
    nails = {}
    if tfm.get.room.xmlMapInfo then
      for object in tfm.get.room.xmlMapInfo.xml:gmatch("<O [^/]+/>") do
        type = tonumber(object:match('C="(%d+)"'))
        if type == 11 then
          table.insert(nails, {x = tonumber(object:match('X="(%d+)"')), y = tonumber(object:match('Y="(%d+)"'))})
          loadedCharges = true
          charges.Load()
        end
      end
    end
  end,
  Load = function()
    for i, nail in ipairs(nails) do
      ui.addTextArea(i + 300, "<p align='center'><font size='20' color='#6A7495'>+25", nil, nail.x - 25, nail.y - 16, nil, nil, 0x000000, 0x000000, nil, false)
    end
  end,
  Reset = function(n)
    local player = players[n]
    if player then
      for i in ipairs(nails) do
        if player.charges[i] then
          player.charges[i] = false
        end
      end
    end
  end,
}

function main()
  tfm.exec.disableAutoNewGame(true)
  tfm.exec.disableAutoShaman(true)
  tfm.exec.disableAutoTimeLeft(true)
  tfm.exec.disableAutoScore(true)
  -- tfm.exec.setRoomMaxPlayers(10)
  print("<VP>Space Ball has loaded successfully!")
  for i, cmd in ipairs({"reload", "ball", "kill", "admin", "unadmin", "announce", "ban", "unban"}) do
    system.disableChatCommandDisplay(cmd)
  end
  -- Auto-admin.
  local num = 0
  local pn
  for n in pairs(tfm.get.room.playerList) do
    eventNewPlayer(n)
    num = num + 1
    pn = n
  end
  if num == 1 then
    admin[pn] = true
  end
end

function newGame()
  local Backgrounds = {0, 1, 2, 5, 7, 8}
  local Grounds = {0, 1, 4, 5, 6, 7, 10, 11}
  local F = Backgrounds[math.random(#Backgrounds)]
  local T = Grounds[math.random(#Grounds)]
  local xml = '@6701126'
  tfm.exec.newGame(xml)
  gameStart = true
  -- tfm.exec.newGame("@6691249")
end

function table.copy(t)
  local t2 = {}
  for k, v in pairs(t) do
    t2[k] = v
  end
  return t2
end

teams = {
  Random = function()
    red = {}
    blue = {}
    local playerList = {}
    for n, player in pairs(players) do
      if spectators[n] or banned[n] then
        tfm.exec.killPlayer(n)
      else
        table.insert(playerList, n)
      end
    end
    for i = 1, #playerList, 1 do
      local index = math.random(#playerList)
      local n = playerList[index]
      if i % 2 == 0 then
        red[n] = true
        tfm.exec.setNameColor(n, 0xFF0000)
        tfm.exec.movePlayer(n, ball.spawnCoords.x - 600, ball.spawnCoords.y)
      else
        blue[n] = true
        tfm.exec.setNameColor(n, 0x0000FF)
        tfm.exec.movePlayer(n, ball.spawnCoords.x + 600, ball.spawnCoords.y)
      end
      table.remove(playerList, index)
    end
  end,
  Join = function(team, n)
    if players[n] then
      if team == red then
        blue[n] = false
        red[n] = true
        tfm.exec.setNameColor(n, 0xFF0000)
        ui.addBotText("<VP>"..n.."<N> kýrmýzý takýma katýldl!", nil)
      elseif team == blue then
        red[n] = false
        blue[n] = true
        tfm.exec.setNameColor(n, 0x0000FF)
        ui.addBotText("<VP>"..n.."<N> mavi takýma katýldý!", nil)
      end
      tfm.exec.killPlayer(n)
      tasks[os.time() + 2000] = function() tfm.exec.respawnPlayer(n) end;
    end
  end,
}

function setKeys(n)
  for i, key in pairs(keys) do
    tfm.exec.bindKeyboard(n, key, true, true)
  end
  if players[n].useRelease then
    for i, key in ipairs({40, 83}) do
      tfm.exec.bindKeyboard(n, key, false, true)
    end
  elseif not players[n].useRelease then
    for i, key in ipairs({40, 83}) do
      tfm.exec.bindKeyboard(n, key, false, false)
    end
  end
end

function setPlayer(n)
  for prop, value in pairs(playerSettings) do
    players[n][prop] = value
  end
end

function ui.addBotText(text, n)
  if enabledSoupbot then
    ui.addTextArea(100, "<V><a href='event:soupBot'>[~NightBot]</a><N> "..text, n, 6, 380, nil, 30, 0x324650, 0x89A7F5, 0.7, true)
  end
end

function ui.addModdedPopup(id, text, n, x, y, width, height)
  if not players[n].openedPopup then
    ui.addTextArea(id, "", n, x +  - 2, y + 18, width + 24, height + 14, 0x2E221B, 0x2E221B, 1, true)
    ui.addTextArea(id + 1, "", n, x + - 1, y + 19, width + 22, height + 12, 0x986742, 0x986742, 1, true)
    ui.addTextArea(id + 2, "", n, x + 2, y + 22, width + 16, height + 6, 0x171311, 0x171311, 1, true)
    ui.addTextArea(id + 3, "", n, x + 3, y + 23, width + 14, height + 4, 0x0C191C, 0x0C191C, 1, true)
    ui.addTextArea(id + 4, "", n, x + 4, y + 24, width + 12, height + 2, 0x24474D, 0x24474D, 1, true)
    ui.addTextArea(id + 5, "", n, x + 5, y + 25, width + 10, height + 0, 0x183337, 0x183337, 1, true)
    ui.addTextArea(id + 6, text, n, x + 6, y + 26, width + 8, height + - 2, 0x324650, 0x324650, 1, true)
    ui.addTextArea(id + 7, "", n, x + 12, y + height - 20 + 25, width - 5, 15, 0x5D7D90, 0x5D7D90, 1, true)
    ui.addTextArea(id + 8, "", n, x + 12, y + height - 20 + 27, width - 5, 15, 0x11171C, 0x11171C, 1, true)
    ui.addTextArea(id + 9, '<p align="center"><a href="event:close@'..id..'"><N>Close</a>', n, x + 12, y + height - 20 + 26, width - 5, 15, 0x3C5064, 0x3C5064, 1, true)
    players[n].openedPopup = true
  end
end

function ui.removeModdedPopup(id, n)
  for id = id, (id + 9) do
    ui.removeTextArea(id, n)
    players[n].openedPopup = false
  end
end

function updateScore()
  tfm.exec.setUIMapName("<j>NÝGHT BALL <bl>- NC'YE ÖZEL MAP<g>   |   <N>Red : <V>"..score.red.."<g>   |   <N>Blue : <V>"..score.blue)
end

function eventNewGame()
  if gameStart then
    announceText("Oyun baþlýyor!!!", 40)
    charges.Detect()
    tfm.exec.setGameTime(300)
    teams.Random()
    for n in pairs(tfm.get.room.playerList) do
      boost.Reset(n)
      charges.Reset(n)
    end
  end
end

function eventKeyboard(n, key, down, x, y)
  local player = players[n]
  if player then
    local timestamp = os.time()
    if (key == keys.e or key == keys.space) and loadedCharges and not tfm.get.room.playerList[n].isDead and (player.pressKey < timestamp - 1000) then
      if player.boost < 150 then
        for i, nail in ipairs(nails) do
          if math.abs(x - nail.x) < 70 and math.abs(y - nail.y) < 70 and not player.charges[i] then
            player.charges[i] = true
            player.boost = player.boost + 25
            tfm.exec.setPlayerScore(n, 25, true)
            ui.removeTextArea(i + 300, n)
            player.pressKey = timestamp
          end
        end
      else
        ui.addBotText("You have too much boost.", n)
      end
    elseif key == keys.h then
      eventChatCommand(n, "help")
    elseif key == keys.p then
      eventChatCommand(n, "particles")
    elseif key == keys.c then
      eventChatCommand(n, "controls")
    elseif settings.leftKeys[key] and not tfm.get.room.playerList[n].isDead then
      player.direction = -1
      player.moveRight = 0
      if timestamp - player.moveLeft < 200 and player.boost > 0 then
        boost.Effect(n, x, y)
        boost.Reset(n)
      else
        player.moveLeft = timestamp
      end
    elseif settings.rightKeys[key] and not tfm.get.room.playerList[n].isDead then
      player.direction = 1
      player.moveLeft = 0
      if timestamp - player.moveRight < 200 and player.boost > 0 then
        boost.Effect(n, x, y)
        boost.Reset(n)
      else
        player.moveRight = timestamp
      end
    elseif settings.downKeys[key] and not tfm.get.room.playerList[n].isDead then
      if player.useRelease then
        if down then
          player.holdTime = timestamp
        else
          local force = (timestamp - player.holdTime) / 10;
          if force > 120 then
            force = 120;
            tfm.exec.displayParticle(player.particleID, x, y, (math.random(30) - 15) / 5, (math.random(10) - 5) / 5, 0, 0)
          end
          tfm.exec.movePlayer(n, 0, 0, 0, 0, force, false)
          player.holdTime = math.huge
        end
      elseif not player.useRelease then
        tfm.exec.movePlayer(n, 0, 0, 0, 0, 70, false)
      end
    elseif settings.upKeys[key] and not tfm.get.room.playerList[n].isDead then
      tfm.exec.movePlayer(n, 0, 0, 0, 0, -50, false)
      tfm.exec.playEmote(n, 15)
    end
  end
end

local loopCountCharges = 0
local loopCountCheckBall = 0
local loopCountSpawnBall = 0
local playTime = 0
function eventLoop(passed, left)
  local timestamp = os.time()
  for when, task in pairs(table.copy(tasks)) do
    if when <= timestamp then
      tasks[when] = nil;
      task()
    end
  end
  if left < 5 then
    if not gameStart then
      ui.removeTextArea(101, nil)
      score = {red = 0, blue = 0}
      newGame()
    elseif gameStart then
      local winningTeam = "Green"
      overTime = false
      if score.red > score.blue then
        winningTeam = "Red"
      elseif score.blue > score.red then
        winningTeam = "Blue"
      elseif score.blue == score.red then
        overTime = true
      end
      if not overTime then
        if loadedCharges then
          for i, value in ipairs(nails) do
            ui.removeTextArea(i + 1000, nil)
          end
        end
        gameStart = false
        tfm.exec.setGameTime(12)
        announceText(""..winningTeam.." TAKIM MAÇI KAZANDI", 40)
        updateScore()
      elseif overTime then
        tfm.exec.setGameTime(300)
        announceText("Maç berabere bitti! Ýlk golü atan maçý kazanýr!", 30)
      end
    end
  end
  if loopCountCharges == 0 and gameStart and loadedCharges and left > 2000 then
    for n in pairs(tfm.get.room.playerList) do
      charges.Reset(n)
    end
    charges.Load()
    ui.addBotText("Charges has been re-energised!", nil)
  end
  if loopCountCheckBall == 0 and gameStart then
    -- This is necessary to prevent matches from jamming up (balls may be launched too fast and therefore get stuck.)
    for i, object in pairs(tfm.get.room.objectList) do
      if object then
        -- print("Object data: "..object.x..", "..object.y..", "..object.vx)
        -- print("ball.currentCoords data: "..ball.currentCoords.x..", "..ball.currentCoords.y)
        if not (object.x > (ball.spawnCoords.x - 10) and object.x < (ball.spawnCoords.x + 10)) then
          if (object.x == ball.currentCoords.x) and (object.y == ball.currentCoords.y) then
            tasks[os.time() + 500] = function() tfm.exec.removeObject(object.id) end;
            ui.addBotText("A new ball will be spawned soon..", nil)
            if object.x < ball.spawnCoords.x then
              score.blue = score.blue + 1
            elseif object.x > ball.spawnCoords.x then
              score.red = score.red + 1
            end
          else
            ball.currentCoords.x = object.x;
            ball.currentCoords.y = object.y;
          end
        end
      end
    end
    updateScore()
  end			
  if loopCountSpawnBall == 0 and gameStart and left > 2000 then
    local ballCount = 0
    local scorer = "Green"
    for i, object in pairs(tfm.get.room.objectList) do
      if (object.x > 30) and (object.x < 1470) then
        ballCount = ballCount + 1
      end
      if object.x < 30 then
        score.blue = score.blue + 1
        scorer = "Blue"
        tasks[os.time() + 500] = function() tfm.exec.removeObject(object.id) end;
      elseif object.x > 1470 then
        score.red = score.red + 1
        scorer = "Red"
        tasks[os.time() + 500] = function() tfm.exec.removeObject(object.id) end;
  ui.addBotText("The <VP>"..scorer.."<N> team has scored!", nil)
      end
    end
    if ballCount == 0 then
      if overTime then
        announceText("ÝNANILMAZZZZ! "..scorer.." takým golü attý.<br>Maç bitti.", 28)
        tfm.exec.setGameTime(7)
        overTime = false
      else
        eventChatCommand("Onkei", "ball")
      end
    end
    updateScore()
  end
  playTime = playTime + 0.5
  loopCountCharges = (loopCountCharges + 1) % 36
  loopCountCheckBall = (loopCountCheckBall + 1) % 6
  loopCountSpawnBall = (loopCountSpawnBall + 1) % 24
end

function eventNewPlayer(n)
  if not players[n] then
    players[n] = {n = n, charges = {}, openedPopup = false, useRelease = true}
    setPlayer(n)
    setKeys(n)
    eventChatCommand(n, "help")
  end
  if banned[n] then
    ui.addTextArea(1, "", n, -2500, -2500, 5000, 5000, 0x0A0A0A, 0x0A0A0A, 1, true)
  else
    if red[n] or blue[n] then
      if red[n] and #red < 5 then
        tasks[os.time() + 2000] = function() tfm.exec.respawnPlayer(n) ui.addBotText("<VP>"..n.." has returned back to the Red team!", nil) end;
      elseif blue[n] and #blue < 5 then
        tasks[os.time() + 2000] = function() tfm.exec.respawnPlayer(n) ui.addBotText("<VP>"..n.." has returned back to the Blue team!", nil) end;
      end
    end
  end
  if admin[n] then
    ui.addBotText("Sen þuan da adminsin.Adminlere özel komutlar kullanmak istiyorsan <VP>!commands<N> yaz.", n)
  end
end

function eventPlayerLeft(n)
  if red[n] then
    ui.addBotText(n.." Oyunu ve kýrmýzý takýmý býraktý. Kýrmýzý takýmda þuan 1 kiþi eksik bulunuyor!", nil)
  elseif blue[n] then
    ui.addBotText(n.." Oyunu ve mavi takýmý býraktý. Mavi takýmda þuan  1 kiþi eksik bulunuyor!", nil)
  end
end

function eventPlayerDied(n)
  local player = players[n]
  tfm.exec.setPlayerScore(n, 0, false)
  if player then
    player.boost = 0
  end
end

function eventPlayerRespawn(n)
  if red[n] then
    tfm.exec.movePlayer(n, ball.spawnCoords.x - 600, ball.spawnCoords.y)
    tfm.exec.setNameColor(n, 0xFF0000)
  elseif blue[n] then
    tfm.exec.movePlayer(n, ball.spawnCoords.x + 600, ball.spawnCoords.y)
    tfm.exec.setNameColor(n, 0x0000FF)
  end
end

function eventTextAreaCallback(id, n, cb)
  if cb:sub(0,5) == "close" then
    ui.removeModdedPopup(cb:sub(7), n)
  end
  if cb == "soupBot" then
    ui.addTextArea(101, "What do you want to do? <b><a href='event:bot_controls'>Change ducking controls</a></b>, <b><a href='event:bot_particles'>customize your particles</a></b>, or <b><a href='event:bot_nothing'>nothing?", n, 6, 355, nil, 30, 0x324650, 0x89A7F5, 0.7, true)
  end
  if cb:sub(0, 3) == "bot" then
    eventChatCommand(n, cb:sub(5))
    ui.removeTextArea(101, n)
  end
  if cb:sub(0, 7) == "release" then
    if players[n] then
      if cb:sub(9) == "yes" then
        players[n].useRelease = true
      elseif cb:sub(9) == "no" then
        players[n].useRelease = false
      end
      setKeys(n)
      ui.addBotText("Your ducking controls has been changed.", n)
    end
  end
  if cb:sub(0, 8) == "particle" then
    if players[n] then
      local num = cb:sub(10)
      players[n].particleID = num
    end
  end
end

function eventChatCommand(n, cmd)
  local arg = {}
  for args in cmd:gmatch("[^%s]+") do
    table.insert(arg, args:lower())
  end
  if admin[n] then
    if cmd:sub(0, 8) == "announce" then
      announceText(cmd:sub(10), 30)
    elseif arg[1] == "ban" and arg[2] then
      local pn = capitalize(arg[2])
      banned[pn] = true
      red[pn] = nil
      blue[pn] = nil
      tfm.exec.killPlayer(pn)
      eventNewPlayer(pn)
      ui.addBotText("<VP>"..pn.."<N> banlanýldý", n)
    elseif arg[1] == "unban" and arg[2] then
      local pn = capitalize(arg[2])
      banned[pn] = false
      ui.removeTextArea(1, pn)
      ui.addBotText("<VP>"..pn.."<N> baný kaldýrýldý", n)
      ui.addBotText("Senin banýn kaldýrýldý", pn)
    elseif arg[1] == "force" then
      if arg[2] then
        local num = tonumber(arg[2])
        if num < 1 or num > 4 then
          globalBoostForce = 1
        else
          globalBoostForce = num
        end
        ui.addBotText("The boost multiplier is now <VP>"..globalBoostForce.."<N>.", n)
      else
        globalBoostForce = 1
        ui.addBotText("The boost multiplier has been set back to default.", n)
      end
    elseif arg[1] == "kill" then
      local pn = capitalize(arg[2])
      tfm.exec.killPlayer(pn)
      ui.addBotText("Afk olduðun için maça diðer tur gireceksin.", pn)
    elseif cmd == "reload" or cmd == "skip" then
      tfm.exec.setGameTime(6)
      ui.addBotText("Oyun birkaç saniye sonra baþlayacaktýr.", nil)
      gameStart = false
      overTime = false
    elseif arg[1] == "ball" then
      for i, object in pairs(tfm.get.room.objectList) do
        if object.x > 30 and object.x < 1470 then
          tasks[os.time() + 500] = function() tfm.exec.removeObject(object.id) end;
        end
      end
      tfm.exec.addShamanObject(ball.ID,  ball.spawnCoords.x,  ball.spawnCoords.y)
      for n in pairs(tfm.get.room.playerList) do
        if red[n] then
          tfm.exec.movePlayer(n, ball.spawnCoords.x - 600, ball.spawnCoords.y)
        elseif blue[n] then
          tfm.exec.movePlayer(n, ball.spawnCoords.x + 600, ball.spawnCoords.y)
        end
      end
    elseif arg[1] == "time" then
      if arg[2] then
        local num = tonumber(arg[2])
        if num > 12 then
          tfm.exec.setGameTime(num)
        else
          tfm.exec.setGameTime(12)
          gameStart = false
          overTime = false
        end
      else
        tfm.exec.setGameTime(12)
      end
    elseif (arg[1] == "red" or arg[1] == "blue") and arg[2] then
      local pn = capitalize(arg[2])
      if players[pn] then
        if spectators[n] or banned[n] then
          ui.addBotText("This player is a spectator.", n)
        else
          if arg[1] == "red" then
            teams.Join(red, pn)
          else
            teams.Join(blue, pn)
          end
        end
      else
        ui.addBotText("Bu oyuncu yok", n)
      end
    elseif arg[1] == "score" and arg[3] then
      if tonumber(arg[2]) and tonumber(arg[3]) then
        score.red = arg[2]
        score.blue = arg[3]
      end
      updateScore()
    elseif arg[1] == "spec" then
      if arg[2] then
        local pn = capitalize(arg[2])
        if spectators[pn] then
          spectators[pn] = false
          ui.addBotText("You are no longer a spectator.", pn)
          ui.addBotText("<VP>"..pn.."<N> is no longer a spectator.", n)
        else
          spectators[pn] = true
          red[pn] = false
          blue[pn] = false
          tfm.exec.killPlayer(pn)
          ui.addBotText("You are now a spectator.", pn)
          ui.addBotText("<VP>"..pn.."<N> is now a spectator.", n)
        end
      end
    elseif arg[1] == "lock" then
      if arg[2] then
        local num = tonumber(arg[2])
        tfm.exec.setRoomMaxPlayers(num)
        ui.addBotText("This room has been locked to <VP>"..num.."<N> players.", n)
      else
        local num = 0
        for n in pairs(tfm.get.room.playerList) do
          num = num + 1
        end
        tfm.exec.setRoomMaxPlayers(num)
        ui.addBotText("This room has been locked to <VP>"..num.."<N> players.", n)
      end
    elseif cmd == "unlock" then
      tfm.exec.setRoomMaxPlayers(50)
      ui.addBotText("This room has been unlocked.", n)
    elseif arg[1] == "admin" and arg[2] then
      local pn = capitalize(arg[2])
      admin[pn] = true
      ui.addBotText("<VP>"..pn.."<N> is now an admin.", n)
      ui.addBotText("You are now an admin.", pn)
    elseif arg[1] == "unadmin" and arg[2] and (n == "Onkei") then
      local pn = capitalize(arg[2])
      admin[pn] = false
      ui.addBotText("<VP>"..pn.."<N> is no longer an admin.", n)
    elseif cmd == "overtime" then
      score.red = 0
      score.blue = 0
      tfm.exec.setGameTime(5)
      ui.addBotText("Ek zaman birazdan baþlayacak.", nil)
    end
  end
  if players[n] then
    if cmd == "mort" or cmd == "afk" then
      if not spectators[n] then
        spectators[n] = true
        red[n] = false
        blue[n] = false
        tfm.exec.killPlayer(n)
        ui.addBotText("Sen þuan izleyici moddasýn.Sadece maçý izleyebilirsin.", n)
      end
    elseif cmd == "playtime" then
      ui.addBotText("This module has been launched for <VP>"..playTime.."<N> seconds!", n)
    elseif cmd == "help" or cmd == "info" or cmd == "about" then
      ui.addModdedPopup(200, textSB.help, n, 175, 65, 450, 230)
    elseif cmd == "commands" then
      ui.addModdedPopup(200, textSB.commands, n, 175, 65, 450, 230)
    elseif cmd == "controls" then
      ui.addModdedPopup(200, textSB.controls, n, 175, 80, 450, 200)
    elseif cmd == "particles" then
      ui.addModdedPopup(200, textSB.particles, n, 175, 80, 450, 200)
    end
  end
end

main()
eventChatCommand("Onkei", "reload")