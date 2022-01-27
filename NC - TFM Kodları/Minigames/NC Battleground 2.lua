


local settings = {
ammo = 3,
force = 50,
recoil = 10,
maxObjects = 30,
ammoTicks = 3,
}

 
local players = {}
local objects = {}


function main()
objects = queue.new()
tfm.exec.disableAutoScore(true)
tfm.exec.newGame(settings.map)
tfm.exec.newGame('@6731397')
tfm.exec.disableAutoNewGame(true)
end


function eventNewGame()
  updatePlayersList()
 
  ui.removeTextArea(id["one_player"])
  ui.removeTextArea(id["one_player_label"])
 
  letters = {}
  invertLetters = {}
  word = ""
  hasDefinedWord = false
  timer = 0
 
  if getNbPlayers() > 1 then
    master = randomPlayer()
    tfm.exec.movePlayer(master, 400, 90, false, 0, 0, false)
   
    askWord()
    drawPendu()
  else
    removeAll()
   
    ui.addTextArea(id["one_player"], "", nil, 5, 110, 790, 25, 0xC0C0C0, 0x595959, 1f)
    ui.addTextArea(id["one_player_label"], "<p align='center'><BL><font color='#000000'>"..text.more_players.."</font></p>", nil, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f)
   
    drawWord()
    drawPendu()
  end
end


function eventLoop(currentTime, timeRemaining)
  timer = timer + 0.5
  if beginReset then
    ui.removeTextArea(id["ask_word_main"])
    ui.removeTextArea(id["ask_word_button"])
   
    resetTimer = resetTimer + 0.5
   
    ui.addTextArea(id["reset_timer"], "", nil, 5, 110, 790, 25, 0xC0C0C0, 0x595959, 1f)
    if isTimeOut then ui.addTextArea(id["reset_timer_label"], "<p align='center'><BL>"..text.time_out.." <font color='#000000'>"..text.next_turn_1.."<font color='#FF0000'>"..math.floor(10 - resetTimer).."</font>"..text.next_turn_2.."</font></p>", nil, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f) end
    if hasWon then ui.addTextArea(id["reset_timer_label"], "<p align='center'><BL>"..text.word_found.." <font color='#000000'>"..text.next_turn_1.."<font color='#FF0000'>"..math.floor(10 - resetTimer).."</font>"..text.next_turn_2.."</font></p>", nil, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f) end
    if hasLost then ui.addTextArea(id["reset_timer_label"], "<p align='center'><font color='#000000'>"..text.word_not_found.."</font><BL>"..word:gsub("^%l", string.upper).."<font color='#000000'> ! "..text.next_turn_1.."<font color='#FF0000'>"..math.floor(10 - resetTimer).."</font>"..text.next_turn_2.."</font></p>", nil, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f) end
    if hasSkiped then ui.addTextArea(id["reset_timer_label"], "<p align='center'><BL>"..text.pass_turn.."<font color='#000000'> "..text.next_turn_1.."<font color='#FF0000'>"..math.floor(10 - resetTimer).."</font>"..text.next_turn_2.."</font></p>", nil, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f) end
    if hasQuit then ui.addTextArea(id["reset_timer_label"], "<p align='center'><BL>"..text.quit.."<font color='#000000'> "..text.next_turn_1.."<font color='#FF0000'>"..math.floor(10 - resetTimer).."</font>"..text.next_turn_2.."</font></p>", nil, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f) end
  end
 
  checkBestPlayer()
 
  if timer==25 and not hasDefinedWord and getNbPlayers() > 1 then
    isTimeOut = true
    reset()
  end
 
  if resetTimer==10 then
    isTimeOut = false
    hasWon = false
    hasLost = false
    hasSkiped = false
    hasQuit = false
   
    hasToReset = true
   
    reset()
  end
end
 
function eventChatCommand(playerName, message)
  local args = {}
 
  for arg in message:gmatch("[^%s]+") do
    table.insert(args, arg:lower())
  end
 
  if not hasLost and not hasSkiped and not hasQuit and args[1] ~= nil then
    if args[1]==word and playerName ~= master and not hasWon then
      local score = 0
     
      for _,letter in pairs(letters) do
        if letter=="_" then score = score + 1 end
      end
     
      tfm.exec.setPlayerScore(playerName, score, true)
     
      local i = 1
     
      while i <= word:len() do
        if letters[i]~="_" then
          invertLetters[i] = letters[i]
          letters[i] = "_"
        end
       
        i = i + 1
      end
 
      drawWord()
      hasWon = true
      reset()
    end
   
    if args[1]=="skip" and playerName==master and not hasWon and not hasLost and not isTimeOut then
      hasSkiped = true
      reset()
    end
   
    if args[1]:len()==1 and hasDefinedWord and args[1]~= "_" and args[1]~="-" and args[1]~="'" and playerName ~= master then
      local isEntered = false
     
      for _,letter in pairs(lettersEntered) do
        if letter==args[1] then
          isEntered = true
        end
      end
     
      if not isEntered then
        local score = 0
        local idsToRemove = {}
        local isFalse = true
       
        table.insert(lettersEntered, args[1])
       
        for id,letter in pairs(letters) do
          if letter==args[1] then
            table.insert(idsToRemove, id)
            isFalse = false
          end
        end
       
        for _,idToRemove in pairs(idsToRemove) do
          invertLetters[idToRemove] = letters[idToRemove]
          letters[idToRemove] = "_"
        end
       
        score = #idsToRemove
       
        if isFalse then
          if tfm.get.room.playerList[playerName].score > 0 then score = -1 end
          pendu_level = pendu_level + 1
        end
       
        tfm.exec.setPlayerScore(playerName, score, true)
       
        drawWord()
        drawPendu()
      end
    end
  end
