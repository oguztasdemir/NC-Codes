translate={
        EN={
                newMessage="You have a new message! Do you want to go to your inbox?",
                intro="<bl>Press a <vp>[Status Update] <bl>button for sharing.",
                clear="Clear",
                inbox="Inbox",
                update="Yazý Yazmak için buraya bas",
                updated="Yazý Yazmak için buraya bas; <bl>%s",
                like="Like",
                likedPeople="%s people like this.",
                likeNotice="<j>• <v>%s <bl>liked your share.",
                information="Information",
                comments="Comments",
                playerComment="%s <bl>said:",
                answer="Answer",
                sender="<b><v>Sender: %s",
                back="Back to your inbox",
                message="<j>Message:",
                profile="Profile",
                gender="Gender",
                notice="Notices",
                homePage="Home Page",
                friendList="Friend List",
                yes="Yes",
                no="No"
        },
        TR={
                newMessage="Yeni bir mesajýnýz var! Gelen kutunuza gitmek ister misiniz?",
                intro="<bl>Paylaþým yapabilmek için <vp>[Durumunu Güncelle] <bl>butonuna basýnýz.",
                clear="Temizle",
                inbox="Gelen Kutusu",
                update="Durumunu Güncelle",
                updated="durumunu güncelledi; <bl>%s",
                like="Beðen",
                likedPeople="%s kiþi bunu beðendi.",
                likeNotice="<j>• <v>%s <bl>senin paylaþýmýný beðendi.",
                information="Bilgi",
                comments="Yorumlar",
                playerComment="%s <bl>dedi ki:",
                answer="Yanýtla",
                sender="<b><v>Gönderen: %s",
                back="Gelen Kutuna Geri Dön",
                message="<j>Mesaj",
                profile="Profil",
                gender="Cinsiyet",
                notice="Bildirimler",
                homePage="Ana Sayfa",
                friendList="Arkadaþ Listesi",
                yes="Evet",
                no="Hayýr"
        }
}
staff={Hotspotower=true,Enomicefare=true,Neonstrayzer=true}
function trans(key)
        local community=string.upper(tfm.get.room.community)
        if translate[community] and translate[community][key] then
                return translate[community][key]
        else
                return translate["EN"][key] or "Not found translate"
        end
