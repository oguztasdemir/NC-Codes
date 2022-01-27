default = {width = 50, height = 50}
prot = {}
prot[12] = {
    type = 12,
    width = default.width,
    height = default.height,
    color = 0x5F58F2,
    foreground = false,
    friction = 0.3,
    restitution = 0.2,
    angle = 0,
    miceCollision = true,
    groundCollision = true,
    dynamic = false,
    fixedRotation = false,
    mass = 0,
    linearDamping = 0,
    angularDamping = 0,
}
prot[13] = {
    type = 13,
    width = default.width,
    color = 0x0FF0F0,
    foreground = false,
    friction = 0.3,
    restitution = 0.2,
    angle = 0,
    miceCollision = true,
    groundCollision = true,
    dynamic = false,
    fixedRotation = false,
    mass = 0,
    linearDamping = 0,
    angularDamping = 0,
}
joint = {
    type=0,
    point1 = nil,
    point2 = nil,
    point3 = nil,
    point4 = nil,
    frequency=nil,
    damping=nil,
    line=nil,
    color= 0xFF6600,
    ratio = nil,
    speedMotor = nil,
    forceMotor = nil,
    limit1 = nil,
    limit2 = nil,
    axis  = nil,
    alpha = nil,
    foreground=false,
}
g_id = 0
j_id = 0
spinners = {}
missiles = {}
wheel_delay = 10000
local add_ground = tfm.exec.addPhysicObject
local add_joint = tfm.exec.addJoint
function tfm.exec.addPhysicObject(_id, x, y, ground)
    if g_id >= 9000 then
        return
    end
    if _id == nil then
        g_id = g_id + 1
        add_ground(g_id, x, y, ground)
    else
        add_ground(_id, x, y, ground)
    end
end
function tfm.exec.addJoint(_id, g1, g2, jointt)
    if _id == nil then
        j_id = j_id + 1
        add_joint(j_id, g1, g2, jointt)
    else
        add_joint(_id, g1, g2, jointt)
    end
