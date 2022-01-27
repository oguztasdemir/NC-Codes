-- Updates : Particles customisation, RIP Stats, Simple banning system implemented, Overtime.

local admin = {Devilstrkpro = true}
local ball = {currentCoords = {x = 0, y = 0}, ID = 604, spawnCoords = {x = 750, y = 300}}
local banned = {Etho = true}
local blue = {}
local keys = {space = 999, left = 37, up = 999, right = 39, down = 40, a = 65, c = 67, d = 68, e = 69, q = 81, s = 83, h = 72, p = 80, w = 999}
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
  help = "<p align='center'><font size='18'><b><u>Night Ball</u></b></font></p><br><u><b>Oyun Hakkında</b></u><br>Bu oyun <J>Devilstrkpro<J><N> tarafından kodlanmıştır. Kod <R>Night Club Seri<R><N>'sine özel bir koddur. Oynamak isteyenler için bu kod Github hesabına yüklenecektir.<br><br><b><J>Oyun Nasıl Oynanır?<n></b></u><br>Oyun <R>kırmızı<N> ve <BL>mavi<N> takım olmak üzere iki takımdan oluşur. Takımlar <VP>oyun tarafından<N> otomatik seçilir.Oyunun amacı diğer takımdan fazla puan kazanmaktır. <VP>Aşağı Tuşu'na<n> 3 saniye basılı tutup tutup çekince faremiz yere hızla iner. Oyun süresi <VP>5<N> dakikadır.<b> <br><J><br><u><b>Oyun Komutları:</b></u><J><br>�<b> <R>!controls <J>veya <R>C:</b><N> Kontrol sayfasını açar.<br><J>�<b> <R>!particles <J>veya <R>P:</b><N> Aşağı tuşuna basma özelliğinde çıkkacak efekti seçer.<br><J>�<b> <R>!mort:</b><N> Faremizi öldürür.<br><J>�<b> <R>!playtime</b><N> Oyun süresini ayarlar.<br><J>�<b> <R>!commands<J> veya  <R>H:</b><N> Komut sayfasını açar.(Admin komutlarını sadece oyun adminleri yapabilmektedir.)<br><J><br><b><u>Admin Komutları:</u></b><br><J>�<b> <R>!admin name:<N></b> Oyun bitene kadar adı seçilen oyuncuyu admin yapar.<br><J>�<b> <R>!announce text:<N></b> Tüm odanın görebildiği bir yazı yazar.<br><J>�<b> <R>!ban/unban name:<N></b> Adı yazılan oyuncuyu banlar veya banlanmış bir oyuncucu banını kaldırır.<br><J>�<b> <R>!kill name:<N></b> Adı yazılan oyuncuyu öldürür.<br><J>�<b> <R>!reload:<N></b> Oyunu tekrardan açar.<br><J>�<b> <R>!ball:</b><N> 15 saniye içinde yeni top yaratır.<br><J>�<b> <R>!time num:</b><N> Oyunu bozar.<br><J>�<b> <R>!red name/<BL>blue name:</b><N> Adı yazılan oyuncuyu kırmızı veya mavi takıma gönderir.<br><J>�<b> <R>!spec name:</b><N> Adı yazılan oyuncuyu izleyici moduna çevirir.<br><J>�<b> <R>!lock/unlock:</b><N> Odaya şifre koyar veya şifreyi kaldırır.<br><J>�<b> <R>!overtime:</b><N> Süreyi 5 saniyeye indirir.<br><br><br>";
  commands = "<b><p align='center'><font size='18'><u>Oyun Komutları</u></font></p></b><br><J>�<b> <R>!controls <J>veya <R>C:</b><N> Kontrol sayfasını açar.<br><J>�<b> <R>!particles <J>veya <R>P:</b><N> Aşağı tuşuna basma Özelliğinde çıkacak efekti seçer.<br><J>�<b> <R>!mort:</b><N> Faremizi öldürür.<br><J>�<b> <R>!playtime</b><N> Oyun süresini ayarlar.<br><J>�<b> <R>!commands<J> veya  <R>H:</b><N> Komut sayfasını açar.(Admin komutlarını sadece oyun adminleri yapabilmektedir.)<br><J><br><b><u>Admin Komutları:</u></b><br><J>�<b> <R>!admin name:<N></b> Oyun bitene kadar adı seçilen oyuncuyu admin yapar.<br><J>�<b> <R>!announce text:<N></b> Tüm odanın görebildiği bir yazı çıkarır.<br><J>�<b> <R>!ban/unban name:<N></b> Adı yazılan oyuncuyu banlar veya banlanman bir oyuncunun banını kaldırır.<br><J>�<b> <R>!kill name:<N></b> Adı yazılan oyuncuyu öldürür.<br><J>�<b> <R>!reload:<N></b> Oyunu tekrardan açar.<br><J>�<b> <R>!ball:</b><N> 15 saniye içinde yeni top yaratır.<br><J>�<b> <R>!time num:</b><N> Oyunu bozar.<br><J>�<b> <R>!red name/<BL>blue name:</b><N> Adı yazılan oyuncuyu kırmızı veya mavi takıma gönderir.<br><J>�<b> <R>!spec name:</b><N> Adı yazılan oyuncuyu izleyici moduna çevirir.<br><J>�<b> <R>!lock/unlock:</b><N> Odaya şifre koyar veya şifreyi kaldırır.<br><J>�<b> <R>!overtime:</b><N> Süreyi 5 saniyeye indirir.<br><br><br>";
  controls = "<b><p align='center'><font size='18'><u>Boost</u></font></p></b><br><J>Boost Nedir?<br><N>Boost, aşağı tuşuna 3 saniye basınca hızlı inmeyi sağlayan komutun adıdır.<br>Boost 2 türlü hızlanmayla gerekledir.<br><VP>Etkili inme<N> hızlanma aşağı tuşuna basılı tutarak gerekledir. Yavaş kullanılır fakat hızlı iner.<br><VP>Yavaş inme:<N> Hızlanma açınca tuşuna basar basmaz gerçekleşir. Hızlı kullanılır fakat yavaş iner.<br><br>Hangi Boostu kullanmak istiyorsun? <b></b>? <b><a href='event:release_yes'><J><br>? <VP>Etkili inme<N></a></b> <br><vp><B><a href='event:release_no'><J>?<VP>Yavaş inme<N></a></b>.<br><br><br>";
  particles = "<b><p align='center'><font size='18'><u>Hangi Efekt ?</u></font></p></b><br>Boost özelliğini kullandıktan sonra altında çıkkacak işaretin ne olmasını istiyorsan onu seç.<br><b><a href='event:particle_0'><J>� <VP> Beyaz Nokta</a><br><a href='event:particle_1'><J>� <VP> Mor Nokta</a><br><a href='event:particle_2'><J>� <VP> Turuncu Nokta</a><br><a href='event:particle_5'><J>� <VP> Kalp</a><br><a href='event:particle_6'><J>� <VP> Baloncuk</a><br><a href='event:particle_13'><J>� <VP> Kırmızı Nokta</a><br><a href='event:particle_14'><J>� <VP> Su Balonu</a><br><a href='event:particle_29'><J>� <VP> Yıldız</a><br><a href='event:particle_32'><J>� <VP> çiçek</a><br><br><br>";
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
            tfm.exec.movePlayer(pn, 0, 0, true, -10, 0, true)
          elseif player.direction == -1 and (otherPlayer.x > x) then
            tfm.exec.movePlayer(pn, 0, 0, true, 10, 0, true)
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
      ui.addTextArea(i + 350, "<p align='center'><font size='20' color='#6A7495'>+25", nil, nail.x - 25, nail.y - 16, nil, nil, 0x000000, 0x000000, nil, false)
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
  tfm.exec.setRoomMaxPlayers(10)
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
  -- tfm.exec.newGame("@6104915")
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
        ui.addBotText("<VP>"..n.."<N> kırmızı tak�ma katıldı!", nil)
      elseif team == blue then
        red[n] = false
        blue[n] = true
        tfm.exec.setNameColor(n, 0x0000FF)
        ui.addBotText("<VP>"..n.."<N> mavi takıma katıldı!", nil)
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
    ui.addTextArea(id + 9, '<p align="center"><a href="event:close@'..id..'"><N>Kapat</a>', n, x + 12, y + height - 20 + 26, width - 5, 15, 0x3C5064, 0x3C5064, 1, true)
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
ui.addTextArea(3,"<font size='50'>"..score.red.."</a></p>",n,650.5,50,00,00,0x00001,0xFF0000,0.999999)
ui.addTextArea(4,"<font size='50'>"..score.blue.."</a></p>",n,900.5,50,00,00,0x00001,0x001CFF,0.999999)
  tfm.exec.setUIMapName("<j>NIGHT BALL <bl>- <R>NC'YE OZEL MAP")
