--@7449777
--@7449778
--@7449779




local settings = {
admin = "Devilstrkpro#0000",
map = "@7449561",
ammo = 2,
force = 50,
recoil = 10,
maxObjects = 30,
ammoTicks = 3,
}

local players = {}
local objects = {}


function main()
objects = queue.new()
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore(false)
tfm.exec.disableAutoShaman(true)
tfm.exec.newGame(settings.map)
end


function eventNewGame()
started=true
end

function eventNewGame()
players = {}
for name in pairs(tfm.get.room.playerList) do
initPlayer(name)
end
end

function initPlayer(name)
players[name] = {ammo = 0}
ui.addTextArea(0, "", name, 10, 30, settings.ammo * 15, 20, 0x010101, 0x000000, 0.9)
system.bindMouse(name, true)
end

function eventMouse(name, x, y)
local player = players[name]
if player and player.ammo > 0 then
-- remove one ammo
ui.removeTextArea(player.ammo * 2 - 1, name)
ui.removeTextArea(player.ammo * 2, name)
player.ammo = player.ammo - 1

local roomPlayer = tfm.get.room.playerList[name]

-- calculate angle between player and click
local dx = x - roomPlayer.x
local dy = y - roomPlayer.y
local angle = math.atan2(dy, dx)

-- calculate speeds to direct arrow and always have the same total speed
local vx = math.cos(angle)
local vy = math.sin(angle)

-- spawn arrow and add to queue
queue.insert(objects, tfm.exec.addShamanObject(35, roomPlayer.x + 20 * vx, roomPlayer.y + 20 * vy, angle*180/math.pi, settings.force * vx, settings.force * vy, false))

local recoil = -vx * settings.recoil
-- workaround to avoid argument exception bug
if recoil <= -1 or recoil >= 1 then
tfm.exec.movePlayer(name, 0, 0, true, recoil, 0, true)
end

-- remove first arrow when there are too many
if objects.size > settings.maxObjects then
tfm.exec.removeObject(queue.remove(objects))
end
end
end

local loopCount = 0
function eventLoop()
-- loopCount resets after a certain amount
if loopCount == 0 then
ammo()
end
loopCount = (loopCount + 1) % settings.ammoTicks
end

function ammo()
for name, player in pairs(players) do
local ammo = player.ammo
if ammo < settings.ammo then
-- add one ammo
player.ammo = ammo + 1
ui.addTextArea(ammo * 2 + 1, "", name, 14 + ammo * 15, 39, 3, 3, 0x990000, 0x990000, 1)
ui.addTextArea(ammo * 2 + 2, "", name, 15 + ammo * 15, 40, 1, 1, 0xff0000, 0xcc0000, 1)
end
end
end

function eventNewPlayer(name)
initPlayer(name)
tfm.exec.respawnPlayer(name)
end

function eventPlayerDied(name)
end


