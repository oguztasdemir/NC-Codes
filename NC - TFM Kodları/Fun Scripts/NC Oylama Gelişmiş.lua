local jogo1 = "Futbol"
local jogo2 = "Battleground"
local jogo3 = "Satranç"
local ponto1 = 0
local ponto2 = 0
local ponto3 = 0

vote = {}

local fundos = {0,1,2,3,4,5,6,7,8}

local fundo = fundos[math.random(#fundos)]

ui.addTextArea(0, "<p align='center'><font size='25' face='monospace'>Night Club Oylama", nil, 5, 25, 791, 35, 0x000001, 0x000000, 0.8, true)
ui.addTextArea(1, "<font size='21' ><B><BL>"..jogo1.." = <VP>"..ponto1.."", nil, 21, 78, 219, 41, 0x324650, 0x324650, 1, true)
ui.addTextArea(3, "<font size='21'><B><BL>"..jogo2.." = <VP>"..ponto2.."", nil, 290, 78, 219, 41, 0x324650, 0x324650, 1, true)
ui.addTextArea(4, "<font size='21'><B><BL>"..jogo3.." = <VP>"..ponto3.."", nil, 558, 78, 219, 41, 0x324650, 0x324650, 1, true)
ui.addTextArea(5, "<font size='13' face='arial black'><B>Seçmek için: !1", nil, 19, 123, 224, 30, 0x324650, 0x000000, 0, true)
ui.addTextArea(6, "<font size='13' face='arial black'><B>Seçmek için: !2", nil, 289, 123, 224, 30, 0x324650, 0x000000, 0, true)
ui.addTextArea(7, "<font size='13' face='arial black'><B>Seçmek için: !3", nil, 558, 123, 224, 30, 0x324650, 0x000000, 0, true)

tfm.exec.newGame('<C><P F="'..fundo..'" /><Z><S><S L="804" H="69" X="402" Y="415" T="0" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')

function eventNewPlayer(name)
    vote[name] = false
end

for all in pairs(tfm.get.room.playerList) do
eventNewPlayer(all)
end

function eventNewGame()
    for i in pairs(tfm.get.room.playerList) do
    vote[i]=false
    end
end

function eventChatCommand(name, cmd)
    if cmd == "1" and not vote[name] then
        ponto1 = ponto1 + 1
        vote[name] = true
        ui.addTextArea(1, "<font size='21' ><B><BL>"..jogo1.." = <VP>"..ponto1.."", nil, 21, 78, 219, 41, 0x324650, 0x324650, 1, true)
    end
    if cmd == "2" and not vote[name] then
        ponto2 = ponto2 + 1
        vote[name] = true
        ui.addTextArea(3, "<font size='21'><B><BL>"..jogo2.." = <VP>"..ponto2.."", nil, 290, 78, 219, 41, 0x324650, 0x324650, 1, true)
    end
    if cmd == "3" and not vote[name] then
        ponto3 = ponto3 + 1
        vote[name] = true
        ui.addTextArea(4, "<font size='21'><B><BL>"..jogo3.." = <VP>"..ponto3.."", nil, 558, 78, 219, 41, 0x324650, 0x324650, 1, true)
    end
end