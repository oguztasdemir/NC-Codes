admin= {["Devilstrkpro#0000"]=true, ["Devilstrkpro#5475"]=true}

tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoScore(true)
tfm.exec.newGame("@7493263")
-- stopped at line 144.
players={}--respawn place is 400,320
p={}
timestamp=os.time()
numplayers=0

begin=false
answerer="lol"
questioner="lol"
question="lol"
ans="lol"
new=false
restart=false
choose=false
start=true
restart=false
choosey=false
skip=false

truth={}--you can follow the format 'truth[number]="question"' 
truth[1]="Transformice'de kimi seviyorsun?"
truth[2]="En sevdiğiniz yemek ne?"
truth[3]="En büyük hayalin nedir?"
truth[4]="Transformice dışında başka hangi oyunları oynuyorsunuz?"
truth[5]="Kendinizi nasıl tanımlarsınız?"
truth[6]="Hiç bir şey çaldın mı?"
truth[7]="Şu an kullandığın telefonun markası ne?"
truth[8]="Oyunu oynayanlar arasında en sevmediğin kim?"
truth[9]="Transformice'i hackleyebilseydin, ne yapardın?"
truth[10]="Seçmek zorunda kalsaydınız, Transformice'da en sevdiğiniz kürk hangisi olurdu?"

dare={}--you can follow the format 'dare[number]="Dare"' 
dare[1]="En az 20 kişinin olduğu odaya gidip odaya benim adımı söyleyerek ben bunu seviyorum diye 10 kere spam at!"
dare[2]="Bana envanterinden rastgele 400 item hediye et"
dare[3]="Arkadaş listenden rastgele birini sil"
dare[4]="Odadan rastgele birini öp"
dare[5]="İstediğim bir kıyafeti 1 hafta boyunca karakterinden çıkarma"
dare[6]="Odadan birine sarıl"
dare[7]="Bana 100 çilek hediye et"
dare[8]="Bana 1 kürk al"
dare[9]="Benim seçtiğim bir odaya gidip yine benim seçtiğim bir kişinin nickini seçerek odada seni seviyorum diyeceksin."
dare[10]="Cafe'de beni sevdiğine dair konu a."

ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Doğruluk mu Cesaret mi oyununa hoş geldiniz!</font></p></b>",nil,50,355,700,40,0x324650,0x212F36,0.8,true)


function eventNewPlayer(name)
ui.addTextArea(1,"<b><p align = 'center'><font size='30'>Oyuna katılmak için !join</font></p></b>",name,50,355,700,40,0x324650,0x212F36,0.8,true)
p[name]={questioners=false, answerers=false, spectator=true}
end

function eventNewGame()
numplayers=0
count=1
for name,player in pairs(tfm.get.room.playerList) do
p[name]={questioners=false, answerers=false, spectator=true}
players[count]=name
timestamp=os.time()
numplayers=numplayers+1
count=count+1
p[name].spectator=false
p[name].questioners=false
end
print(numplayers)
end

function eventChatCommand(name,command)
if command=="s" and admin[name] then
tfm.exec.setShaman(name)		
elseif command=="join" and p[name].spectator==true then
tfm.exec.respawnPlayer(name)
tfm.exec.movePlayer(name,400,320,false,0,0,false)
numplayers=numplayers+1
players[numplayers]=name
p[name].spectator=false
elseif command=="skip" and admin[name] then
timestamp=os.time()
skip=true
end
end

tfm.exec.setNameColor(admin, 0x009DFF)
tfm.exec.setUIMapName("Obbligo o Verità")
function eventLoop(time,remaining)
if timestamp < os.time()-10000 and begin==false then
timestamp=os.time()
begin=true
restart=false
ui.updateTextArea(1, "<p align='center'><b><font size='30'>Haydi oynamaya başlayalım!</font></b></p>", nil)
elseif timestamp < os.time()-5000 and begin==false then
local i=1
local long=""
while i<numplayers do
long=long..tostring(players[i])..", "
i=i+1
end
long=long..tostring(players[numplayers])..".</font></b>"
ui.updateTextArea(1, "<p align='center'><b><font size='15'>Katılımcılar:"..long, nil)
elseif timestamp < os.time()-3000 and begin==false and restart==true then
ui.updateTextArea(1, "<p align='center'><b><font size='20'>Herkes sırasını aldığına göre, Yeniden Başlıyor...", nil)
end
if begin==true then
if timestamp < os.time()-3000 and start==true then
tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
answerer=""
questioner=""
local j=1
local i=0
while j<=numplayers do
pname=players[j]

