gameStarted = true

KEYS={32, 3}
toDespawn={}
players={}

-- TEAMS
-- -- teamRed={}
teamBlue={}
scores = {
    blue = 0,
    red = 0
}
istatistik = 0
alive = 0
alivePlayers = {}

map = nil
mapList = {
    { mapCode = 20531, spawnRed = { x = 20, y = 265 }, spawnBlue = { x = 1570, y = 265 } },
    { mapCode = 20654, spawnRed = { x = 50, y = 350 }, spawnBlue = { x = 1550, y = 350 } },
    { mapCode = 20697, spawnRed = { x = 60, y = 260 }, spawnBlue = { x = 1540, y = 260 } },
    {
        mapCode = 20698,
        spawnRed = { x = 50, y = 350 },
        spawnBlue = { x = 1550, y = 350 }
    }
}
mapNumber = 0
tfm.exec.disablePhysicalConsumables(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoScore(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoTimeLeft(true)


-- Yöneticiler
admins = {"Devilstrkpro"}

messages = {
    ["tr"] = {
        ["userHasWon"] = "<${color}>${name} <N>kazandı!",
        ["redTeamhasWon"] = "<R>Kırmızı <N>takım kazandı! (${score}<N>)",
        ["blueTeamhasWon"] = "<BV>Mavi <N>takım kazandı! (${score}<N>)",
        ["noTeamWon"] = "<N>Hiçbir takım kazanamadı! (${score}<N>)",
        ["team"] = "Takım"
    },
    ["en"] = {
        ["userHasWon"] = "<${color}>${name} <N>has won!",
        ["redTeamhasWon"] = "<R>Red <N>team won! (${score}<N>)",
        ["blueTeamhasWon"] = "<BV>Blue <N>team won! (${score}<N>)",
        ["noTeamWon"] = "<N>No team has won! (${score}<N>)",
        ["team"] = "Team"
    }
}
roomLang = tfm.get.room.community
if messages[roomLang] == nil then
    roomLang = "en"
end
function getMsg(msgName)
    return messages[roomLang][msgName]
end
function interp(s, tab)
  return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end

function eventKeyboard(playerName,key,down,x,y)
    if (not tfm.get.room.playerList[playerName]) then
        return
    end
    if (key == 32 or key == 3) and not tfm.get.room.playerList[playerName].isDead and gameStarted then
        team = players[playerName][ "team"]
        spawn = players[playerName]["spawn"]
        allow = false
        if team == "red" and x < 800 then
            allow = true
        elseif team == "blue" and x > 800 then
            allow = true
        end

        if allow then
            if os.time()-players[playerName].timestamp > players[playerName]["dragLimit"] then
                local id = tfm.exec.addShamanObject(17, x+(tfm.get.room.playerList[playerName].isFacingRight and 36 or -36), y-20, tfm.get.room.playerList[playerName].isFacingRight and 130 or -130)
                players[playerName].timestamp = os.time()
                table.insert(toDespawn,{os.time(),id})
            end
        end
        if key == 32 and allow then
            tfm.exec.playerVictory(playerName)
        end
    end
end

waitForTeams = 2.5
function eventLoop(time,remaining)
    --[[waitForTeams = waitForTeams-0.5
    if waitForTeams == 0 then
        makeTeams()
    end]]--

    for i,cannon in ipairs(toDespawn) do
        if os.time()-cannon[1] > 3000 then

            tfm.exec.removeObject(cannon[2])
            table.remove(toDespawn,i)
        end
    end
    --print(time..' => '..remaining/1000)
    print(tablelength(alivePlayers))
    if remaining <= 0 or tablelength(alivePlayers) <= 0 then
        map = mapList[math.random(#mapList)]
        tfm.exec.newGame(map.mapCode)
    end
end

function eventNewGame()
    if mapNumber ~= 0 then
        if scores["red"] > scores["blue"] then
            tfm.exec.chatMessage(interp(getMsg("redTeamhasWon"), {score = "<R>"..scores["red"].." <N>- <BV>"..scores["blue"]} ))
        elseif scores["blue"] > scores["red"] then
            tfm.exec.chatMessage(interp(getMsg("blueTeamhasWon"), {score = "<R>"..scores["red"].." <N>- <BV>"..scores["blue"]} ))
        else
            tfm.exec.chatMessage(interp(getMsg("noTeamWon"), {score = "<R>"..scores["red"].." <N>- <BV>"..scores["blue"]} ))
        end
    end
    mapNumber = mapNumber+1

    alive = 0
    waitForTeams = 1
    scores["red"] = 0
    scores["blue"] = 0
    teamRed = {}
    teamBlue = {}
    ui.addTextArea(7701, "<p align=\"center\"><font size=\"22\" color=\"#ff3030\">0</font> - <font size=\"22\" color=\"#3030ff\">0</font></p>", nil, 5, 30, 75, 30, 1, 1, 0.8, true)
    for name,info in pairs(tfm.get.room.playerList) do
        if tfm.get.room.playerList[name].isDead == false then
            alivePlayers[name] = true
        end
    end
    for a,b in pairs(alivePlayers) do
        --print("alive: "..a)
    end
    makeTeams()
end

function makeTeams()
    takim = 0
    local oyuncular = {}
    for isim,detay in pairs(alivePlayers) do
        oyuncular[math.random(100)] = isim
    end
    for i,name in pairs(oyuncular) do
        if takim == 0 then
            tfm.exec.setNameColor(name, 0xff0000) -- kırmızı
            players[name]["team"] = "red"
            table.insert(teamRed, name)
            tfm.exec.movePlayer(name, map.spawnRed.x, map.spawnRed.y)
        else
            tfm.exec.setNameColor(name, 0x0000ff) -- mavi
            players[name]["team"] = "blue"
            table.insert(teamBlue, name)
            tfm.exec.movePlayer(name, map.spawnBlue.x, map.spawnBlue.y)
        end
        if takim == 0 then takim = 1 else takim = 0 end

        players[name]["spawn"] = tfm.get.room.playerList[name].x
        tfm.exec.giveMeep(name)
        --print(tfm.get.room.playerList[name].x)
    end
    --[[for name,info in pairs(tfm.get.room.playerList) do
        print(info.x)
        if info.x <= 800 then
            tfm.exec.setNameColor(name, 0xff0000) -- kırmızı
            players[name]["team"] = "red"
            table.insert(teamRed, name)
        else
            tfm.exec.setNameColor(name, 0x0000ff) -- mavi
            players[name]["team"] = "blue"
            table.insert(teamBlue, name)
        end
        players[name]["spawn"] = tfm.get.room.playerList[name].x
        tfm.exec.giveMeep(name)
        --print(tfm.get.room.playerList[name].x)
    end
    ]]--
    --[[for i=1,#playerList,1 do
        local index=math.random(#playerList)
        local name=playerList[index]
        if i%2==0 then
            table.insert(teamRed,name)
            tfm.exec.setNameColor(name, 0xff0000)
        else
            table.insert(teamBlue,name)
            tfm.exec.setNameColor(name, 0x0000ff)
        end
    table.remove(playerList,index)
    end]]--
end

----------------------------------------------------------------------------------------------------
function eventPlayerGetCheese(playerName)
    team = players[playerName]["team"]
    spawn = players[playerName]["spawn"]
    x = tfm.get.room.playerList[playerName].x
    allow = false
    if team == "red" and x < 800 then
        allow = true
    elseif team == "blue" and x > 800 then
        allow = true
    end
    if allow == true then
        tfm.exec.killPlayer(playerName)
    end
end

function eventPlayerWon(playerName)
    team = players[playerName]["team"]
    scoreUpdate(team)
    if team == "red" then color = "r" else color = "bv" end
    --tfm.exec.chatMessage('<font color="#'..color..'">'..playerName..'</font> <N>adlı oyuncu deliğe girdi!')
    --tfm.exec.chatMessage('<'..color..'>'..playerName..' <N> deliğe girdi!')
    tfm.exec.chatMessage(interp(getMsg("userHasWon"), {color = color, name = playerName} ))
    alivePlayers[playerName] = nil
end

function scoreUpdate(team)
    scores[team] = scores[team]+1
    blueScore = scores["blue"]
    redScore = scores["red"]
        ui.addTextArea(7701, "<p align=\"center\"><font size=\"22\" color=\"#ff3030\">"..redScore.."</font> - <font size=\"22\" color=\"#3030ff\">"..blueScore.."</font></p>", nil, 5, 30, 75, 30, 1, 1, 0.8, true)
end

function eventNewPlayer(playerName)
    for i,key in ipairs(KEYS) do
        system.bindKeyboard(playerName, key, true, true)
    end
    players[playerName]={
        ["timestamp"] = os.time(),
        ["dragLimit"] = 3000
    }
    istatistik = istatistik+1
end

function eventPlayerDied(playerName)
    alivePlayers[playerName] = nil
end

function eventPlayerLeft(playerName)
    istatistik = istatistik-1
    alivePlayers[playerName] = nil
end

for name,player in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
    istatistik = istatistik+1
end
map = mapList[math.random(#mapList)]
tfm.exec.newGame(map.mapCode)


--------------------------------------
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end


------- KOMUTLAR

function eventChatCommand(name,command)
    local arg={}
    for argument in command:gmatch("[^%s]+") do
        table.insert(arg,argument)
    end

    if arg[1] == "draglimit" and has_value(admins, name) then
        if tonumber(arg[3]) then
            if arg[2] == "all" then
                for name,player in pairs(tfm.get.room.playerList) do
                    players[name]["dragLimit"] = arg[3]
                end
                tfm.exec.chatMessage("Odadaki oyuncuların drag yaratma limiti "..arg[3].."ms olarak ayarlandı.", name)
            else
                players[arg[2]]["dragLimit"] = arg[3]
                tfm.exec.chatMessage(arg[2].. " adlı oyuncunun drag yaratma limiti "..arg[3].."ms olarak ayarlandı.", name)
            end
        end
    elseif command:sub(1,1) == "t" then
        if players[name]["team"] == "red" then takim = teamRed else takim = teamBlue end
        for i,isim in pairs(takim) do
            if players[name]["team"] == "red" then color = "r" else color = "bv" end
            tfm.exec.chatMessage("<"..color..">• ["..string.upper(getMsg("team")).."] ["..name.."]<N>"..command:sub(2), isim)
        end
    elseif arg[1] == "np" and has_value(admins, name) then
        map = mapList[math.random(#mapList)]
        tfm.exec.newGame(map.mapCode)
    end

end



commands = {"draglimit", "t", "np"}
for i,c in pairs(commands) do
    system.disableChatCommandDisplay(c)
end