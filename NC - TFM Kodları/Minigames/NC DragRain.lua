players = {}
timer = 0
countdown = 6
player = nil
ending = false
difficulty = 1
highscore = 0

function main()
    tfm.exec.disableAutoNewGame(true)
    tfm.exec.disableAutoShaman(true)
    tfm.exec.disableAutoTimeLeft(true)
    tfm.exec.disableAutoScore(true)
    tfm.exec.newGame(6159011)
    tfm.exec.setUIMapName("<CH><B>Rain</B>  <N>|  <CH>Highscore : <VP>"..highscore.." secs                                            <N>Time : <V>00:00\n")
end 

function eventLoop(time) 
    timer = timer + 0.5
    if time>3000 and not ending then 
        difficulty = math.ceil(timer/15)
        spawnArrow(difficulty) 
    end
    if timer%1==0 then
        showTime(timer)
    end
    if ending then
        countdown = countdown - 1
        tfm.exec.setUIMapName("<ROSE>The next game starts in "..countdown.."\n")
        if countdown == 0 then
            tfm.exec.newGame(6159011)
        end
    end
end

function showTime(timer)
    local amount = timer / 60
    local mins = math.floor(amount)
    local seconds = math.floor((amount - mins)*60)
    if mins < 10 then
        mins = "0"..tostring(mins)
    end
    if seconds < 10 then
        seconds = "0"..tostring(seconds)
    end
    tfm.exec.setUIMapName("<CH><B>Rain</B>  <N>|  <CH>Highscore : <VP>"..highscore.." secs                                            <N>Time : <V>"..mins..":"..seconds.."\n")
end

function eventNewGame() 
    ui.removeTextArea(1)
    choosePlayer()
    difficulty = 1
    tfm.exec.setUIMapName("<CH><B>Rain</B>  <N>|  <CH>Highscore : <VP>"..highscore.." secs                                            <N>Time : <V>00:00\n")
    timer=0
    countdown=6
    ending = false
    for k,v in pairs(tfm.get.room.playerList) do 
        if k~=player then 
            tfm.exec.killPlayer(k) 
        end 
    end 
end

function eventPlayerDied(name)
    if name == player then
        ending = true
        ui.addTextArea(1, "<V><p align='center'><font size='12'><B>"..player.."</B><J> survived for <VP>".. math.floor(timer) .. " <J>seconds!", nil, 250, 23, 300, nil, 0x000001, nil, 0.8)
        if timer > highscore then
            highscore = math.floor(timer)
        end
    end
end

function spawnArrow(int)
    if int==1 then
        tfm.exec.addShamanObject(17, math.random()*800, -80)
    elseif int==2 then
        tfm.exec.addShamanObject(17, math.random()*800, -80, 180)
    else 
        for i=1, int-2 do
            tfm.exec.addShamanObject(17, math.random()*800, -80, 180)
        end
        tfm.exec.addShamanObject(2, math.random()*800, -80)
    end 
end

function choosePlayer()
    player = players[1]
    table.remove(players, 1)
    table.insert(players, player)
end 

function eventNewPlayer(name) 
    table.insert(players, name)
end 

function eventPlayerLeft(name)
    table.delete(players, name)
end 

function table.delete(tab, val) 
    for k,v in pairs(tab) do 
        if val == v then
            table.remove(tab, k) 
        break end 
    end 
end 

for k,v in pairs(tfm.get.room.playerList) do 
    eventNewPlayer(k) 
end 

main()