if p[pname].questioners==false then
i=i+1
end
j=j+1
end
if i>0 then
eventTruthOrDare()
else
local j=1
while j<=numplayers do
local name=players[j]
p[name].questioners=false
j=j+1
end
restart=true
timestamp=os.time()
begin=false
end
end
if choose==true then
	rand=math.random(1,numplayers)
	print(questioner)
	answerer=players[rand]
	print(answerer)
	if questioner==answerer then
	ui.updateTextArea(1, "<p align='center'><b><font size='30'>rastgele...</font></b></p>", nil)
	tfm.exec.movePlayer(answerer,400,320,false,0,0,false)
	answerer=""
	else
	choose=false
	ui.updateTextArea(1, "<b><font size='15'>"..answerer.." cevap vermeli! Doğruluk mu cesaret mi?</font></b>", nil)
	ui.addPopup(3,1,"Hey, seni seçtiler. Preferisci verità? Eğer <b>'Hayır'</b>a tıklarsan cezalandırılacaksın!",answerer,250,50,300,true)
	end
elseif choosey==true then
	rand=math.random(1,numplayers)
	questioner=players[rand]
	print(questioner)
	print(p[questioner].questioners)
	if p[questioner].questioners==false then
		choosey=false
		p[questioner].questioners=true
		ui.updateTextArea(1, "<b><font size='15'>Soruyu "..questioner.." soracak. Kime soracağını seçmeyi bekliyoruz.</font></b>", nil)
		ui.addPopup(1,1,"Rastgele bir oyuncu ister misin? Eğer<b>'Hayır'</b>'a tıklarsan sormak istediğin oyuncunun adını yazman gerekecek.",questioner,250,50,300,true)
	elseif p[questioner].questioners==true then
		ui.updateTextArea(1, "<p align='center'><b><font size='30'>Rastgele seçiliyor.</font></b></p>", nil)
		tfm.exec.movePlayer(questioner,400,320,false,0,0,false)
		questioner=""
	end
end
if skip==true then
ui.updateTextArea(1, "<p align='center'><b><font size='30'>Sıra atlanıyor</font></b></p>", nil)
if timestamp < os.time()-3000 then
start=true
skip=false
end
end
tfm.exec.movePlayer(questioner,120,120,false,0,0,false)
tfm.exec.movePlayer(answerer,680,120,false,0,0,false)
end
end

function eventTruthOrDare()
	start=false
	ui.removeTextArea(2)
	ui.removeTextArea(3)
	choosey=true

end