end
 
function eventTextAreaCallback(textAreaId, playerName, callback)
  if callback=="callbackAskWord" then
    ui.addPopup(id["ask_word_popup"], 2, text.choose_word, master, 300, 175, 200)
  end
end
 
function eventPopupAnswer(popupId, playerName, answer)
  if popupId==id["ask_word_popup"] and not isTimeOut and master==playerName then
    local choosedWord = tostring(answer)
   
    if checkWord(choosedWord) then
      defineWord(choosedWord)
      hasDefinedWord = true
     
      askWord()
     
      ui.removeTextArea(id["turn"])
      ui.removeTextArea(id["turn_label"])
    end
  end
end
 
function askWord()
  ui.removeTextArea(id["reset_timer"])
  ui.removeTextArea(id["reset_timer_label"])
  ui.removeTextArea(id["ask_word_main"])
  ui.removeTextArea(id["ask_word_button"])
 
  if not hasDefinedWord then
    ui.addTextArea(id["ask_word_main"], "", master, 5, 110, 790, 35, 0xC0C0C0, 0x595959, 1f)
    ui.addTextArea(id["ask_word_button"], "<p align='center'><a href='event:callbackAskWord'>"..text.ask_word.."</a></p>", master, 300, 120, 190, 16, 0x595959, 0x595959, 1f)
   
    for p,_ in pairs(tfm.get.room.playerList) do
      if p~=master then
        ui.addTextArea(id["turn"], "", p, 5, 110, 790, 25, 0xC0C0C0, 0x595959, 1f)
        ui.addTextArea(id["turn_label"], "<p align='center'><font color='#000000'>"..text.turn_of_1.."</font><BL>"..master.."<font color='#000000'>"..text.turn_of_2..text.patientez.."</font></p>", p, 25, 115, 750, 30, 0xC0C0C0, 0xC0C0C0, 0f)
      end
    end
  end
end
 
function defineWord(new_word)
  word = string.lower(string.gsub(new_word, " ", "-"))
 
  letters = {}
 
  local i = 36
 
  while i < 50 do
    ui.removeTextArea(i)
    i = i + 1
  end
 
  for letter in new_word:gmatch"." do
    if letter==" " or letter=="-" then
      table.insert(invertLetters, "-")
      table.insert(letters, "_")
    elseif letter=="'" then
      table.insert(invertLetters, "'")
      table.insert(letters, "_")
    else
      table.insert(letters, letter:lower())
      table.insert(invertLetters, "_")
    end
  end
 
  drawWord()
  drawPendu()
end
 
function drawWord()
  local textId = 36
  local i = 1
  local ancreX = 40
 
  if #word==0 then
    local i = 36
 
    while i < 50 do
      ui.removeTextArea(i)
      i = i + 1
    end
  else
    while i <= word:len() do
      ui.addTextArea(textId, "<p align='center'><font size='40' color='#000000'>"..invertLetters[i]:upper().."</font></p>", nil, ancreX, 150, 40, 60, 0xC0C0C0, 0xC0C0C0, 1f)
      ancreX = ancreX + 60
      textId = textId + 1
      i = i + 1
    end
   
    local finished = true
    local j = 1
   
    while j <= word:len() do
      if invertLetters[j]=="_" then finished = false end
      j = j + 1
    end
   
    if finished then
      hasWon = true
      reset()
    end
  end
end 

function eventPlayerDied(playerName)
  tfm.exec.respawnPlayer(playerName)
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
queue.insert(objects, tfm.exec.addShamanObject(17, roomPlayer.x + 0 * vx, roomPlayer.y + 75 * vy, angle*0/math.pi, settings.force * vx, settings.force * vy, false))
 
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
if i==0 then
tfm.exec.newGame(maps[math.random(#maps)])
elseif i==1 then
tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
tfm.exec.setGameTime(60)
end
end


main()


function eventPlayerDied(n)
ui.addTextArea(1,"<R>"..n.."<VP> Rahmetli Oldu. Allah Rahmet Eylesin,Mekaný Cennet Olsun. ",playerList,5,378,475,50,0x324650,0x4F6C7B,0.9,true)
end