end

function eventNewGame()
  if gameStart then
    announceText("Oyun başlıyor!!!", 40)
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
        ui.addBotText("Çok fazla Boost kullandın.", n)
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
        winningTeam = "Kırmızı"
      elseif score.blue > score.red then
        winningTeam = "Mavi"
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
        announceText(" "..winningTeam.." Takım kazandı!!!", 40)
        updateScore()
      elseif overTime then
        tfm.exec.setGameTime(300)
        announceText("Ma� berabere bitti! İlk golü atan maçı kazanır!", 30)
      end
    end
  end
  if loopCountCharges == 0 and gameStart and loadedCharges and left > 2000 then
    for n in pairs(tfm.get.room.playerList) do
      charges.Reset(n)
    end
    charges.Load()
    ui.addBotText("Ayarlama yeniden yapıldı!", nil)
  end
  if loopCountCheckBall == 0 and gameStart then
    -- This is necessary to prevent matches from jamming up (balls may be launched too fast and therefore get stuck.)
    for i, object in pairs(tfm.get.room.objectList) do
      if object then
        -- print("Object data: "..object.x..", "..object.y..", "..object.vx)
        -- print("ball.currentCoords data: "..ball.currentCoords.x..", "..ball.currentCoords.y)
        if not (object.x > (ball.spawnCoords.x - 10) and object.x < (ball.spawnCoords.x + 10)) then
          if (object.x == ball.currentCoords.x) and (object.y == ball.currentCoords.y) then
            tasks[os.time() + 300] = function() tfm.exec.removeObject(object.id) end;
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
      if (object.x > 0) and (object.x < 1600) then
        ballCount = ballCount + 1
      end
      if object.x < -50 then
        score.blue = score.blue + 1
        scorer = "Blue"
        tasks[os.time() + 500] = function() tfm.exec.removeObject(object.id) end;
      elseif object.x > 1650 then
        score.red = score.red + 1
        scorer = "Red"
        tasks[os.time() + 500] = function() tfm.exec.removeObject(object.id) end;
  ui.addBotText("The <VP>"..scorer.."<N> takım golü attı!", nil)
      end
    end
    if ballCount == 0 then
      if overTime then
        announceText("İNANILMAZZZZ! "..winningTeam.." <br>Maç bitti.", 28)
        tfm.exec.setGameTime(7)
        overTime = false
      else
        eventChatCommand("Devilstrk", "ball")
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
    ui.addBotText("Sen şuan da adminsin.Adminlere özel komutlar kullanmak istiyorsan <VP>!commands<N> yaz.", n)
  end
