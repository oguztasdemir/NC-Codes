tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoTimeLeft(true)
tfm.exec.disableAfkDeath(true)
options={"drawbattle","batata","braço que gira","braço que n gira"}
 
 
 
 
 
 
 
-------------------------------
tfm.exec.newGame('<C><P /><Z><S /><D><DS Y="-100" X="400" /></D><O /></Z></C>')
votes={}
parent={}
if #options==0 then
    print('<R>ERROR:</R> <font color="#ffffff">no options </font>')
    elseif #options==1 then
    print('<R>ERROR:</R> <font color="#ffffff">1 option for?</font>')
    else
    uis=0
    for _,i in pairs(options) do
        votes[i]={}
        parent[uis]=i
        randomized=math.random(50,200)
        ui.addTextArea(uis*4+90,"",nil,800/#options*uis,randomized-10,30,40,0x6A4A29,0xffffff,1,true)
        ui.addTextArea(uis*4+89,"",nil,800/#options*uis+(800/#options-10)-20,randomized-10,30,40,0x6A4A29,0xffffff,1,true)
        ui.addTextArea(uis*4+88,"",nil,800/#options*uis+30,randomized-20,(800/#options-10)-50,40,0x6A4A29,0xffffff,1,true)
        ui.addTextArea(uis,"<p align=\"center\"><V>"..i.."</V><br><br><a href=\"event:mark\">click to vote</a></p>",nil,800/#options*uis+5,randomized,800/#options-10,400,0x4A2A09,0xffffff,1,true)
       
        tfm.exec.addPhysicObject(uis*3-3,(800/#options*uis+5)+(800/#options-10)/2,randomized,{type=0,height=10,width=800/#options-10,friction=1})
        tfm.exec.addPhysicObject(uis*3-2,(800/#options*uis)+5,randomized+400,{type=0,height=800,width=10,friction=1})
        tfm.exec.addPhysicObject(uis*3-1,(800/#options*uis)+(800/#options-10),randomized+400,{type=0,height=800,width=10,friction=1})
        uis=uis+1
    end
    compose="not voted yet: "
    for i in pairs(tfm.get.room.playerList) do
        compose=compose..i.." "
    end
    ui.addTextArea(-2,"",nil,0,340,800,10,0x00ff00,0x00ff00,1,true)
    ui.addTextArea(-1,compose,nil,0,350,800,100,0x361400,0x361400,1,true)
end
 
function eventTextAreaCallback(id,j,c)
    for v,i in pairs(votes) do
        for b,n in pairs(i) do
            for x,m in pairs(parent) do
                if x==id then
                    if v==m then
                        else
                        return
                    end
                end
            end
        end
    end
    local assign=""
    for v,i in pairs(votes[parent[id]]) do
        if j==i then
            assign=v
        end
    end
    if assign=="" then
        votes[parent[id]][#votes[parent[id]]+1]=j
        else
        votes[parent[id]][assign]=nil
    end
    compose="<p align=\"center\"><V>"..parent[id].."</V><br><br><a href=\"event:mark\">click to vote</a><br>"
    for _,i in pairs(votes[parent[id]]) do
        compose=compose..i.."<br>"
    end
    ui.updateTextArea(id,compose)
    compose={}
    tabl={}
    for i in pairs(tfm.get.room.playerList) do
        compose[#compose+1]=i
        tabl[#tabl+1]=i
    end
    for n,i in pairs(compose) do
        for _,v in pairs(votes) do
        for _,j in pairs(v) do
            if j==i then
                tabl[n]=nil
            end
        end
        end
    end
    compose="not voted yet: "
    for _,i in pairs(tabl) do
        compose=compose..i.." "
    end
    ui.addTextArea(-2,"",nil,0,340,800,10,0x00ff00,0x00ff00,1,true)
    ui.updateTextArea(-1,compose)
end