end
function spaw_spinner(x, y, dyn, color, direction)
    local d = {left = -1, right = 1}
    local d = d[direction] or -1
    local color = color or 0x272727
    local x = x
    local y = y
    local num = 25
    local rad = math.random(70,90)
    local jnts = {}
    local grnds = {}
    local _joint = {
    type = 3,
    forceMotor = d*8735,
    speedMotor = d*7531,
    ratio = 5,
    }
    local dyn = dyn or false
 
    local circle = prot[13]
    circle.dynamic = dyn
    circle.width = 20
    circle.color = color + 10
    circle.mass = 5
 
    local rect = prot[12]
    rect.dynamic = true
    rect.height = 40
    rect.width = 20
    rect.color = color
    rect.mass = 5
    rect.friction = 0
 
    tfm.exec.addPhysicObject(nil, x, y, circle)
    local circle_id = g_id
    grnds[#grnds+1] = circle_id
    for i=1,num do
        local lx = rad * math.cos(math.rad(i*360/num)) +x
        local ly = rad * math.sin(math.rad(i*360/num)) +y
        rect.angle = i*360/num + 90
        tfm.exec.addPhysicObject(nil, lx, ly, rect)
        local p_id = g_id
        grnds[#grnds+1] = p_id
        tfm.exec.addJoint(nil, circle_id, p_id, _joint)
        jnts[#jnts+1] = j_id
    end
    return circle_id, jnts, grnds
end
function slide_ground(id, direction)
    directions = {right = "400,-50", left = "-400,-50", up="0,-1", down = "0,1"}
    speed = {right = 2, left = -2, up = -50, down = 0.5}
    force = {right = 100, left = 100, up = 9999999, down = 100}
    limit = {right = 5, left = 5, up = 0, down = 5}
    tfm.exec.addPhysicObject(nil, -200,-200, {})
    local slider_id = g_id
    local _joint = {
        type=1,
        axis=directions[direction] or "0,0",
        forceMotor=force[direction] or nil,
        limit2 = limit[direction] or nil,
        speedMotor=speed[direction] or 2,
    }
    tfm.exec.addJoint(nil, slider_id, id, _joint)
    return j_id, g_id
end
function hang_ground(id, x, y)
    tfm.exec.addPhysicObject(nil, x, y-200, {type=14, miceCollision=false,groundCollision=false})
    tfm.exec.addJoint(nil, g_id, id, {type=0,frequency=5, damping=0.5})
    return j_id, g_id
end
players = {}
function eventNewPlayer(name)
    system.bindKeyboard(name, 9, false, true) -- Tab
    system.bindKeyboard(name, 32, false, true) -- Space
    system.bindKeyboard(name, 85, false, true) -- U
    system.bindKeyboard(name, 72, false, true) -- H
    system.bindKeyboard(name, 75, false, true) -- J
    system.bindKeyboard(name, 74, false, true) -- K
    system.bindKeyboard(name, 76, false, true) -- L
 
    players[name] = players[name] or {time_start = -wheel_delay, color = math.random( 0x000000, 0xFFFFFF)}
end
function eventKeyboard(name, key, down, x, y)
    if key == 32 then
        if players[name].wheeled then
            for l = players[name].l_id,players[name].h_id do
                tfm.exec.removeJoint(l)
            end
            players[name].h_id = 0
            for k,v in pairs(players[name].grounds) do
                tfm.exec.removePhysicObject(v)
            end
            tfm.exec.removePhysicObject(players[name].ground_joint)
            players[name].grounds = {}
            players[name].wheeled = false
        end
    elseif key == 9 then
        if (not players[name].wheeled) and (os.time()>=wheel_delay+players[name].time_start) then
            local x = tfm.get.room.playerList[name].x
            local y = tfm.get.room.playerList[name].y - 75
            tfm.exec.movePlayer(name, x, y)
            local p , stop, grounds = spaw_spinner(x,y, true, players[name].color, right)
            players[name].grounds = grounds
            local _id, _gr = hang_ground(p, x,y)
            players[name].l_id, players[name].h_id = stop[1], _id
            players[name].circle = p
            players[name].circle_joint = _id
            players[name].ground_joint = _gr
            players[name].wheeled = true
            players[name].time_start = os.time()
        end
    elseif key == 85 then
        tfm.exec.removeJoint(players[name].circle_joint)
        tfm.exec.removePhysicObject(players[name].ground_joint)
        players[name].circle_joint, players[name].ground_joint = slide_ground(players[name].circle, "up")
    elseif key == 75 then
        tfm.exec.removeJoint(players[name].circle_joint)
        tfm.exec.removePhysicObject(players[name].ground_joint)
        players[name].circle_joint, players[name].ground_joint = slide_ground(players[name].circle, "down")
    elseif key == 72 then
        tfm.exec.removeJoint(players[name].circle_joint)
        tfm.exec.removePhysicObject(players[name].ground_joint)
        players[name].circle_joint, players[name].ground_joint = slide_ground(players[name].circle, "left")
    elseif key == 74 then
        tfm.exec.removeJoint(players[name].circle_joint)
        tfm.exec.removePhysicObject(players[name].ground_joint)
        players[name].circle_joint, players[name].ground_joint = slide_ground(players[name].circle, "right")
    elseif key == 76 then
        tfm.exec.removeJoint(players[name].circle_joint)
        tfm.exec.removePhysicObject(players[name].ground_joint)
        local x = tfm.get.room.playerList[name].x
        local y = tfm.get.room.playerList[name].y
        players[name].circle_joint, players[name].ground_joint = hang_ground(players[name].circle, x, y)
    end
end
function eventChatCommand(name, cmd)
    local args = {}
    for arg in cmd:gmatch("[^%s]+") do
        args[#args+1] = arg
    end
    if args[1] == "color" or args[1] == "colour" then
        ui.showColorPicker(1, name, players[name].color, "Choose a color")
    end
end
function eventColorPicked(id , name, color)
    if id == 1 then
        players[name].color = color
    end
end
for k,v in pairs(tfm.get.room.playerList) do eventNewPlayer(k) end