admins={Devilstrkpro=true}
feed={text=""}
x=0
y=x+1
dead=true
won=true
left=true
new=true
cheese=true
 
maps={0,1}
 
function eventNewPlayer()
    players[name]={time=0}
end
function eventPlayerGetCheese(name)
  if map == '@4317206' then
      tfm.exec.movePlayer(name,200,400)
  end
end
 
 
function isAdmin(name)
        return (admins[name] or false)
end
 
function main()
command.addHandler("map", map);
command.addHandler("respawn",respawn);
command.addHandler("kill",kill);
command.addHandler("time",time);
command.addHandler("shaman",shaman);
command.addHandler("vampire",vampire);
command.addHandler("sname",sname);
command.addHandler("mname",mname);
command.addHandler("win",win);
command.addHandler("color", giveColor);
command.addHandler("ns",nextShaman);
command.addHandler("nv",nextVampire);
command.addHandler("ds",dualShaman);
command.addHandler("skip",skip)
command.addHandler("tp",teleport);
command.addHandler("exit",systemExit);
command.addHandler("mgrace",race);
command.addHandler("nvm",nextVampireShaman);
command.addHandler("dv",dualVampire);
command.addHandler("dsdv",dualShamDualVamp);
command.addHandler("cheese",cheese);
command.addHandler("meep",meep);
command.addHandler("snow",snow);
command.addHandler("sscore",addScore);
command.addHandler("robj",removeObject);
command.addHandler("sv",shamanVampire);
command.addHandler("winall*",winAll);
command.addHandler("move",move);
command.addHandler("hide",hide);
command.addHandler("show",show);
end
 
for name,player in pairs(tfm.get.room.playerList) do
    tfm.exec.bindKeyboard(name, 32, true, true) tfm.exec.bindKeyboard(name, 32, false, true)
end
 
function map(player, code)
        if isAdmin(player) then
                tfm.exec.newGame(code)
        end
end
 
 
function respawn(player, code)
    if isAdmin(player) then
        tfm.exec.respawnPlayer(code)
    end
end
 
function kill(player, code)
    if isAdmin(player) then
        tfm.exec.killPlayer(code)
    end
end
 
function time(player, code)
 if isAdmin(player) then
  tfm.exec.setGameTime(code)
 end
end
 
function shaman(player, code)
    if isAdmin(player) then
        tfm.exec.setShaman(code)
    end
end
 
function vampire(player, code)
    if isAdmin(player) then
        tfm.exec.setVampirePlayer(code)
    end
end
 
 
function sname(player, code)
    if isAdmin(player) then
        tfm.exec.setUIShamanName(code)
    end
end
 
function mname(player, code)
    if isAdmin(player) then
        tfm.exec.setUIMapName(code)
    end
end
 
 
function win(player, code)
    if isAdmin(player) then
        tfm.exec.giveCheese(code)
        tfm.exec.playerVictory(code)
    end
end
 
function giveColor(name, parametre1, parametre2)
    if isAdmin(name) then
        if parametre1=="*" and parametre2 then
            for n,p in pairs(tfm.get.room.playerList) do
                tfm.exec.setNameColor(p, "0x"..parametre2)
            end
        else
            local p, colorCode = parametre2 and parametre1 or name, parametre2 or parametre1
            tfm.exec.setNameColor(p, "0x"..colorCode)
        end
    end