end

function eventPlayerLeft(n)
  if red[n] then
    ui.addBotText(n.." Oyuncu odadan çıktı. Kırmızı takımda şuan 1 kişi eksik bulunuyor!", nil)
  elseif blue[n] then
    ui.addBotText(n.." Oyuncu odadan çıktı. Mavi takımda şuan  1 kişi eksik bulunuyor!", nil)
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
    ui.addTextArea(101, "Ne Yapmak istiyorsun? <b><a href='event:bot_controls'>Change ducking controls</a></b>, <b><a href='event:bot_particles'>customize your particles</a></b>, or <b><a href='event:bot_nothing'>nothing?", n, 6, 355, nil, 30, 0x324650, 0x89A7F5, 0.7, true)
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
      ui.addBotText("Kontrollerin değişti.", n)
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
      ui.addBotText("<VP>"..pn.."<N> banlandı", n)
    elseif arg[1] == "unban" and arg[2] then
      local pn = capitalize(arg[2])
      banned[pn] = false
      ui.removeTextArea(1, pn)
      ui.addBotText("<VP>"..pn.."<N> banı kaldırıldı", n)
      ui.addBotText("Senin banın kaldırıldı", pn)
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
        ui.addBotText("Boostun varsayılan olarak ayarlandı.", n)
      end
    elseif arg[1] == "kill" then
      local pn = capitalize(arg[2])
      tfm.exec.killPlayer(pn)
      ui.addBotText("Afk olduğun için maça diğer tur gireceksin.", pn)
    elseif cmd == "reload" or cmd == "skip" then
      tfm.exec.setGameTime(6)
      ui.addBotText("Oyun birkaç saniye sonra başlayacaktır.", nil)
      gameStart = false
      overTime = false
    elseif arg[1] == "ball" then
      for i, object in pairs(tfm.get.room.objectList) do
        if object.x > 30 and object.x < 1470 then
          tasks[os.time() + 350] = function() tfm.exec.removeObject(object.id) end;
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
          ui.addBotText("Artık izleyicisin.", n)
        else
          if arg[1] == "red" then
            teams.Join(red, pn)
          else
            teams.Join(blue, pn)
          end
        end
      else
        ui.addBotText("Böyle oyuncu bulunmamaktadır.", n)
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
          ui.addBotText("Artık izleyici değilsin!", pn)
          ui.addBotText("<VP>"..pn.."<N> artık izleyici değil!", n)
        else
          spectators[pn] = true
          red[pn] = false
          blue[pn] = false
          tfm.exec.killPlayer(pn)
          ui.addBotText("Artık izleyicisin.", pn)
          ui.addBotText("<VP>"..pn.."<N> artık izleyici.", n)
        end
      end
    elseif arg[1] == "lock" then
      if arg[2] then
        local num = tonumber(arg[2])
        tfm.exec.setRoomMaxPlayers(num)
        ui.addBotText("Oda <VP>"..num.."<N> kişi olarak kilitlendi.", n)
      else
        local num = 0
        for n in pairs(tfm.get.room.playerList) do
          num = num + 1
        end
        tfm.exec.setRoomMaxPlayers(num)
        ui.addBotText("Oda <VP>"..num.."<N> kişi olarak kilitlendi.", n)
      end
    elseif cmd == "unlock" then
      tfm.exec.setRoomMaxPlayers(50)
      ui.addBotText("Oda Kilidi Kaldırıldı.", n)
    elseif arg[1] == "admin" and arg[2] then
      local pn = capitalize(arg[2])
      admin[pn] = true
      ui.addBotText("<VP>"..pn.."<N> art�k admin.", n)
      ui.addBotText("Artık adminsin.", pn)
    elseif arg[1] == "unadmin" and arg[2] and (n == "Devilstrk") then
      local pn = capitalize(arg[2])
      admin[pn] = false     
 ui.addBotText("<VP>"..pn.."<N> art�k admin de�il!", n)
    elseif cmd == "overtime" then
      score.red = 0
      score.blue = 0
      tfm.exec.setGameTime(5)
      ui.addBotText("Zaman yakında bitecek!", nil)
    end
  end
  if players[n] then
    if cmd == "mort" or cmd == "afk" then
      if not spectators[n] then
        spectators[n] = true
        red[n] = false
        blue[n] = false
        tfm.exec.killPlayer(n)
        ui.addBotText("Şzleyici modundasın! Sadece maçı izleyebilirsin!!!")
      end
    elseif cmd == "playtime" then
      ui.addBotText("Maçın bitimine kalan süre <VP>"..playTime.."<N> olarak ayarlandı!", n)
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
eventChatCommand("Devilstrk", "reload")