tmb={}
sayi={"1","2","3","4","5","6","7","8","9","10"}
sayii={"11","12","13","14","15","16","17","18","19","20"}
sayiii={"21","22","23","24","25","26","27","28","29","30"}
sayiiii={"31","32","33","34","35","36","37","38","39","40"}
sayiiiii={"41","42","43","44","45","46","47","48","49","50"}
sayiiiiii={"51","52","53","54","55","56","57","58","59","50"}
sayiiiiiii={"61","62","63","64","65","66","67","68","69","70"}
sayiiiiiiii={"71","72","73","74"}
for _,v in pairs ({'disableAutoNewGame','disableAutoShaman','disableAutoTimeLeft','disableAutoScore'}) do
        tfm.exec[v](true)
end
admin={Devilstrkpro=1}
system.bindMouse("Devilstrkpro")
function eventMouse(name,x,y)
print(""..x..","..y.."")
end
tfm.exec.newGame("@7305619")
sayiiiiiiiii={"79","78","77","76","75"}
sayiiiiiiiiii={"80","81","82","83","84"}
sayiiiiiiiiiii={"85","86","87"}
sayiiiiiiiiiiii={"88"}
sayiiiiiiiiiiiii={"89","89","90","91","92"}
sayiiiiiiiiiiiiii={"93","94","95","96"}
sayiiiiiiiiiiiiiii={"97","98"}
sayiiiiiiiiiiiiiiii={"100","101"}
kelime={"!sayi Yaz !","Acele et !"}
time = 10
kazananism = ""
kazanans = 0
gelsayi = 3
gel = gelsayi
gelicek={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101"}
gelcek = "1004"
for name in pairs(tfm.get.room.playerList) do
tmb[name]={bir=sayi[math.random(#sayi)],iki=sayii[math.random(#sayii)],uc=sayiii[math.random(#sayiii)],dort=sayiiii[math.random(#sayiiii)],bes=sayiiiii[math.random(#sayiiiii)],alti=sayiiiiii[math.random(#sayiiiiii)],yedi=sayiiiiiii[math.random(#sayiiiiiii)],sekiz=sayiiiiiiii[math.random(#sayiiiiiiii)],dokuz=sayiiiiiiiii[math.random(#sayiiiiiiiii)],on=sayiiiiiiiiii[math.random(#sayiiiiiiiiii)],onbir=sayiiiiiiiiiii[math.random(#sayiiiiiiiiiii)],oniki=sayiiiiiiiiiiii[math.random(#sayiiiiiiiiiiii)],onuc=sayiiiiiiiiiiiii[math.random(#sayiiiiiiiiiiiii)],ondort=sayiiiiiiiiiiiiii[math.random(#sayiiiiiiiiiiiiii)],onbes=sayiiiiiiiiiiiiiii[math.random(#sayiiiiiiiiiiiiiii)],onalti=sayiiiiiiiiiiiiiiii[math.random(#sayiiiiiiiiiiiiiiii)],kazan=0}

ui.addTextArea(1, "<font size='10'><b><r><p align='center'>"..tmb[name].bir.."", name, 68, 101, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(2, "<font size='10'><b><r><p align='center'>"..tmb[name].iki.."", name,124, 101, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(3, "<font size='10'><b><r><p align='center'>"..tmb[name].uc.."", name, 177, 100, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(4, "<font size='10'><b><r><p align='center'>"..tmb[name].dort.."", name, 69, 134, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(5, "<font size='10'><b><r><p align='center'>"..tmb[name].bes.."", name, 124, 134, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(6, "<font size='10'><b><r><p align='center'>"..tmb[name].alti.."", name, 178, 134, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(7, "<font size='10'><b><r><p align='center'>"..tmb[name].yedi.."", name, 70, 167, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(8, "<font size='10'><b><r><p align='center'>"..tmb[name].sekiz.."", name, 124, 170, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(9, "<font size='10'><b><r><p align='center'>"..tmb[name].dokuz.."", name, 177, 168, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(10, "<font size='10'><b><r><p align='center'>"..tmb[name].on.."", name, 71, 201, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(11, "<font size='10'><b><r><p align='center'>"..tmb[name].onbir.."", name, 124, 201, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(12, "<font size='10'><b><r><p align='center'>"..tmb[name].oniki.."", name,177, 202, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(13, "<font size='10'><b><r><p align='center'>"..tmb[name].onuc.."", name, 71, 233, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(14, "<font size='10'><b><r><p align='center'>"..tmb[name].ondort.."", name, 124, 233, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(15, "<font size='10'><b><r><p align='center'>"..tmb[name].onbes.."", name, 176, 234, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(16, "<font size='10'><b><r><p align='center'>"..tmb[name].onalti.."", name, 124, 267, nil, nil, 0x1, 0x1, 0.7, true)
end
function eventChatCommand(name,cmd)
if cmd == "sayiadm" and admin[name] then
tmb[name].kazan = tmb[name].kazan + 16
if tmb[name].kazan >= 16 then
kazanans = 1
kazananism = ""..name..""
for sd,s in pairs({"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18"}) do
ui.removeTextArea(s,nil)
end
end
end
if cmd=="sayi" or cmd=="var" and time <=0 and kazanans == 0 then
if tmb[name].bir == gelcek then
tmb[name].bir = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].iki == gelcek then
tmb[name].iki = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].uc == gelcek then
tmb[name].uc = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].dort == gelcek then
tmb[name].dort = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].bes == gelcek then
tmb[name].bes = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].alti == gelcek then
tmb[name].alti = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].yedi == gelcek then
tmb[name].yedi = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].sekiz == gelcek then
tmb[name].sekiz = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].dokuz == gelcek then
tmb[name].dokuz = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].on == gelcek then
tmb[name].on = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].onbir == gelcek then
tmb[name].onbir = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].oniki == gelcek then
tmb[name].oniki = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].onuc == gelcek then
tmb[name].onuc = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].ondort == gelcek then
tmb[name].ondort = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].onbes == gelcek then
tmb[name].onbes = "*"
tmb[name].kazan = tmb[name].kazan + 1 
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
if tmb[name].onalti == gelcek then
tmb[name].onalti = "*"
tmb[name].kazan = tmb[name].kazan + 1 

ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><v><font size='13'>"..name.."<bv> Aldý !", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
gelcek = ""

end
ui.addTextArea(1, "<font size='10'><b><r><p align='center'>"..tmb[name].bir.."", name, 68, 101, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(2, "<font size='10'><b><r><p align='center'>"..tmb[name].iki.."", name,124, 101, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(3, "<font size='10'><b><r><p align='center'>"..tmb[name].uc.."", name, 177, 100, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(4, "<font size='10'><b><r><p align='center'>"..tmb[name].dort.."", name, 69, 134, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(5, "<font size='10'><b><r><p align='center'>"..tmb[name].bes.."", name, 124, 134, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(6, "<font size='10'><b><r><p align='center'>"..tmb[name].alti.."", name, 178, 134, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(7, "<font size='10'><b><r><p align='center'>"..tmb[name].yedi.."", name, 70, 167, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(8, "<font size='10'><b><r><p align='center'>"..tmb[name].sekiz.."", name, 124, 170, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(9, "<font size='10'><b><r><p align='center'>"..tmb[name].dokuz.."", name, 177, 168, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(10, "<font size='10'><b><r><p align='center'>"..tmb[name].on.."", name, 71, 201, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(11, "<font size='10'><b><r><p align='center'>"..tmb[name].onbir.."", name, 124, 201, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(12, "<font size='10'><b><r><p align='center'>"..tmb[name].oniki.."", name,177, 202, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(13, "<font size='10'><b><r><p align='center'>"..tmb[name].onuc.."", name, 71, 233, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(14, "<font size='10'><b><r><p align='center'>"..tmb[name].ondort.."", name, 124, 233, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(15, "<font size='10'><b><r><p align='center'>"..tmb[name].onbes.."", name, 176, 234, nil, nil, 0x1, 0x1, 0.7, true)
ui.addTextArea(16, "<font size='10'><b><r><p align='center'>"..tmb[name].onalti.."", name, 124, 267, nil, nil, 0x1, 0x1, 0.7, true)
if tmb[name].kazan >= 16 then
kazanans = 1
gelcek = "1004"
kazananism = ""..name..""
tfm.exec.newGame("@7309624")
tfm.exec.movePlayer(name,115,224)
tfm.exec.displayParticle(1,200,155,0,4,0,0,nil)
tfm.exec.displayParticle(1,200,155,4,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,-4,0,0,nil)
tfm.exec.displayParticle(1,200,155,-4,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,4,4,0,0,nil)
tfm.exec.displayParticle(1,200,155,-4,-4,0,0,nil)
tfm.exec.displayParticle(1,200,155,-4,4,0,0,nil)
tfm.exec.displayParticle(1,200,155,4,-4,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,4,0,0,nil)
tfm.exec.displayParticle(1,200,155,4,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,3,0,0,nil)
tfm.exec.displayParticle(1,200,155,3,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,-3,0,0,nil)
tfm.exec.displayParticle(1,200,155,-3,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,3,3,0,0,nil)
tfm.exec.displayParticle(1,200,155,-3,-3,0,0,nil)
tfm.exec.displayParticle(1,200,155,-3,3,0,0,nil)
tfm.exec.displayParticle(1,200,155,3,-3,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,3,0,0,nil)
tfm.exec.displayParticle(1,200,155,3,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,2,0,0,nil)
tfm.exec.displayParticle(1,200,155,2,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,-2,0,0,nil)
tfm.exec.displayParticle(1,200,155,-2,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,2,2,0,0,nil)
tfm.exec.displayParticle(1,200,155,-2,-2,0,0,nil)
tfm.exec.displayParticle(1,200,155,-2,2,0,0,nil)
tfm.exec.displayParticle(1,200,155,2,-2,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,2,0,0,nil)
tfm.exec.displayParticle(1,200,155,2,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,1,0,0,nil)
tfm.exec.displayParticle(1,200,155,1,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,-1,0,0,nil)
tfm.exec.displayParticle(1,200,155,-1,0,0,0,nil)
tfm.exec.displayParticle(1,200,155,1,1,0,0,nil)
tfm.exec.displayParticle(1,200,155,-1,-1,0,0,nil)
tfm.exec.displayParticle(1,200,155,-1,1,0,0,nil)
tfm.exec.displayParticle(1,200,155,1,-1,0,0,nil)
tfm.exec.displayParticle(1,200,155,0,1,0,0,nil)
tfm.exec.displayParticle(1,200,155,1,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,4,0,0,nil)
tfm.exec.displayParticle(2,325,80,4,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,-4,0,0,nil)
tfm.exec.displayParticle(2,325,80,-4,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,4,4,0,0,nil)
tfm.exec.displayParticle(2,325,80,-4,-4,0,0,nil)
tfm.exec.displayParticle(2,325,80,-4,4,0,0,nil)
tfm.exec.displayParticle(2,325,80,4,-4,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,4,0,0,nil)
tfm.exec.displayParticle(2,325,80,4,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,3,0,0,nil)
tfm.exec.displayParticle(2,325,80,3,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,-3,0,0,nil)
tfm.exec.displayParticle(2,325,80,-3,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,3,3,0,0,nil)
tfm.exec.displayParticle(2,325,80,-3,-3,0,0,nil)
tfm.exec.displayParticle(2,325,80,-3,3,0,0,nil)
tfm.exec.displayParticle(2,325,80,3,-3,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,3,0,0,nil)
tfm.exec.displayParticle(2,325,80,3,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,-2,0,0,nil)
tfm.exec.displayParticle(2,325,80,-2,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,-2,-2,0,0,nil)
tfm.exec.displayParticle(2,325,80,-2,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,-2,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,-2,0,0,nil)
tfm.exec.displayParticle(2,325,80,-2,0,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,-2,-2,0,0,nil)
tfm.exec.displayParticle(2,325,80,-2,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,-2,0,0,nil)
tfm.exec.displayParticle(2,325,80,0,2,0,0,nil)
tfm.exec.displayParticle(2,325,80,2,0,0,0,nil)
for sd,s in pairs({"0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18"}) do
ui.removeTextArea(s,nil)
end
end
end
end
function eventLoop()
if kazanans == 1 then
ui.addTextArea(19, "<p align='center'><font size='15'><j><b>"..kazananism.." <r>Kazandý !", nil, tfm.get.room.playerList[kazananism].x-60, tfm.get.room.playerList[kazananism].y-70, nil, nil, 0x1, 0x1, 0.6)
end
if time >=0.1 and kazanans == 0 then
time = time - 0.5
ui.addTextArea(18, "<p align='center'><j>["..math.floor(time).."] <vp>Saniye", nil, 332, 375, 145, 22, 0x1, 0x1, 0.2, true)
end
if time <=0 and kazanans == 0 then
gel = gel - 0.5
ui.addTextArea(18, "<p align='center'><j>["..math.floor(gel).."] <v>Saniye", nil, 332, 375, 145, 22, 0x1, 0x1, 0.2, true)
end
for name in pairs(tmb) do
if gel <=0 and kazanans == 0 then
gelcek = gelicek[math.random(#gelicek)]
gel = gelsayi
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>["..gelcek.."]<j><br>Sende yok bu aga", nil, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
if tmb[name].bir == gelcek or tmb[name].iki == gelcek or tmb[name].uc == gelcek or tmb[name].dort == gelcek or tmb[name].bes == gelcek or tmb[name].alti == gelcek or tmb[name].yedi == gelcek or tmb[name].sekiz == gelcek or tmb[name].dokuz == gelcek or tmb[name].on == gelcek or tmb[name].onbir == gelcek or tmb[name].oniki == gelcek or tmb[name].onuc == gelcek or tmb[name].ondort == gelcek or tmb[name].onbes == gelcek or tmb[name].onalti == gelcek then
ui.addTextArea(17, "<font size='20'><b><r><p align='center'>[<vp>"..gelcek.."<r>]<br><bv>"..kelime[math.random(#kelime)].."", name, 590, 36, 164, 57, 0x1, 0x1, 0.4, true)
end
end
end
end