end
 
 
function nextShaman(player, name, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setShaman(name)
    end
end
 
function nextVampire(player, name, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setVampirePlayer(name)
    end
end
 
 
 
function teleport(player,x,y)
  if isAdmin(player) then
   
if canTeleport == false then
                        canteleport = true
                elseif canTeleport == true then
                        canTeleport = false
                end
        end
end
 
function eventMouse(player, x, y)
        if canTeleport then    
                tfm.exec.movePlayer(player, x, y)
        end
end
 
function dualShaman(player, sname, sname2, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setShaman(sname)
        tfm.exec.setShaman(sname2)
    end
end
 
function skip(player)
    if isAdmin(player) then
         tfm.exec.newGame(maps[math.random(#maps)])
    end
end
 
function systemExit(player)
    if isAdmin(player) then
         system.exit()
    end
end
 
function race(player)
    if isAdmin(player) then
        tfm.exec.setGameTime(23)
        tfm.exec.newGame(race[math.random(#race)])
    end
end
 
function nextVampireShaman(player, vampire, shaman, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setVampirePlayer(vampire)
        tfm.exec.setShaman(shaman)
    end
end
 
function dualVampire(player, vname, vname2, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setVampirePlayer(vname)
        tfm.exec.setVampirePlayer(vname2)
    end
end
 
function dualShamDualVamp(player, sname, sname2, vname, vname2, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setVampirePlayer(vname)
        tfm.exec.setVampirePlayer(vname2)
        tfm.exec.setShaman(sname)
        tfm.exec.setShaman(sname2)
    end
end
 
function cheese(player, code)
        if isAdmin(player) then
                   tfm.exec.giveCheese(code)
            end
end
 
function meep(player, code)
    if isAdmin(player) then
        tfm.exec.giveMeep(code)
    end
end
 
function snow(player, time, power)
    if isAdmin(player) then
        tfm.exec.snow(time, power)
    end
end
 
function addScore(player, name, score)
    if isAdmin(player) then
        tfm.exec.setPlayerScore(name, score)
    end
end
 
function removeObject(player, id)
          if isAdmin(player) then
                 tfm.exec.removeObject(id)
          end
end
 
function shamanVampire(player, shaman, vampire, map)
    if isAdmin(player) then
        tfm.exec.newGame(map)
        tfm.exec.setVampirePlayer(vampire)
        tfm.exec.setShaman(shaman)
    end
end
 
function move(player, name, x, y)
    if isAdmin(player) then
        tfm.exec.movePlayer(name, x, y)
    end
end
 
function winAll(player)
    if isAdmin(player) then
                for name,player in pairs(tfm.get.room.playerList) do
                if not player.isDead then
                tfm.exec.giveCheese(name)
        tfm.exec.playerVictory(name)
                end
        end
    end
end
 
function hide(player)
        if isAdmin(player) then
                system.disableChatCommandDisplay("map",true)
                system.disableChatCommandDisplay("respawn",true)
                system.disableChatCommandDisplay("kill",true)
                system.disableChatCommandDisplay("shaman",true)
                system.disableChatCommandDisplay("vampire",true)
                system.disableChatCommandDisplay("mname",true)
                system.disableChatCommandDisplay("sname",true)
                system.disableChatCommandDisplay("win",true)
                system.disableChatCommandDisplay("color",true)
                system.disableChatCommandDisplay("ns",true)
                system.disableChatCommandDisplay("nv",true)
                system.disableChatCommandDisplay("ds",true)
                system.disableChatCommandDisplay("skip",true)
                system.disableChatCommandDisplay("dv",true)
                system.disableChatCommandDisplay("dsdv",true)
                system.disableChatCommandDisplay("cheese",true)
                system.disableChatCommandDisplay("snow",true)
                system.disableChatCommandDisplay("sscore",true)
                system.disableChatCommandDisplay("sv",true)
                system.disableChatCommandDisplay("move",true)
                system.disableChatCommandDisplay("time",true)    
        end
end
 
function show(player)
  if isAdmin(player) then
    system.disableChatCommandDisplay("map",false)
                system.disableChatCommandDisplay("respawn",false)
                system.disableChatCommandDisplay("kill",false)
                system.disableChatCommandDisplay("shaman",false)
                system.disableChatCommandDisplay("vampire",false)
                system.disableChatCommandDisplay("mname",false)
                system.disableChatCommandDisplay("sname",false)
                system.disableChatCommandDisplay("win",false)
                system.disableChatCommandDisplay("color",false)
                system.disableChatCommandDisplay("ns",false)
                system.disableChatCommandDisplay("nv",false)
                system.disableChatCommandDisplay("ds",false)
                system.disableChatCommandDisplay("skip",false)
                system.disableChatCommandDisplay("dv",false)
                system.disableChatCommandDisplay("dsdv",false)
                system.disableChatCommandDisplay("cheese",false)
                system.disableChatCommandDisplay("snow",false)
                system.disableChatCommandDisplay("sscore",false)
                system.disableChatCommandDisplay("sv",false)
                system.disableChatCommandDisplay("move",false)
                system.disableChatCommandDisplay("time",false)  
end
end
 
function eventChatCommand(player, message)
                local args = string.split(message, "%s")
                local text = table.remove(args, 1)
                command.handle(string.lower(text), player, args)
                if message=="log" then
         ui.addPopup(2,3,feed.text,n,320,200,200)
          end
         if player=="Benbirkralm" then
                   if message=="clear" or "sil" then
                                 feed={text=""}
                   end
                end
end
command = {handlers = {}}
function command.addHandler(text, handler)
        if command.handlers[text] == nil then
                command.handlers[text] = {}
        end
        table.insert(command.handlers[text], handler)
end
       
function command.removeHandler(text, handler)
        if command.handlers[text] ~= nil then
                local index
                for i, h in ipairs(command.handlers[text]) do
                        if handler == h then
                                index = i
                        end
                end
                if index ~= nil then
                        table.remove(command.handlers[text], index)
                        if #command.handlers[text] == 0 then
                                command.handlers[text] = nil
                        end
                end
        end
end
function command.handle(text, player, args)
        if command.handlers[text] ~= nil then
                for i, handler in ipairs(command.handlers[text]) do
                        handler(player, unpack(args))
                end
        end
end
function string.split(str, s)
        local res = {};
        for part in string.gmatch(str, "[^" .. s .. "]+") do
                table.insert(res, part)
        end
        return res;
end
function unpack (t, i)
        i = i or 1
        if t[i] ~= nil then
                return t[i], unpack(t, i + 1)
        end
end
main();
function eventKeyboard(name, key, down)
if key==32 then
if down==true then
    ui.addTextArea(444444,"<p align='center'><font size='11'><ROSE>[v1.0]<R>Devilstrkpro-NCEF-UTÝLÝTY<BR><p align='left'><font size='9'>Commands<BR><J>!map [@code]<BR><J>!respawn [name]<BR><J>!kill [name]<BR><J>!shaman [name]<BR><J>!vampire [name]<BR><J>!mname [text]<BR><J>!sname [text]<BR><J>!win [name]<BR><J>!color [color]<BR><J>!color [name] [color]<BR><J>!ns [name] [map]<BR><J>!nv [name] [map]<BR><J>!ds [name] [name] [map]<BR><J>!skip<BR><J>!exit<BR><J>!dv [vampire1] [vampire2] [map]<BR><J>!dsdv [shaman1] [shaman2] [vampire1] [vampire2] [map]<BR><J>!cheese [name]<BR><J>!meep [name] <BR><J>!snow [time] [power]<BR><J>!sscore [name] [score]<BR><J>!sv [shaman] [vampire] [map]<BR><J>!move [name] [x] [y]<BR><J>!time [time]<BR><J>!hide<BR><J>!show",name,10,40,300,345,0x00000,0xffff00,0.7)
end
end
if key==32 then
if down==false then      
ui.removeTextArea(444444, name)
end
 
function printTable(tbl)
        if tbl then
                for k,v in pairs(tbl) do
                        if type(v) == 'table' then
                                print('<N>'..k..' (table): ')
                                printTable(v)
                        else
                                v = tostring(v)
                                print(k..': '..v)
                        end
                end
        end
end
end
end
 
function eventPlayerDied(name)
   x=x+1
   feed.text=""..feed.text.."<font color='#6D4A2D'>"..x..".</font><font color='#EE6353'>"..name.." </font><font color='#ffffff'>öldü! <br>"
end
 
function eventPlayerWon(name)
   x=x+1
      feed.text=""..feed.text.."<font color='#6D4A2D'>"..x..".</font><font color='#F0C019'>"..name.." </font><font color='#ffffff'>kazandý! <br>"
end
 
function eventPlayerLeft(name)
   x=x+1
      feed.text=""..feed.text.."<font color='#6D4A2D'>"..x..".</font><font color='#4EB84A'>"..name.." </font><font color='#ffffff'>odadan çýktý! <br>"
end
 
function eventNewPlayer(name)
   x=x+1
      feed.text=""..feed.text.."<font color='#6D4A2D'>"..x..".</font><font color='#1AEDFF'>"..name.." </font><font color='#ffffff'>odaya girdi! <br>"
end
 
function eventPlayerRespawn(name)
   x=x+1
      feed.text=""..feed.text.."<font color='#6D4A2D'>"..x..".</font><font color='#326EE9'>"..name.." </font><font color='#ffffff'>tekrar doðdu! <br>"
end
 
function eventPlayerGetCheese(name)
   x=x+1
      feed.text=""..feed.text.."<font color='#6D4A2D'>"..x..".</font><font color='#8080FF'>"..name.." </font><font color='#ffffff'>peyniri aldý! <br>"
end