function eventPopupAnswer(id, name, answer)
	if id==1 and name==questioner then
		if answer=="yes" then
			choose=true
		elseif answer=="no" then
			ui.addPopup(2,2,"Kime cevap vermemi istiyorsun?",questioner,250,50,300,true)
		end
	elseif id==2 and name==questioner then
		x=1
		found=false
		while x<=numplayers do
		print(players[x])
			if answer==players[x] then
			answerer=answer
			if questioner==answerer then
			answerer=""
			found=false
			else
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." seçildi. Doğruluk mu cesaretlik mi seçmesini bekliyoruz. </font></b>", nil)
			ui.addPopup(3,1,"Hey, seni seçtiler? Eğer <b>'Hayır'</b>a tıklarsan cesaretlik yapacaksın.!",answerer,250,50,300,true)
			found=true
			end
			end
			x=x+1
		end
		if found==false then
			ui.addPopup(2,2,"Bu isimde kimse yok. Soru sormak istediğiniz kullanıcının tam kullanıcı adını girin.",questioner,250,50,300,true)
		end
	elseif id==3 and name==answerer then	
		if answer=="yes" then
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.."  doğruluğu seçti! Soruyu soran kişi: "..questioner.."...</font></b>", nil)	
				ui.addPopup(1,1,"Rastgele bir soru sormak ister misin? Eğer <b>'Hayır'</b>'a tıklarsan sormak istediğin soruyu yazman gerekecek.",questioner,250,50,300,true)
			elseif answer=="no" then
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." cesaretliği seçti. İddaayı yaptıracak kişi: "..questioner.."...</font></b>", nil)
			ui.addPopup(5,1,"Sıradan bir cesaretlik iddaası ister misin? Eğer <b>'Hayır'</b>a tıklarsan yeni iddaa yazman gerekecek.",questioner,250,50,300,true)
				
		end
	elseif id==4 and name==questioner then
		if answer=="yes" then
			question=truth[math.random(1,10)]
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." Ha scelto una verità casuale! Aspettando che "..answerer.." risponda...</font></b>", nil)	
			ui.addTextArea(2,"<b><font size='20'>Verità: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
			ui.addPopup(8,2,"<b>Scrivi la tua risposta qui sotto.</b>",answerer,250,175,300,true)
			--need to ask if questioner is satisfied with answer
		elseif answer=="no" then
			ui.addPopup(6,2,"Scrivi la tua domanda qui sotto.",questioner,250,50,300,true)
		end
	elseif id==5 and name==questioner then
		if answer=="yes" then
			question=dare[math.random(1,10)]
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." rastgele bir cesaretlilik seçti! "..answerer.."'un cevap vermesi bekleniyor...</font></b>", nil)	
			ui.addTextArea(2,"<b><font size='20'>Cesaretlik: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
			ui.addPopup(9,1,"<b><font size='15'>"..questioner.." iddaayı seçti! Eğer <b>'Evet'</b>e tıklarsan iddaayı yapacağını kabul etmiş olursun!</font><b>",answerer,250,175,300,true)
		elseif answer=="no" then
			ui.addPopup(7,2,"Scrivi il tuo obbligo qui sotto.",questioner,250,50,300,true)
		end
	elseif id==6 and name==questioner then
		question=answer
		ui.updateTextArea(1, "<b><font size='15'>"..questioner.." rastgele bir cesaretlilik seçti! "..answerer.."'un cevap vermesin bekleniyor...</font></b>", nil)	
		ui.addTextArea(2,"<b><font size='20'>Doğruluk "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
		ui.addPopup(8,2,"Cevabınızı aşağıya yazın.",answerer,250,175,300,true)
	elseif id==7 and name==questioner then
		question=answer
		ui.updateTextArea(1, "<b><font size='15'>"..questioner.." rastgele bir cesaretlilik seçti! "..answerer.."'un cevap vermesi bekleniyor...</font></b>", nil)	
		ui.addTextArea(2,"<b><font size='20'>Cesaretlik: "..question.."</font></b>",nil,165,20,470,120,0x324650,0x212F36,0.8,true)
		ui.addPopup(9,1,"<b><font size='15'>"..questioner.." iddaayı seçti! Eğer <b>'Evet'</b>e tıklarsan iddaayı yapacağını kabul etmiş olursun!</font><b>",answerer,250,175,300,true)
elseif id==8 and name==answerer then
		ans = answer
		ui.addTextArea(3,"<b><font size='20'>Yanıt: "..ans.."</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
		ui.updateTextArea(1, "<b><font size='15'>"..answerer.." yanıtı verdi! "..questioner.."'dan onay bekleniyor.</font></b>", nil)	
		ui.addPopup(10,1,"<b><font size='15'>Cevap yeterli mi?",questioner,250,50,300,true)
	elseif id==9 and name==answerer then
		if answer=="yes" then
			ui.addTextArea(3,"<b><font size='20'>Io, "..answerer..", verdiğin iddaayı kabul ediyorum ve yapacağım.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." yeni soruyu bekliyorum...</font></b>", nil)	
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			end			
		elseif answer=="no" then
			ui.updateTextArea(1, "<b><font size='15'>"..answerer.." bir korkak. Yeni tura geçiliyor.</font></b>", nil)	
			ui.addTextArea(3,"<b><font size='20'>Io, "..answerer..", Ben bir korkağım, bu yüzden benden yapmamı istediğin iddaayı yapmayacağım.</font></b>",nil,165,140,470,120,0x324650,0x212F36,0.8,true)
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			end			
		end
	elseif id==10 and name==questioner then
		if answer=="yes" then
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." cevaptan memnun! Yeni bir oyuna başlanıyor...</font></b>", nil)
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			end
		elseif answer=="no" then
			ui.updateTextArea(1, "<b><font size='15'>"..questioner.." cevabı beğenmedi! Yeni bir oyuna başlanıyor...</font></b>", nil)
			timestamp=os.time()
			answerer=""
			questioner=""
			start=true			
			for name,player in pairs(tfm.get.room.playerList) do
			tfm.exec.movePlayer(name,400,320,false,0,0,false)
			end
		end
	end
end

function eventPlayerLeft(name)
ui.updateTextArea(1, "<p align='center'><b><font size='15'>"..name.." odadan çıktı/a!</font></b></p>", nil)
end

function eventPlayerDied(name)
tfm.exec.respawnPlayer(name)
end

changelog = "<p align='center'><font size='26'> Truth / Dare</font></p><br /><br />"
changelog = changelog .. "• Geç kaldıysanız !join yazarak katılabilirsinizç<br />"
changelog = changelog .. "• Oda adminleri !skip yaparak adminliklerini bırakabilir.<br />"
changelog = changelog .. "<br />"
changelog = changelog .. "• Oda adminleri:<br />"
changelog = changelog .. "<br />"
changelog = changelog .. "  Made by Devilstrkpro<br />"
changelog = changelog .. " <br />"
 
ui.addPopup(0, 0, changelog, nil, 200, 100, 400, true)

-- Credits to Mousetat.
