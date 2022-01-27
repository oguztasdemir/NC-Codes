builder = "Devilstrkpro" 
 
look = 0
 
--[[
 0 = wood
 1 = ice
 2 = tramp
 3 = lava
 4 = choc
]]
 
custom = false
 
fric = 0.3 -- friction
res = 0.2 -- restitution
col = nil -- color
hei = 10 -- height
 
fric_stored = 0
res_stored = 0
col_stored = nil
 
point_x=nil
point_y=nil
 
gNum = 0
 
system.bindMouse(builder, true)
 
for _,v in pairs({32, 8, 49, 50, 51, 52, 53, 54}) do
    tfm.exec.bindKeyboard(builder, v, true, true)
end
 
system.disableChatCommandDisplay("height", true)
system.disableChatCommandDisplay("custom", true)
 
function eventMouse(name, x, y)
    tfm.exec.displayParticle(9, x, y, 0, 0, 0, 0)
    if point_x == nil then
        point_x = x
        point_y = y
    else
        makeGround(x,y,length(point_x,point_y,x,y), angle(point_x, point_y,x,y))
    end
end
 
function eventNewGame()
    gNum = 0
    point_x=nil
    point_y=nil
end
 
function eventChatCommand(name, cmd)
    local args = {}
    for arg in cmd:gmatch("%S+") do
        table.insert(args, arg)
    end
    if args[1] == "custom" then
        ui.addPopup(1, 2, "Restitution:", name, 726, 20, 70)
        system.bindMouse(builder, false)
        point_x=nil
        point_y=nil
        col=nil
        look = 12
    elseif args[1] == "height" then
        if args[2] then
            hei = tonumber(args[2]) or 0
        end
    end
end
 
function eventPopupAnswer(id, name, answer)
    if id == 1 then
        res = tonumber(answer)
        ui.addPopup(2, 2, "Friction:", name, 726, 20, 70)
    elseif id == 2 then
        fric = tonumber(answer)
        ui.addPopup(3, 2, "Colour eg. FF0000 (if left blank it will be invisible):", name, 646, 20, 150)
    elseif id == 3 then
        if answer:len() > 5 then
            col = '0x'..answer
        end
        ui.addPopup(4, 1, "Would you like to add this to a hotkey (6)?", name, 551, 20, 245)
    elseif id == 4 then
        if answer == "yes" then
            fric_stored = fric
            res_stored  = res
            col_stored = col
            custom = true
        end
        system.bindMouse(builder, true)
    end
end
 
function eventKeyboard(name, key, down, x, y)
    if key == 32 then
        for i=1, gNum do
            tfm.exec.removePhysicObject(i)
        end
        gNum = 0
    elseif key == 8 then
        tfm.exec.removePhysicObject(gNum)
        gNum = gNum - 1
    elseif key == 49 then
        look = 0
        fric = 0.3
        res = 0.2
        col = nil
    elseif key == 50 then
        look = 1
        fric = 0
        res  = 0.2
        col = nil
    elseif key == 51 then
        look = 2
        fric = 0
        res = 1.2
        col = nil
    elseif key == 52 then
        look = 3
        fric = 0
        res = 20
        col = nil
    elseif key == 53 then
        look = 4
        fric = 20
        res = 0.2
        col = nil
    elseif key == 54 then
        if custom then
            look = 12
            fric = fric_stored
            res = res_stored
            col = col_stored
        end
    end
end
 
function makeGround(x,y,length,ang)
    gNum = gNum + 1
    final_x = ((x + point_x)/2)
    final_y = ((y + point_y)/2)
    tfm.exec.addPhysicObject(gNum, final_x, final_y, {type=look or 0, width=length, height = hei, angle=ang, color = col ,friction=fric or 0.3, restitution=res or 0.2})
    point_x=nil
    point_y=nil
end
 
function length(x1, y1, x2, y2)
    lx = (x2 - x1)^2
    ly = (y2 - y1)^2
    return math.sqrt(lx+ly)
end
 
function angle(x1, y1, x2, y2)
    lx = x2 - x1
    ly = y2 - y1
    return math.deg(math.atan2(ly,lx))
end