end
tfm.get.time=function()
        local date={}
        for d in os.date():gmatch("[^%s]+") do
                date[#date+1]=d
        end
        saat=date[4]:sub(1,2)+1
        date[4]=saat..":"..date[4]:sub(4,5)
        return date[4]:sub(1,5)
end
database={}
newsFeed={}
paylasimsayisi=1
function eventNewPlayer(p)
        database[p]={
                sms={kime="",yanit=""},
                inbox={},
                friends={},
                profile={feed={}},
                point=0,
                total=0,
                gender="undefined",
                sendFriend="",
                online=true,
                newsFeed=true
        }
        addBar(p,"<j><a href='event:homepage'>"..trans("homePage").."</a> <bl>| <n><a href='event:inbox'>"..trans("inbox").."</a> <bl>| <n><a href='event:friendlist'>"..trans("friendList").."</a> <bl>| <n><a href='event:profil'>"..trans("profile").."</a> <bl>| <n>"..trans("notice"))
        updateNewsFeed(p)
end
tfm.exec.disableAutoShaman(true)
tfm.exec.newGame(0)
tfm.exec.setUIMapName("<n>Micebook : <v>v1.1 <r>Pro Version<>")
tfm.exec.disableAutoNewGame(true)
function fixPlayerNick(t)
        return t:sub(1,1):upper() .. t:sub(2):lower()
end
function eventPlayerLeft(p)
        database[p]["online"]=nil
end
function addBar(p,m)
        ui.addTextArea(10,m,p,410,40,365,20,0x31474F,0x27373F,1,true)
        ui.addTextArea(11,"",p,410,25,365,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(12,"<b><v>Micebook",p,410,23,250,nil,nil,nil,0,true)
end
function updateNewsFeed(p)
        for n,i in pairs(tfm.get.room.playerList) do
                local feed={}
                for k,v in pairs(newsFeed) do
                        local text="<rose>» <v><a href='event:"..v[1].."'>"..v[1].."</a> <n>"..trans("updated"):format(v.time)
                        if staff[n] then
                                text=text.." <r><p align='right'><a href='event:del_"..k.."'>[x]</a></p>"
                        end
                if newsFeed[k] and newsFeed[k].likes[n] then
                        text=text.." \t<j>• <n>"..v[2].."\n \t<bl>"..trans("likedPeople"):format(v.like).." <j><a href='event:comment_"..v.id.."'>["..trans("comments").."]</a>"
                else
                        text=text.." \t<j>• <n>"..v[2].."\n \t<vp><a href='event:like_"..v.id.."'>["..trans("like").."]</a> <bl>"..trans("likedPeople"):format(v.like).." <j><a href='event:comment_"..v.id.."'>["..trans("comments").."]</a>"
                end
                table.insert(feed,1,text)
                end
            ui.addTextArea(0,trans("intro").."\n"..table.concat(feed,"\n"),n,410,75,365,230,0x31474F,0x27373F,1,true)
        ui.addTextArea(5,"<j><p align='center'><a href='event:update'>["..trans("update").."]\n",n,410,320,365,17,0x31474F,0x27373F,1,true)
        end
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)
function friendlist(p)
        local online,offline={},{}
        for k,v in pairs(database[p]["friends"]) do
                if database[k]["online"] then
                        table.insert(online," <rose>» <v><a href='event:friend_"..k.."'>"..k.."</a> <vp>•")
                else
                        table.insert(offline," <rose>» <v>"..k.." <r>•")
                end                    
        end
        ui.addTextArea(20,"<bl>Arkadaþlarýnýza daha rahat ulaþmak için üzerine týklayýn.\n"..table.concat(online,"\n").."\n"..table.concat(offline,"\n"),p,50,67,250,nil,0x31474F,0x27373F,1,true)
        ui.addTextArea(21,"",p,50,50,250,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(22,"<b><v>"..trans("friendList"),p,50,48,250,nil,nil,nil,0,true)
        ui.addTextArea(23,"<b><v>",p,290,52,8,8,0x009D9D,0x009D9D,1,true)
        ui.addTextArea(24,"<b><font color='#324650' size='16'><a href='event:close_inbox'>x",p,287,45,20,20,0x009D9D,0x009D9D,0,true)
end
function openCommentOfStatus(p,s)
        local comments={}
        for k,v in pairs(newsFeed[database[p]["comment"]].comments) do
                if #v>0 then
                        table.insert(comments,"<rose>» <v>"..trans("playerComment"):format(v[1]).."\n\t• <n>"..v[2])
                end
        end
        ui.addTextArea(13,table.concat(comments,"\n"),p,145,175,250,130,0x31474F,0x27373F,1,true)
        ui.addTextArea(14,"",p,145,160,250,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(15,"",p,385,162,8,8,0x009D9D,0x009D9D,1,true)
        ui.addTextArea(15,"",p,385,162,8,8,0x009D9D,0x009D9D,1,true)
        ui.addTextArea(16,"<b><font size='16' color='#324650'><a href='event:close_comments'>x",p,382,154,20,20,0x009D9D,0x009D9D,0,true)
        ui.addTextArea(17,"<vp><p align='center'><a href='event:cmd_"..s.."'>[Yorum yap]",p,145,320,250,17,0x31474F,0x27373F,1,true)
end
function eventTextAreaCallback(id,p,cb)
        if cb:sub(1,4)=="like" and not newsFeed[tonumber(cb:sub(6))]["likes"][p] then
            newsFeed[tonumber(cb:sub(6))].like=newsFeed[tonumber(cb:sub(6))].like+1
            newsFeed[tonumber(cb:sub(6))]["likes"][p]=true
                for k,v in pairs(tfm.get.room.playerList) do
                updateNewsFeed(k)
        end
        if p~=newsFeed[tonumber(cb:sub(6))][1] then
                ui.addTextArea(7,trans("likeNotice"):format(p),newsFeed[tonumber(cb:sub(6))][1],25,350,200,nil,0x31474F,0x27373F,1,true)
                        database[newsFeed[tonumber(cb:sub(6))][1]]["timer"]=os.time()
                end
        end
        if cb:sub(1,3)=="del" then
                newsFeed[tonumber(cb:sub(5))]=nil
                updateNewsFeed(p)
        end
        if cb=="close_comments" then
                for i=13,17 do
                        ui.removeTextArea(i,p)
                end
        end
        if cb=="close_inbox" then
                for i=20,24 do
                        ui.removeTextArea(i,p)
                end
        end
        if cb:sub(1,7)=="comment" and newsFeed[tonumber(cb:sub(9))] then
                database[p]["comment"]=tonumber(cb:sub(9))
                openCommentOfStatus(p,cb:sub(9))
        end
        if cb:sub(1,3)=="cmd" and newsFeed[tonumber(cb:sub(5))] then
                ui.addPopup(7,2,"",p,200,310,365,true)
        end
        if cb=="no" then
                for i=18,20 do
                        ui.removeTextArea(i,p)
                end
        end
        if cb:sub(1,3)=="msg" and database[p]["inbox"][cb:sub(5)] then
                openPlayerMessage(p,cb:sub(5))
        end
        if cb=="update" then
                ui.removeTextArea(5,p)
                ui.addPopup(5,2,"",p,410,320,365,true)
        end
        if cb=="add_friend" then
                database[database[p].sendFriend]["sendFriend"]=p
                ui.addPopup(6,1,database[database[p].sendFriend]["sendFriend"].." adlý kullanýcý size arkadaþlýk isteði gönderdi. Kabul ediyormusunuz?",database[p]["sendFriend"],300,200)
        end
        if cb=="profil" then
                openProfile(p,p)
                ui.addPopup(5,2,"",p,400,500,275,true)
        end
        if database[cb] then
                openProfile(p,cb)
        end
        if cb=="homepage" then
                updateNewsFeed(p)
                addBar(p,"<j><a href='event:homepage'>"..trans("homePage").."</a> <bl>| <n><a href='event:inbox'>"..trans("inbox").."</a> <bl>| <n><a href='event:friendlist'>"..trans("friendList").."</a> <bl>| <n><a href='event:profil'>"..trans("profile").."")
        end
        if cb:sub(1,5)=="yanit" and database[cb:sub(7)] then
                database[p]["sms"].yanit=cb:sub(7)
                ui.addPopup(3,2,database[p]["sms"].yanit.." adlý kullanýcýya mesaj gönder!",p,325,175,210)
        end
        if cb=="clear" then
                database[p]["inbox"]={}
                openInbox(p)
        end
        if cb=="friendlist" then
                friendlist(p)
                addBar(p,"<n><a href='event:homepage'>"..trans("homePage").."</a> <bl>| <n><a href='event:inbox'>"..trans("inbox").."</a> <bl>| <j><a href='event:friendlist'>"..trans("friendList").."</a> <bl>| <n><a href='event:profil'>"..trans("profile").."")
                ui.addPopup(5,2,"",p,400,500,275,true)
        end
        if cb=="inbox" or cb=="yes" then
                eventTextAreaCallback(id,p,"no")
                openInbox(p)
                addBar(p,"<n><a href='event:homepage'>"..trans("homePage").."</a> <bl>| <j><a href='event:inbox'>"..trans("inbox").."</a> <bl>| <n><a href='event:friendlist'>"..trans("friendList").."</a> <bl>| <n><a href='event:profil'>"..trans("profile").."")
                ui.addPopup(5,2,"",p,400,500,275,true)
        end
        if cb=="profilmes" then
                ui.addPopup(3,2,database[p]["sms"].yanit.." adlý kullanýcýya mesaj gönder!",p,325,175,210)
        end
end
function eventPopupAnswer(id,p,ans)
        ans=(ans:gsub("<","&lt;"):gsub(">","&gt;"):gsub("http","htt<h>p"))
        if id==0 then
                if database[fixPlayerNick(ans)] then
                        database[p]["sms"]={kime=fixPlayerNick(ans)}
                        ui.addPopup(1,2,database[p]["sms"].kime.." adlý kullanýcýya mesaj yolla!",p,175,150,210)
                else
                        ui.addTextArea(0,"<bl><p align='center'>Böyle bir kullanýcý bulunamadý.",p,325,375,200,20,0x31474F,0x27373F,1,true)
                end
        end
        if id==5 and ans~="" then
                if string.len(ans) > 5 then
                        newsFeed[paylasimsayisi]={p,ans,like=0,id=paylasimsayisi,likes={},comments={},time=tfm.get.time()}
                        paylasimsayisi=paylasimsayisi+1
                        updateNewsFeed()
                        table.insert(database[p]["profile"]["feed"],"<rose>» <v><a href='event:player_"..p.."'>"..p.."</a> <n>durumunu güncelledi;\n \t<j>• <n>"..ans)
                        database[p]["total"]=database[p]["total"]+1
                else
                    updateNewsFeed()
                end
        end
        if id==1 and ans~="" then
                database[database[p]["sms"].kime]["inbox"][p]=fixPlayerNick(ans)
                noticeSend(database[p]["sms"]["kime"])
        end
        if id==3 and ans~="" and database[p]["sms"].yanit~="" then
                database[database[p]["sms"].yanit]["inbox"][p]=fixPlayerNick(ans)
                noticeSend(database[p]["sms"]["yanit"])
        end
        if id==6 and ans=="yes" then
                database[p]["friends"][database[p]["sendFriend"]]=true
                database[database[p]["sendFriend"]]["friends"][p]=true
        end
        if id==7 and ans~="" then
                table.insert(newsFeed[tonumber(database[p]["comment"])].comments,{p,ans})
        end
end
function eventLoop()
        for k,v in pairs(database) do
                if v.timer and os.time()-v.timer>5000 then
                        ui.removeTextArea(7,k)
                        v.timer=nil
        end
    end
end
function eventChatCommand(p,c)
        local args={}
        for arg in c:gmatch("%S+") do
                table.insert(args,arg)
        end
        if args[1]=="sms" then
                ui.addPopup(0,2,"Kime mesaj yollamak istiyorsunuz?",p,175,40,210)
        end
end
function openPlayerMessage(p,m)
        ui.addTextArea(20,trans("message").." <n>"..database[p]["inbox"][m].."\n<p align='right'><rose><a href='event:yanit_"..m.."'>["..trans("answer").."]</a><vp><a href='event:yes'>["..trans("back").."]",p,50,67,250,nil,0x31474F,0x27373F,1,true)
        ui.addTextArea(21,"",p,50,50,250,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(22,trans("sender"):format(m),p,50,48,250,nil,nil,nil,0,true)
        ui.addTextArea(23,"<b><v>",p,290,52,8,8,0x009D9D,0x009D9D,1,true)
        ui.addTextArea(24,"<b><font color='#324650' size='16'><a href='event:close_inbox'>x",p,287,45,20,20,0x009D9D,0x009D9D,0,true)
end
function noticeSend(p)
        ui.addTextArea(18,"<bl><p align='center'>"..trans("newMessage").."\n<vp><a href='event:yes'>["..trans("yes").."]</a> <r><a href='event:no'>["..trans("no").."]",p,50,60,250,nil,0x31474F,0x27373F,1,true)
        ui.addTextArea(19,"",p,50,45,250,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(20,"<b><v>"..trans("information"),p,50,43,250,20,0x27373F,0x27373F,0,true)
end
function openProfile(p,s)
        database[p]["yanit"]=fixPlayerNick(s)
        local bar="<p align='center'> "
        if database[p]["friends"][s] then
                bar=bar.."<j>[Mesaj Gönder] <r>[Dürt]"
        else
                bar=bar.."<vp><a href='event:add_friend'>[Arkadaþ Ekle]</a> <j><a href='event:profilmes'>[Mesaj Gönder]</a> <r>[Dürt]"
        end
        local text=trans("gender")..":"..database[fixPlayerNick(s)]["gender"].."\nToplam Paylaþým: "..database[fixPlayerNick(s)]["total"].."\nProfil Puaný: "..database[fixPlayerNick(s)]["point"].."\n<r>Paylaþýmlar\n"..table.concat(database[fixPlayerNick(s)]["profile"]["feed"],"\n")
        if s~=p then
                ui.addTextArea(5,bar,p,50,285,250,nil,0x31474F,0x27373F,1,true)
                database[p]["sendFriend"]=fixPlayerNick(s)
        end
        ui.addTextArea(20,text,p,50,67,250,200,0x31474F,0x27373F,1,true)
        ui.addTextArea(21,"",p,50,50,250,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(22,"<b><v>Profil: "..s,p,50,48,250,nil,nil,nil,0,true)
        ui.addTextArea(23,"<b><v>",p,290,52,8,8,0x009D9D,0x009D9D,1,true)
        ui.addTextArea(24,"<b><font color='#324650' size='16'><a href='event:close_inbox'>x",p,287,45,20,20,0x009D9D,0x009D9D,0,true)
end
function openInbox(p)
        local inbox={}
        for k,v in pairs(database[p]["inbox"]) do
                table.insert(inbox," <j>» <v><a href='event:msg_"..k.."'>"..k.."</a>")
        end
        ui.addTextArea(20,"<bl>Gelen kutunuza hoþgeldiniz!\n"..table.concat(inbox,"\n").."\n<r><p align='right'><a href='event:clear'>["..trans("clear").."]",p,50,67,250,nil,0x31474F,0x27373F,1,true)
        ui.addTextArea(21,"",p,50,50,250,12,0x27373F,0x27373F,1,true)
        ui.addTextArea(22,"<b><v>"..trans("inbox"),p,50,48,250,nil,nil,nil,0,true)
        ui.addTextArea(23,"<b><v>",p,290,52,8,8,0x009D9D,0x009D9D,1,true)
        ui.addTextArea(24,"<b><font color='#324650' size='16'><a href='event:close_inbox'>x",p,287,45,20,20,0x009D9D,0x009D9D,0,true)
end