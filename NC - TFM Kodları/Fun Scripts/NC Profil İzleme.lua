p={}
prf={}
about={}
function eventNewPlayer(name)
p[name]={kisi="Seç"}
prf[name]={pey=0,onl=0,model=1}
about[name]={about="<vp>Hakkýmda..."}
end
for name in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
function eventLoop()
for name in pairs(prf) do
ui.addTextArea(1,"Seç: <VP><a href='event:sec'>"..p[name].kisi.."</a> <bv>| <a href='event:profilim'>Profilim</a> |<r> <a href='event:kpt'>System</a> = <j>"..prf[name].onl.." <bv>| <r><a href='event:models'>Model</a> =<j> "..prf[name].model.."",name,5,30,nil,nil,0x000000,0xffffff,0.5,true)
if prf[name].onl==1 and prf[p[name].kisi].model==1 then
ui.addTextArea(3,"<r>"..p[name].kisi.." <br><br><bv>Peynir = <j>"..prf[p[name].kisi].pey.."<j><br><br><br><br><br><br><br><br><a href='event:kpt'><r>[Kapat]",name,400,200,250,nil,0x1,0x1,1,true)
ui.addTextArea(4, "<font size='10'>"..about[p[name].kisi].about.."", name, 403, 260, 246, 58, 0x0, 0x423d3d, 0.5,true)
ui.addTextArea(5, "<r>Model</a> = <vp>"..prf[p[name].kisi].model.."", name, 660, 200, 100, 34, 0x151717, 0x0, 0.7, true)
end

if prf[name].onl==1 and prf[p[name].kisi].model==2 then
ui.addTextArea(3, "<r>"..p[name].kisi.." <br><br><bv>Peynir = <j>"..prf[p[name].kisi].pey.." <vp><font size='10'><br><r>Model</a> = <vp>"..prf[p[name].kisi].model.." </a><br><br><br><a href='event:kpt'><r><font size='15'>[Kapat]", name, 343, 131, 241, 121, 0x1, 0x1, 1, true)
ui.addTextArea(4, "<font size='10'>"..about[p[name].kisi].about.."", name, 594, 129, 174, 124, 0x0, 0x423d3d, 0.5, true)
ui.removeTextArea(5,name)
end

if prf[name].onl==2 and prf[name].model==2 then
ui.addTextArea(3, "<r>"..p[name].kisi.." <br><br><bv>Peynir = <j>"..prf[p[name].kisi].pey.." <vp><font size='10'><br><a href='event:hkreset'>Hakkýmda Reset</a><br><r><a href='event:models'>Model</a> = <vp>"..prf[p[name].kisi].model.." </a><br><br><br><a href='event:kpt'><r><font size='15'>[Kapat]", name, 343, 131, 241, 121, 0x1, 0x1, 1, true)
ui.addTextArea(4, "<font size='10'><a href='event:about'>"..about[p[name].kisi].about.."", name, 594, 129, 174, 124, 0x0, 0x423d3d, 0.5, true)
end
if prf[name].onl==2 and prf[name].model==1 then
ui.addTextArea(3,"<r>"..p[name].kisi.." <br><br><bv>Peynir = <j>"..prf[p[name].kisi].pey.."<br><br><br><br><br><br><br><br><a href='event:kpt'><r>[Kapat]",name,400,200,250,nil,0x1,0x1,1,true)
ui.addTextArea(4, "<font size='10'><a href='event:about'>"..about[p[name].kisi].about.."", name, 403, 260, 246, 58, 0x0, 0x423d3d, 0.5,true)
ui.addTextArea(5, "<vp><a href='event:hkreset'>Hakkýmda Reset</a><br><r><a href='event:models'>Model</a> = <vp>"..prf[p[name].kisi].model.."", name, 660, 200, 100, 34, 0x151717, 0x0, 0.7, true)
end
end
end
function eventTextAreaCallback(id,name,cb)
if cb == "sec" then
Players = "<J><B>Oyuncu:</B></J>\n"
for i,v in pairs(tfm.get.room.playerList) do
Players = Players.."\n<a href='event:sec22"..i.."'>"..i
end
Players = Players.."\n\n<a href='event:kapat'>Kapat</a>"
ui.addTextArea(2, Players, name, 200,200,nil,nil,0x000000,0xffffff,0.5,true)
end
if cb:sub(0,5) == "sec22" then
ui.removeTextArea(2,name)
p[name]={kisi=""..cb:sub(6)..""} 
ui.addTextArea(3,"Ýsim Yukleniyor.. <br><br>Ýstatikler Yukleniyor...<br><br><a href='event:kpt'><r>[Durdur]",name,400,200,100,nil,0x1,0x1,1,true)
ui.removeTextArea(4,name)
prf[name]={pey=prf[name].pey,onl=0,model=prf[name].model}
prf[name].onl=prf[name].onl+1
end
if cb=="kapat" then
ui.removeTextArea(2,name)
end
if cb=="models" then
prf[name].model=prf[name].model+1
ui.removeTextArea(5,name)
if prf[name].model==3 then
prf[name].model=prf[name].model-2
end
end
if cb=="hkreset" then
about[name]={about="<vp>Hakkýmda..."}
end
if cb=="about" then
ui.addPopup(1,2,"Hakkýmda Duzenle", name, 160, 100, nil, true)
end
if cb=="profilim" then
p[name]={kisi=""..name..""}
ui.addTextArea(3,"Ýsim Yukleniyor.. <br><br>Ýstatikler Yukleniyor...<br><br><a href='event:kpt'><r>[Durdur]",name,400,200,100,nil,0x1,0x1,1,true)
prf[name]={pey=prf[name].pey,onl=0,model=prf[name].model}
prf[name].onl=prf[name].onl+2
end
if cb=="kpt" then
ui.removeTextArea(3,name)
ui.removeTextArea(4,name)
ui.removeTextArea(5,name)

p[name]={kisi="Seç"}
prf[name]={pey=prf[name].pey,onl=0,model=prf[name].model}
end
end
function eventPlayerWon(name)
prf[name].pey=prf[name].pey+1
end
function eventPopupAnswer(id, name, anw)
if id== 1 then
about[name]={about=""..anw..""}
end
end