function eventPlayerWon(name)
maps={7449550,7449420,7449561,7449567,7449703,7449700,7449703,7449726,7449728}
tfm.exec.newGame(maps[math.random(#maps)])
tfm.exec.setUIMapName("<VP>Night Arrow <J> - <R>Night Club")

end

-- simple queue for performance, much faster than system table queues, can contain nils
queue = {}
function queue.new()
return {
tail = nil,
head = nil,
size = 0
}
end
function queue.insert(self, v)
local i = {
value = v,
next = nil
}
if self.tail and self.head then
self.tail.next = i
else
self.head = i
end
self.tail = i
self.size = self.size + 1
end
function queue.peek(self)
if self.head then
return self.head.value
else
error("queue is empty")
end
end
function queue.remove(self)
local r = queue.peek(self)
self.head = self.head.next
if not self.head then
tail = nil
end
self.size = self.size - 1
return r
end



function eventPlayerDied(name)
local i=0
local n
for pname,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
n=pname
end
end
if i==1 then
tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
tfm.exec.disableAutoNewGame(true)
tfm.exec.setGameTime(5)
end
end



tfm.exec.setUIMapName("<VP>Night Arrow <J> - <R>Night Club")



function eventNewPlayer(n)
ui.addTextArea(0, "<B> "..n.." <J> Oyuna Katýldý!", nil, 5, 378, 00, 50, 0x000000, 0xcc0000, 1);
end


function eventPlayerGetCheese(player)
ui.addTextArea(1,"<VI> "..player.." <R> Kazandý!",playerList,5,378,00,50,0x324650,0x4F6C7B,0.9,true)
end


----------------------------FLY


function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,88,true,true)
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end

function eventKeyboard(name,key,up,x,y)
if key==88 then
tfm.exec.movePlayer(name,0,0,true,0,-50,false)
end
end
btimer = {}

function eventNewPlayer(name)
tfm.exec.bindKeyboard(name,88,true,true)
end

for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
btimer[name] = os.time()
end

function eventKeyboard(name,key,down,x,y)
if (key==88) and (btimer[name] < os.time() - 5000) then
btimer[name] = os.time()
tfm.exec.movePlayer(name,0,0,true,0,-50,false)
end
end





--------Komut Açma


local tasks = {}
local admin = {Devilstrkpro = true}


textSB = {
  help = "<p align='center'><font size='13'><b><J>Night Arrow</u></b></font></p><br><b><b><R>Oyun Hakkýnda<N></b></u><br>Bu oyunun amacý herkesi <VP>ok<N> ile öldürerek sona kalmaktýr. <br><br><R>Nasýl Ok Atýlýr? <br><VP>Mouse<N> ile hedeflenen yere ok atýlýr. Oklar <VP>2<N> saniyede bir yenilenir ve en fazla <VP>2<N> ok atýlabilir. <br><br><R>Oyun Yapýmcýlarý Kimlerdir? <br><VP>Oyun Tasarýmcýsý:<N> Devilstrkpro <br><VP>Oyun Geliþtiricisi:<N> Zekabat <br><VP>Map Yapýmcýsý:<N> Yadisss. <br><br><R>Ek Bilgiler: <br><N>Kod <R>Night Club Seri<R><N>'sine özel bir koddur. Oynamak isteyenler <J>Devilstrkpro<J><N>'ya söyleyebilir.<br><br><br>";
  commands = "<b><p align='center'><font size='18'><u>Admin Komutlarý</u></font></p></b><br>•<b> !admin name</b> to make the selected player admin.<br>•<b> !announce text</b> to display text to everyone.<br>•<b> !ban/unban name</b> to ban or unban the selected player.<br>•<b> !kill name</b> to kill the selected player.<br>•<b> !reload</b> This will reload the map.<br>•<b> !ball</b> to spawn another ball if no ball appears after 15 seconds.<br>•<b> !time num</b> to set the time to num.<br>•<b> !red/blue name</b> to set the name's team to red or blue.<br>•<b> !spec name</b> to enable or disable spectator mode for the selected player.<br>•<b> !lock/unlock</b> odaya þifre koyar veya þifresi kaldýrýr.<br>•<b> !force num</b> to set a new boost multipler. The default is 1, and the max is 4.<br>•<b> !overtime</b> to manually start overtime mode.<br><br><br>";
  controls = "<b><p align='center'><font size='18'><u>Change Ducking ?</u></font></p></b><br>For this game, you can modify what happens when you press down. The first version (by default) allows you to charge your ducking power via hold and release, this is called useRelease. The second version allows you to immediately traverse down but you cannot modify your speed.<br><br>Do you want to continue using <b>useRelease</b>? <b><a href='event:release_yes'>Yes</a></b> or <B><a href='event:release_no'>No</a></b>.<br>Please press an option, otherwise close this popup.<br><br><br>";
  particles = "<b><p align='center'><font size='18'><u>Hangi Efekt ?</u></font></p></b><br>Bu sayfamýz oyunumuzdaki eðilme tuþuyla çýkan efektleri belirler. Aþaðýdaki butonlara basýnca ortalama en az 3-4 saniye sonra eðildikten sonra çýkar.<br><b><a href='event:particle_0'>• Beyaz Nokta</a><br><a href='event:particle_1'>• Mor Nokta</a><br><a href='event:particle_2'>• Turuncu Nokta</a><br><a href='event:particle_5'>• Kalp</a><br><a href='event:particle_6'>• Baloncuk</a><br><a href='event:particle_13'>• Kýrmýzý Nokta</a><br><a href='event:particle_14'>• Su Balonu</a><br><a href='event:particle_29'>• Yýldýz</a><br><a href='event:particle_32'>• Çiçek</a><br><br><br>";
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
  end


	

function eventChatCommand(n, cmd)
if players[n] then
    if cmd == "mort" or cmd == "afk" then
      if not spectators[n] then
        spectators[n] = true
        red[n] = false
        blue[n] = false
        tfm.exec.killPlayer(n)
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