--Created by Zagear and translated from AR to EN by Hmiida
admin = "Devilstrkpro#000" -- Admin's name
password = "NCLA" -- Password
players={} -- Don't write anything here
system.disableChatCommandDisplay("password")
 
function pw(name)
print("<font color='#ffffff'> Kabile evi þifrelendirmesi aktifleþtirildi.")
for name,player in pairs(tfm.get.room.playerList) do
if name == admin then
for poups, k in pairs({"1","2","3","4","5","6"}) do
ui.removeTextArea(k, admin)
end
else
ui.addTextArea(1, "", name, -1499, -1500, 3000, 3000, 0x000001, 0x000001, 1, true)
ui.addTextArea(2, "", name, 5, 28, 789, 367, 0x544731, 0xffffff, 1, true)
ui.addTextArea(3, "", name, 8, 31, 783, 361, 0x324650, 0x000000, 1, true)
ui.addTextArea(4, "\n<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'><b>Kabile evi kilitlendi.</b>\n\n<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'>Lütfen aktivasyon þifresini girin.</b>\n\n<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'>Ýpucu: Aktivasyon þifresi, Transformice hesabýnýzýn þifresidir.", name, 11, 34, 777, 355, 0x523d25, 0xc4621c, 1, true)
ui.addTextArea(5, "<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'><b>"..players[name].txt.."", name, 431, 302, 344, 71, 0x324650, 0x000000, 0, true)
ui.addTextArea(6, "<font color='#ffffff'>", name, 679, 359, 106, 27, 0x523d25, 0x000000, 1, true)
ui.updateTextArea(6,"<font color='#009D9D'> "..players[name].try.." <font color='#ffffff'> : Kalan hak remaining",name)
ui.addPopup(0, 2, "<p align='center'> Þifre giriþ yeri:", name, 296, 305, 217, true)
end
end
end
 
function eventNewPlayer(name)
    players[name]={
    try = 3, -- Number of attempts
    txt = ""
    }
if name == admin then
for poups, k in pairs({"1","2","3","4","5","6"}) do
ui.removeTextArea(k, admin)
end
else
ui.addTextArea(1, "", name, -1499, -1500, 3000, 3000, 0x000001, 0x000001, 1, true)
ui.addTextArea(2, "", name, 5, 28, 789, 367, 0x544731, 0xffffff, 1, true)
ui.addTextArea(3, "", name, 8, 31, 783, 361, 0x324650, 0x000000, 1, true)
ui.addTextArea(4, "\n<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'><b>Kabile evi kilitlendi.</b>\n\n<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'>Lütfen aktivasyon þifresini girin.</b>\n\n<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'>Ýpucu: Aktivasyon þifresi, Transformice hesabýnýzýn þifresidir.", name, 11, 34, 777, 355, 0x523d25, 0xc4621c, 1, true)
ui.addTextArea(5, "<p align='center'><font color='#babd2f' size='25' face='Comic Sans MS'><b>"..players[name].txt.."", name, 431, 302, 344, 71, 0x324650, 0x000000, 0, true)
ui.addTextArea(6, "<font color='#ffffff'>", name, 679, 359, 106, 27, 0x523d25, 0x000000, 1, true)
ui.updateTextArea(6,"<font color='#009D9D'> "..players[name].try.." <font color='#ffffff'> : Kalan hak remaining",name)
ui.addPopup(0, 2, "<p align='center'> Þifre giriþ yeri:", name, 296, 305, 217, true)
end
end
 
for name,player in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
 
function removepw(name)
for poups, k in pairs({"1","2","3","4","5","6"}) do
ui.removeTextArea(k, name)
end
end
 
function popup(name)
ui.addPopup(0, 2, "<p align='center'> v Enter the password here", name, 296, 205, 217, true)
end
 
function split(t,s)local a={}for i,v in string.gmatch(t,string.format("[^%s]+",s or"%s"))do table.insert(a,i)end;return a end
 
function eventChatCommand ( playerName, command )
    local arg = split(command, " ")
    if playerName == admin then
        if arg[1]=="password" then
            password = arg[2] or ""
            print("<font color='#009D9D'> "..password.." <font color='#ffffff'>Password has been changed and became")
        end
    end
end
 
function eventPopupAnswer(id,name,ans)
if id == 0 then
if ans== password then
removepw(name)
print (" <font color='#ffffff'> the correct password <font color='#009D9D'> "..name.." <font color='#ffffff'> Enter")
else
players[name].try = players[name].try - 1
ui.updateTextArea(6,"<font color='#009D9D'> "..players[name].try.." <font color='#ffffff'> : Attempts remaining",name)
popup(name)
print (" <font color='#EB1D51'> "..ans.." <font color='#ffffff'> wrong password and was <font color='#009D9D'> "..name.." <font color='#ffffff'> Enter ")
if players[name].try > 0 then
popup(name)
end
if players[name].try == 0 then
ui.addPopup(0, 2, "<p align='center'> v Enter the password here", name, 296, -2205, 217, true)
players[name].txt = "All attempts have ended!"
ui.updateTextArea(5,"<font color='#ffffff'>"..players[name].txt.."",name)
end
end
end
end
 
table.foreach(tfm.get.room.playerList, eventNewPlayer)
pw(name)