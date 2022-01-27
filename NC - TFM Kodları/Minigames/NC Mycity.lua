for _,v in pairs ({'disableAutoNewGame','disableAutoShaman','disableAutoTimeLeft','disableAutoScore','disableAfkDeath'}) do
	tfm.exec[v](true)
end
admins={Devilstrkpro=1}
p={}
paragonder={}
agua={}
jogador={}
pode = false
is1={}
is2={}
basla={}
is1x="1446"
is2x="170"
is1y="322"
is2y="394"
arabasayiii=0
jip=1500 ferrari=3000 bugatti=6000 araba1ism="Jip" araba2ism="Ferrari" araba3ism="Bugatti"
ev1fiyat=4000 ev2fiyat=7000 ev3fiyat=3000
kazmafiyat=30 oltafiyat=30
ev1x="1891" ev1y="349"
ev2x="2840" ev2y="343"
lobix="803"
lobiy="381"
ev3x="3733" ev3y="342"
ev3={}
ev3parola=""
ev3parolas=0
oda3alindi=0
madenis={}
balikis={}
lang={}
yon={}
ev2={}
ev2parola=""
ev2parolas=0
oda2alindi=0
ev1={}
ev1parola=""
ev1parolas=0
oda1alindi=0
randombalikis={"Hint : Spaceye Basarsan Balýk Tutarsýn<br>Press The Space button Fish catch"}
randommadenis={"Hint : Yanýma gelip e ye basarsan Kazma Ýþlemi Baþlar<br>The when the comes and Press E start"}
madenparasi={40,5,5,5,5,5,5,5,5,5,5,5,5,20,45,20,10}
madenrandom={1,2,3,4,5}
para={30,35,50,75,90,0}
function eventNewPlayer(name)
system.bindMouse(name,true)
if tfm.get.room.playerList[name].community=="tr" then
lang[name]={
araba="Araba",
ev="Ev",
envanter="Envanter",
is="Ýþ",
maden="Madençilik",
balkik="Balikçilik",
para="Para",
onay="Onay",
is2="Ýþtesin !",
isleave="Ýþten Ayrýl",
kazma="Kazma",
satinal="Satýn Al",
olta="Olta",
tl="TL",
nothave1="Kazman Yok Kazma Almalýsýn !",
nothave2="Oltan Yok Olta Almalýsýn",
hiz="Hýz",
kir="Kýr",
kullan="Kullan",
birak="Býrak",
oltakirik="Oltan Kýrýldý !",
comingsoon="Yakýnda...",
kazmafull="Tane Kazman oldu Daha fazla alamazsýn !",
oltafull="Tane Oltan oldu Daha fazla alamazsýn !",
fishermsg1="Oltanýn ucu Boþ ! :/",
fishermsg2="Hamsi Yakaladýn 30 Lira Eder !",
fishermsg3="Levrek Yakaladýn 35 Lira Eder !",
fishermsg4="Çinekop Yakaladýn 50 Lira Eder !",
fishermsg5="Eski Para Oltana Takýldý 75 Lira Eder !",
fishermsg6="Köpek Balýgý Yakaladýn 90 Lira Eder !",
help="<p align='center'><b>Yardým<br>• Ýþ : Balýkçýlýk : Balýkçýlýkta 30 TL 90 TL arasý para kazanýrsýnýz 1 oltanýn 4 kullaným hakký vardýr.<br>• Ýþ : Madencilik : Her maden kazarken 1 Kazmaya Ýhteyacýnýz vardýr bunuda zaten madenci iþ tagýnýn altýnda alabilirsiniz.<br>• Envanter : 1. Olan Kazmadýr 2. Olan Oltadýr zaten Sistemi Anlamýþsýnýzdýr<br>• Komutlar : <br>!help - bu Sayfayý Açar<br>!lang - Dil Deðiþtirme Menusunu Açar<br>!bugfix - Bir buga girdiyseniz Bugtan Kurtarýr",
parolavar="Parola Var",
oda1satin="Ev 1 - Satýn Alýndý !",
evegit="Eve Git",
sifreayar="Parola Ayarla Kaldýr",
herksdvt="Herkesi Davet et",
kisidvt="Kiþi Davet et",
davetmsg="seni eve Davet ediyor<br><br>Onaylamak Ýçin yeþil butona yani onaylaya iptal etmek içinse Ýptal tuþuna basýnýz.<br><br><br><VP><a href='event:ev1davetonay'>Onayla</a> <g>- <r><a href='event:ev1davetiptal'>Ýptal",
ziyaret="Ziyaret et",
lobidon="Lobiye Dön",
oda2satin="Ev 2 - Satýn Alýndý !",
oda3satin="Ev 3 - Satýn Alýndý !",
davetmsg2="seni eve Davet ediyor<br><br>Onaylamak Ýçin yeþil butona yani onaylaya iptal etmek içinse Ýptal tuþuna basýnýz.<br><br><br><VP><a href='event:ev2davetonay'>Onayla</a> <g>- <r><a href='event:ev2davetiptal'>Ýptal",
davetmsg3="seni eve Davet ediyor<br><br>Onaylamak Ýçin yeþil butona yani onaylaya iptal etmek içinse Ýptal tuþuna basýnýz.<br><br><br><VP><a href='event:ev3davetonay'>Onayla</a> <g>- <r><a href='event:ev3davetiptal'>Ýptal",
hosgeldin="<p align='center'>Hoþgeldin :)</p>",
ters1="Ters Balýk Tutamazsýn !",
ters2="Ters Maden Kazamazsýn !"
}
end
if tfm.get.room.playerList[name].community=="en" then
lang[name]={
araba="Car",
ev="<font size='7'>Home",
envanter="Inventory",
is="Job",
maden="Miner",
balkik="Fisher",
para="Money",
onay="Verifed",
is2="You are at work",
isleave="Job Leave",
kazma="Picaxe",
satinal="Buy",
olta="<font size='7'>Fishing Rod",
tl="USD",
nothave1="No have Picaxe",
nothave2="No fishing rod",
hiz="Speed",
kir="<font size='45'>Dig",
kullan="Use",
birak="Drop",
oltakirik="Crack You fish rod !",
comingsoon="Coming Soon",
kazmafull="You Full Picaxe Not verry Buy",
oltafull="You Full Fish rod Not verry Buy",
fishermsg1="Fish Rod Empty ! :/",
fishermsg2="Anchovy 30 USD Solded !",
fishermsg3="Levrek 35 USD Solded !",
fishermsg4="Çinekop 50 USD Solded !",
fishermsg5="Old Money 75 USD Solded !",
fishermsg6="Dog fish Catched 90 USD Solded !",
help="<p align='center'><b>Help<br>• Job : Fisher : Fisher Money 30 USD 90 USD mid Money won 1 Fisher rod 4 use and crack.<br>• Job : Miner : 	Mine dig Need the 1 Picaxe You can already get it under the miner's work tag.<br>• Inventory : 1. Picaxe 2. Fisher rod You already understand the System<br>• Commands : <br>!help - help page open<br>!lang - Lang Change menu open<br>!bugfix - Glitch fix",
parolavar="Password",
oda1satin="Home 1 - Solded !",
evegit="<font size='9'>Go Home",
sifreayar="<b><p align='center'>Pasword Change",
herksdvt="All Ýnvite",
kisidvt="One People invite",
davetmsg="You invited<br><br>Verifed For Green Button click or close page red button click<br><br><br><VP><a href='event:ev1davetonay'>Verifed</a> <g>- <r><a href='event:ev1davetiptal'>Close",
ziyaret="Visit Home",
lobidon="Back To Lobby",
oda2satin="Home 2 - Solded !",
oda3satin="Home 3 - Solded !",
davetmsg2="You invited<br><br>Verifed For Green Button click or close page red button click<br><br><br><VP><a href='event:ev2davetonay'>Verifed</a> <g>- <r><a href='event:ev2davetiptal'>Close",
davetmsg3="You invited<br><br>Verifed For Green Button click or close page red button click<br><br><br><VP><a href='event:ev3davetonay'>Verifed</a> <g>- <r><a href='event:ev3davetiptal'>Close",
hosgeldin="<p align='center'>Welcome :)</p>",
ters1="You Can not Hold the Inverse Fish!",
ters2="You can not do reverse digging!"
}
end
ui.addTextArea(134, "<a href='event:lobidon'><r><b>"..lang[name].lobidon.."", name, 715, 24, nil, nil, 0x1, 0x1, 0.7, true)
if not basla[name] then
ui.addPopup(0, 0,""..lang[name].hosgeldin.."", name, 300, 174, 200, true)
yon[name]={yon=0}
madenis[name]={is=0,tik=0,random=0,kazma=0}
balikis[name]={tik=0,olta=0}
paragonder[name]={isim="",para=0,sure=0,obursure=0}
p[name]={para=60,paratimer=0,paras=0,araba1=0,araba2=0,araba3=0,despawn=0,arabasayi=300,arabamenu=0,envantermenu=0,evmenu=0}
arabasayiii=arabasayiii+1
p[name].arabasayi=p[name].arabasayi+arabasayiii
madenis[name].kazma=madenis[name].kazma+1
balikis[name].olta=balikis[name].olta+1
is1[name]=0
is2[name]=0
basla[name]=1
end
x=tfm.get.room.playerList[name].x
y=tfm.get.room.playerList[name].y
tfm.exec.respawnPlayer(name)
tfm.exec.bindKeyboard(name, 32, true, true) tfm.exec.bindKeyboard(name, 69, true, true) tfm.exec.bindKeyboard(name, 38, true, true) tfm.exec.bindKeyboard(name, 87, true, true)
for i,key in ipairs({39,37,65,68}) do
tfm.exec.bindKeyboard(name,key,true,true)
end
end
hiz3=40
hiz2=25
hiz1=20
function eventMouse(name,x,y)
print(""..x..","..y.."")
end
tfm.exec.newGame('<C><P L="7200" H="1800" /><Z><S><S P="0,0,0.3,0.2,25,0,0,0" L="70" o="ffffffff" H="120" Y="331" T="12" X="2" /><S L="70" o="ffffffff" H="120" X="51" Y="223" T="12" P="0,0,0.3,0.2,25,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="70" o="4a6370" H="90" Y="379" T="12" X="1428" /><S P="0,0,0.3,0.2,20,0,0,0" L="70" o="ffffffff" X="97" Y="115" T="12" H="120" /><S L="70" o="ffffffff" X="138" H="120" Y="2" T="12" P="0,0,0.3,0.2,20,0,0,0" /><S P="0,0,0.3,0.2,10,0,0,0" L="70" o="ffffffff" H="120" Y="-102" T="12" X="166" /><S L="1600" o="ffffffff" X="813" H="43" Y="-262" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="70" o="ffffffff" X="1629" H="149" Y="323" T="12" P="0,0,0.3,0.2,-2,0,0,0" /><S P="0,0,0.3,0.2,-10,0,0,0" L="70" o="ffffffff" H="149" Y="172" T="12" X="1613" /><S L="70" o="ffffffff" H="149" X="1580" Y="25" T="12" P="0,0,0.3,0.2,-15,0,0,0" /><S P="0,0,0.3,0.2,-15,0,0,0" L="70" o="ffffffff" X="1539" Y="-114" T="12" H="149" /><S P="0,0,0.3,0.2,90,0,0,0" L="10" o="4a6370" X="1426" Y="329" T="12" H="50" /><S P="0,0,0.3,0.2,40,0,0,0" L="10" o="4a6370" X="1370" Y="383" T="12" H="129" /><S L="10" o="4a6370" X="1405" H="129" Y="378" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S P="0,0,0.3,0.2,40,0,0,0" L="10" o="4a6370" H="129" Y="380" T="12" X="1394" /><S L="10" o="4a6370" H="129" X="1382" Y="392" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S P="0,0,0.3,0.2,40,0,0,0" L="10" o="4a6370" X="1413" Y="379" T="12" H="129" /><S P="0,0,0.3,0.2,0,0,0,0" L="1600" o="ffffffff" H="70" Y="434" T="12" X="799" /><S L="10" o="4a6370" H="129" X="1363" Y="377" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S L="10" o="4a6370" X="1381" H="129" Y="381" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S L="10" o="4a6370" X="1378" H="129" Y="389" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S L="10" o="4a6370" X="1414" H="129" Y="377" T="12" P="0,0,0.3,0.2,40,0,0,0" /><S P="0,0,0.3,0.2,40,0,0,0" L="10" o="4a6370" H="129" Y="377" T="12" X="1416" /><S L="15" X="141" H="10" Y="381" T="13" P="0,0,0.3,0,0,0,0,0" /><S L="10" X="156" H="30" Y="384" T="12" P="0,0,0.3,0.2,45,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="47" o="2c7498" X="140" Y="396" T="12" H="11" /><S L="59" H="262" X="2495" Y="74" T="0" P="0,0,0.3,0.2,-40,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="800" o="88ff" H="32" Y="369" T="12" X="2228" /><S L="59" X="1943" H="262" Y="75" T="0" P="0,0,0.3,0.2,40,0,0,0" /><S L="439" X="2221" H="44" Y="-23" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="322" o="ffffff" X="1350" c="2" Y="424" T="12" H="45" /><S P="0,0,0,0,0,0,0,0" L="10" o="ffffffff" X="1833" Y="258" T="12" H="206" /><S L="10" o="ffffffff" X="2623" H="206" Y="251" T="12" P="0,0,0,0,0,0,0,0" /><S P="0,0,0.3,0.2,20,0,0,0" L="31" o="ffffffff" X="2611" Y="150" T="12" H="14" /><S L="800" o="88ff" H="32" X="3183" Y="369" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="59" X="3464" H="262" Y="79" T="0" P="0,0,0.3,0.2,-40,0,0,0" /><S L="59" H="262" X="2902" Y="75" T="0" P="0,0,0.3,0.2,40,0,0,0" /><S L="439" H="44" X="3181" Y="-25" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0,0,0,0,0,0" L="10" o="ffffffff" H="206" Y="250" T="12" X="3577" /><S L="10" o="ffffffff" H="206" X="2791" Y="251" T="12" P="0,0,0,0,0,0,0,0" /><S c="2" L="17" X="1520" H="10" Y="309" T="13" P="1,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="800" o="88ff" X="4092" Y="368" T="12" H="32" /><S L="59" H="262" X="4369" Y="79" T="0" P="0,0,0.3,0.2,-40,0,0,0" /><S L="59" X="3806" H="262" Y="76" T="0" P="0,0,0.3,0.2,40,0,0,0" /><S L="439" X="4088" H="44" Y="-28" T="0" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="ffffffff" H="206" X="3699" Y="255" T="12" P="0,0,0,0,0,0,0,0" /><S P="0,0,0,0,0,0,0,0" L="10" o="ffffffff" X="4480" Y="253" T="12" H="206" /><S P="0,0,0.3,0.2,2-0,0,0,0" L="20" o="4a6370" X="1453" Y="329" T="12" H="10" /><S L="130" H="76" X="1528" Y="364" T="9" P="0,0,,,,0,0,0" /></S><D><P C="66adb4" Y="-15" T="34" X="1828" P="0,0" /><P C="3d50" Y="-251" T="34" P="0,0" X="167" /><P C="3d50" Y="4" T="34" X="6" P="0,0" /><P C="3d50" Y="2" T="34" X="798" P="0,0" /><P C="3d50" Y="-275" T="34" X="793" P="0,0" /><DS Y="379" X="805" /><P C="ffffff" Y="356" T="15" P="0,0" X="2462" /><P C="202023" Y="356" T="15" P="0,0" X="2004" /><P P="0,0" Y="208" T="76" X="2400" /><P P="0,0" Y="212" T="76" X="2049" /><P P="0,0" Y="103" T="64" X="2155" /><P P="1,0" Y="358" T="26" X="2360" /><P P="1,1" Y="358" T="26" X="2112" /><P P="0,0" Y="350" T="30" X="2238" /><P C="66adb4" Y="-46" T="34" P="0,0" X="2783" /><P C="ffffff" Y="357" T="15" X="3379" P="0,0" /><P X="3273" Y="354" T="26" P="1,0" /><P C="202023" Y="357" T="15" X="2977" P="0,0" /><P C="66adb4" Y="-48" T="34" X="3692" P="0,0" /><P X="3945" Y="351" T="26" P="1,1" /><P X="3175" Y="352" T="30" P="0,0" /><P X="3038" Y="201" T="76" P="0,0" /><P X="3136" Y="94" T="64" P="0,0" /><P P="0,0" Y="202" T="76" X="3367" /><P X="3926" Y="200" T="76" P="0,0" /><P P="0,0" Y="79" T="64" X="4022" /><P P="0,0" Y="199" T="76" X="4258" /><P C="ffffff" Y="356" T="15" P="0,0" X="4288" /><P P="1,0" Y="358" T="26" X="4184" /><P C="202023" Y="356" T="15" P="0,0" X="3840" /><P P="0,0" Y="348" T="30" X="4079" /><P X="1247" Y="446" T="25" P="0,0" /></D><O /><L><VL n="Layer1" l="-1" /><JD c="ffffff,70,1,0" P2="1624,437" P1="-5,436" /><JD c="0091ff,70,1,0" P2="-16,385" P1="-36,436" /><JD c="0091ff,70,1,0" P2="26,282" P1="-8,362" /><JD c="0091ff,70,1,0" P2="62,210" P1="26,282" /><JD c="0091ff,70,1,0" P2="109,81" P1="62,207" /><JD c="0091ff,70,1,0" P2="149,-43" P1="109,77" /><JD c="0091ff,70,1,0" P2="209,-163" P1="149,-48" /><JD c="0091ff,70,1,0" P2="292,-259" P1="211,-168" /><JD c="0091ff,70,1,0" P2="470,-345" P1="292,-261" /><JD c="0091ff,70,1,0" P2="583,-351" P1="466,-343" /><JD c="0091ff,70,1,0" P2="746,-352" P1="581,-351" /><JD c="0091ff,70,1,0" P2="875,-354" P1="767,-352" /><JD c="0091ff,70,1,0" P2="1015,-351" P1="892,-351" /><JD c="0091ff,70,1,0" P2="1156,-336" P1="1015,-351" /><JD c="0091ff,70,1,0" P2="1369,-312" P1="1156,-336" /><JD c="0091ff,70,1,0" P2="1523,-190" P1="1370,-309" /><JD c="0091ff,70,1,0" P2="1582,38" P1="1523,-187" /><JD c="0091ff,70,1,0" P2="1628,233" P1="1585,41" /><JD c="0091ff,70,1,0" P2="1628,435" P1="1628,245" /><JD c="ffffff,70,0.48,1" P2="548,-147" P1="292,-145" /><JD c="ffffff,70,0.48,1" P2="716,-204" P1="449,-198" /><JD c="ffffff,70,0.48,1" P2="1253,-168" P1="922,-163" /><JD c="ffffff,70,0.48,1" P2="829,-129" P1="701,-126" /><JD c="ffffff,70,0.48,1" P2="1447,-103" P1="1208,-88" /><JD c="edc49a,2,1,1" M1="24" P2="125,353" M2="24" P1="122,349" /><JD c="edc49a,2,1,1" M1="24" P2="128,360" M2="24" P1="125,353" /><JD c="edc49a,4,1,1" M1="24" P2="129,362" M2="24" P1="126,372" /><JD c="cd9c6d,3,1,1" M1="24" P2="132,388" M2="24" P1="127,383" /><JD c="ba9a79,4,1,1" M1="24" P2="151,393" M2="24" P1="145,392" /><JD c="edc49a,2,1,1" M1="24" P2="152,393" M2="24" P1="150,394" /><JD c="ba9a79,4,1,1" M1="24" P2="143,394" M2="24" P1="136,393" /><JD c="edc49a,2,1,1" M1="24" P2="144,394" M2="24" P1="141,395" /><JD c="453121,3,1,1" M1="24" P2="150,349" M2="24" P1="149,356" /><JD c="453121,2,1,1" M1="24" P2="151,359" M2="24" P1="151,348" /><JD c="4a3624,16,1,1" M1="24" P2="145,385" M2="24" P1="146,386" /><JD c="2f1e0e,14,1,1" M1="24" P2="146,386" M2="24" P1="147,379" /><JD c="4f3218,16,1,1" M1="24" P2="145,385" M2="24" P1="145,379" /><JD c="cd9c6d,4,1,1" M1="24" P2="127,382" M2="24" P1="126,379" /><JD c="edc49a,4,1,1" M1="24" P2="132,385" M2="24" P1="126,378" /><JD c="78583a,10,1,1" M1="24" P2="144,375" M2="24" P1="138,381" /><JD c="7d5b37,4,1,1" M1="24" P2="146,356" M2="24" P1="146,355" /><JD c="5c4327,19,1,1" M1="24" P2="137,359" M2="24" P1="136,359" /><JD c="7d5b37,18,1,1" M1="24" P2="137,359" M2="24" P1="136,359" /><JD c="5c4327,16,1,1" M1="24" P2="137,360" M2="24" P1="135,359" /><JD c="edc59a,15,1,1" M1="24" P2="137,360" M2="24" P1="135,359" /><JD c="9f7551,17,1,1" M1="24" P2="135,361" M2="24" P1="135,360" /><JD c="9f7551,6,1,1" M1="24" P2="141,357" M2="24" P1="137,355" /><JD c="cd9c6d,8,1,1" M1="24" P2="133,357" M2="24" P1="132,357" /><JD c="cd9c6d,9,1,1" M1="24" P2="131,359" M2="24" P1="132,357" /><JD c="edc49a,13,1,1" M1="24" P2="134,362" M2="24" P1="134,361" /><JD c="5c4327,12,1,1" M1="24" P2="140,362" M2="24" P1="140,361" /><JD c="4f3218,5,1,1" M1="24" P2="155,381" M2="24" P1="152,375" /><JD c="edc59a,13,1,1" M1="24" P2="140,363" M2="24" P1="140,362" /><JD c="9f7551,3,1,1" M1="24" P2="144,358" M2="24" P1="141,357" /><JD c="9f7551,4,1,1" M1="24" P2="142,361" M2="24" P1="142,358" /><JD c="cd9c6d,4,1,1" M1="24" P2="142,361" M2="24" P1="140,358" /><JD c="5c4327,4,1,1" M1="24" P2="146,357" M2="24" P1="144,362" /><JD c="7d5b37,3,1,1" M1="24" P2="146,357" M2="24" P1="144,362" /><JD c="7d5b37,3,1,1" M1="24" P2="147,357" M2="24" P1="146,355" /><JD c="7d5b37,8,1,1" M1="24" P2="149,360" M2="24" P1="147,364" /><JD c="cd9c6d,6,1,1" M1="24" P2="139,359" M2="24" P1="137,360" /><JD c="edc49a,8,1,1" M1="24" P2="136,363" M2="24" P1="136,362" /><JD c="78583a,14,1,1" M1="24" P2="145,379" M2="24" P1="144,383" /><JD c="4f3218,15,1,1" M1="24" P2="149,368" M2="24" P1="147,367" /><JD c="2f1e0e,16,1,1" M1="24" P2="140,386" M2="24" P1="139,386" /><JD c="4f3218,15,1,1" M1="24" P2="140,386" M2="24" P1="139,386" /><JD c="78583a,14,1,1" M1="24" P2="141,385" M2="24" P1="139,385" /><JD c="2f1e0e,5,1,1" M1="24" P2="149,382" M2="24" P1="144,378" /><JD c="78583a,4,1,1" M1="24" P2="149,382" M2="24" P1="141,376" /><JD c="78583a,4,1,1" M1="24" P2="148,380" M2="24" P1="144,376" /><JD c="7d5b37,13,1,1" M1="24" P2="153,365" M2="24" P1="148,364" /><JD c="4f3218,10,1,1" M1="24" P2="158,368" M2="24" P1="154,371" /><JD c="7d5b37,6,1,1" M1="24" P2="159,366" M2="24" P1="150,369" /><JD c="7d5b37,13,1,1" M1="24" P2="151,363" M2="24" P1="152,362" /><JD c="7d5b37,10,1,1" M1="24" P2="155,364" M2="24" P1="155,363" /><JD c="7d5b37,6,1,1" M1="24" P2="150,358" M2="24" P1="150,357" /><JD c="694d33,1,1,1" M1="24" P2="152,355" M2="24" P1="150,357" /><JD c="694d33,1,1,1" M1="24" P2="148,355" M2="24" P1="147,354" /><JD c="453121,1,1,1" M1="24" P2="149,350" M2="24" P1="150,344" /><JD c="453121,2,1,1" M1="24" P2="151,347" M2="24" P1="151,345" /><JD c="453121,2,1,1" M1="24" P2="151,345" M2="24" P1="151,344" /><JD c="f7dac0,1,1,1" M1="24" P2="162,366" M2="24" P1="160,367" /><JD c="f7dac0,1,1,1" M1="24" P2="162,368" M2="24" P1="161,367" /><JD c="f7dac0,1,1,1" M1="24" P2="162,366" M2="24" P1="162,367" /><JD c="c7a079,1,1,1" M1="24" P2="162,368" M2="24" P1="161,367" /><JD c="1c130e,5,1,1" M1="24" P2="150,365" M2="24" P1="149,365" /><JD c="ffffff,2,1,1" M1="24" P2="150,365" M2="24" P1="150,364" /><JD c="1c130e,2,1,1" M1="24" P2="151,366" M2="24" P1="149,366" /><JD c="ffffff,1,1,1" M1="24" P2="148,366" M2="24" P1="148,365" /><JD c="1c130e,1,1,1" M1="24" P2="150,366" M2="24" P1="148,365" /><JD c="edc49a,3,1,1" M1="24" P2="128,380" M2="24" P1="126,373" /><JD c="edc49a,4,1,1" M1="24" P2="126,377" M2="24" P1="126,373" /><JD c="502c1d,1,1,1" M1="24" P2="146,371" M2="24" P1="136,376" /><JD c="502c1d,1,1,1" M1="24" P2="154,370" M2="24" P1="147,371" /><JD c="502c1d,1,1,1" M1="24" P2="149,374" M2="24" P1="142,380" /><JD c="502c1d,1,1,1" M1="24" P2="156,371" M2="24" P1="149,374" /><JD c="684E1E,3,1,1" M1="25" P2="146,394" M2="25" P1="145,394" /><JD c="281E0B,3,1,1" M1="25" P2="148,394" M2="25" P1="147,394" /><JD c="493615,3,1,1" M1="25" P2="146,392" M2="25" P1="145,392" /><JD c="896727,3,1,1" M1="25" P2="148,392" M2="25" P1="147,392" /><JD c="281E0B,3,1,1" M1="25" P2="150,392" M2="25" P1="149,392" /><JD c="493615,3,1,1" M1="25" P2="148,390" M2="25" P1="147,390" /><JD c="684E1E,3,1,1" M1="25" P2="150,390" M2="25" P1="149,390" /><JD c="281E0B,3,1,1" M1="25" P2="152,390" M2="25" P1="151,390" /><JD c="493615,3,1,1" M1="25" P2="150,388" M2="25" P1="149,388" /><JD c="896727,3,1,1" M1="25" P2="152,388" M2="25" P1="151,388" /><JD c="281E0B,3,1,1" M1="25" P2="154,388" M2="25" P1="153,388" /><JD c="444444,3,1,1" M1="25" P2="167,388" M2="25" P1="168,388" /><JD c="493615,3,1,1" M1="25" P2="152,386" M2="25" P1="151,386" /><JD c="684E1E,3,1,1" M1="25" P2="154,386" M2="25" P1="153,386" /><JD c="281E0B,3,1,1" M1="25" P2="156,386" M2="25" P1="155,386" /><JD c="444444,3,1,1" M1="25" P2="166,387" M2="25" P1="166,386" /><JD c="444444,3,1,1" M1="25" P2="169,386" M2="25" P1="170,386" /><JD c="ffffff,3,1,1" M1="25" P2="168,386" M2="25" P1="168,387" /><JD c="493615,3,1,1" M1="25" P2="154,384" M2="25" P1="153,384" /><JD c="896727,3,1,1" M1="25" P2="156,384" M2="25" P1="155,384" /><JD c="281E0B,3,1,1" M1="25" P2="158,384" M2="25" P1="157,384" /><JD c="444444,3,1,1" M1="25" P2="166,385" M2="25" P1="166,384" /><JD c="444444,3,1,1" M1="25" P2="169,384" M2="25" P1="170,384" /><JD c="D8D8D8,3,1,1" M1="25" P2="168,384" M2="25" P1="168,385" /><JD c="493615,3,1,1" M1="25" P2="156,382" M2="25" P1="155,382" /><JD c="684E1E,3,1,1" M1="25" P2="158,382" M2="25" P1="157,382" /><JD c="281E0B,3,1,1" M1="25" P2="160,382" M2="25" P1="159,382" /><JD c="444444,3,1,1" M1="25" P2="166,383" M2="25" P1="166,382" /><JD c="444444,3,1,1" M1="25" P2="169,382" M2="25" P1="170,382" /><JD c="C1C1C1,3,1,1" M1="25" P2="168,382" M2="25" P1="168,383" /><JD c="493615,3,1,1" M1="25" P2="158,380" M2="25" P1="157,380" /><JD c="896727,3,1,1" M1="25" P2="160,380" M2="25" P1="159,380" /><JD c="281E0B,3,1,1" M1="25" P2="162,380" M2="25" P1="161,380" /><JD c="444444,3,1,1" M1="25" P2="166,381" M2="25" P1="166,380" /><JD c="444444,3,1,1" M1="25" P2="169,380" M2="25" P1="170,380" /><JD c="C1C1C1,3,1,1" M1="25" P2="168,380" M2="25" P1="168,381" /><JD c="493615,3,1,1" M1="25" P2="160,378" M2="25" P1="159,378" /><JD c="684E1E,3,1,1" M1="25" P2="162,378" M2="25" P1="161,378" /><JD c="281E0B,3,1,1" M1="25" P2="164,378" M2="25" P1="163,378" /><JD c="444444,3,1,1" M1="25" P2="169,378" M2="25" P1="170,378" /><JD c="C1C1C1,3,1,1" M1="25" P2="165,378" M2="25" P1="166,378" /><JD c="D8D8D8,3,1,1" M1="25" P2="168,378" M2="25" P1="168,379" /><JD c="493615,3,1,1" M1="25" P2="162,376" M2="25" P1="161,376" /><JD c="444444,3,1,1" M1="25" P2="168,376" M2="25" P1="168,377" /><JD c="D8D8D8,3,1,1" M1="25" P2="164,376" M2="25" P1="163,376" /><JD c="C1C1C1,3,1,1" M1="25" P2="165,376" M2="25" P1="166,376" /><JD c="444444,3,1,1" M1="25" P2="160,374" M2="25" P1="153,374" /><JD c="C1C1C1,3,1,1" M1="25" P2="164,374" M2="25" P1="161,374" /><JD c="684E1E,3,1,1" M1="25" P2="166,374" M2="25" P1="165,374" /><JD c="281E0B,3,1,1" M1="25" P2="168,374" M2="25" P1="168,375" /><JD c="444444,3,1,1" M1="25" P2="162,370" M2="25" P1="153,370" /><JD c="444444,3,1,1" M1="25" P2="152,372" M2="25" P1="151,372" /><JD c="ffffff,3,1,1" M1="25" P2="154,372" M2="25" P1="153,372" /><JD c="D8D8D8,3,1,1" M1="25" P2="156,372" M2="25" P1="155,372" /><JD c="C1C1C1,3,1,1" M1="25" P2="160,372" M2="25" P1="157,372" /><JD c="D8D8D8,3,1,1" M1="25" P2="162,372" M2="25" P1="161,372" /><JD c="444444,3,1,1" M1="25" P2="164,372" M2="25" P1="163,372" /><JD c="493615,3,1,1" M1="25" P2="166,372" M2="25" P1="165,372" /><JD c="684E1E,3,1,1" M1="25" P2="168,372" M2="25" P1="167,372" /><JD c="242424,10,1,1" M1="40" P2="1526,352" M2="40" P1="1509,352" /><JD c="242424,10,1,1" M1="40" P2="1519,358" M2="40" P1="1509,355" /><JD c="242424,10,1,1" M1="40" P2="1518,360" M2="40" P1="1513,358" /><JD c="242424,10,1,1" M1="40" P2="1527,355" M2="40" P1="1525,349" /><JD c="242424,2,1,1" M1="40" P2="1523,361" M2="40" P1="1524,362" /><JD c="242424,2,1,1" M1="40" P2="1524,363" M2="40" P1="1520,365" /><JD c="FFFFFF,4,1,1" M1="40" P2="1513,348" M2="40" P1="1525,339" /><JD c="FFFFFF,4,1,1" M1="40" P2="1508,346" M2="40" P1="1525,344" /><JD c="FFFFFF,4,1,1" M1="40" P2="1520,344" M2="40" P1="1505,342" /><JD c="FFFFFF,4,1,1" M1="40" P2="1509,345" M2="40" P1="1506,344" /><JD c="FFFFFF,10,1,1" M1="40" P2="1513,348" M2="40" P1="1516,341" /><JD c="FFFFFF,3,1,1" M1="40" P2="1510,345" M2="40" P1="1514,335" /><JD c="FFFFFF,3,1,1" M1="40" P2="1518,340" M2="40" P1="1514,335" /><JD c="FFFFFF,3,1,1" M1="40" P2="1520,339" M2="40" P1="1520,337" /><JD c="FFFFFF,4,1,1" M1="40" P2="1508,342" M2="40" P1="1508,340" /><JD c="FFFFFF,1,1,1" M1="40" P2="1508,339" M2="40" P1="1508,338" /><JD c="FFFFFF,1,1,1" M1="40" P2="1520,337" M2="40" P1="1520,336" /><JD c="FFFFFF,1,1,1" M1="40" P2="1514,335" M2="40" P1="1514,334" /><JD c="FFFFFF,3,1,1" M1="40" P2="1507,352" M2="40" P1="1504,350" /><JD c="FFFFFF,4,1,1" M1="40" P2="1526,350" M2="40" P1="1523,346" /><JD c="FFFFFF,6,1,1" M1="40" P2="1527,362" M2="40" P1="1529,358" /><JD c="FFFFFF,6,1,1" M1="40" P2="1526,360" M2="40" P1="1529,355" /><JD c="FFFFFF,6,1,1" M1="40" P2="1517,364" M2="40" P1="1514,364" /><JD c="FFFFFF,2,1,1" M1="40" P2="1513,367" M2="40" P1="1510,366" /><JD c="FFFFFF,2,1,1" M1="40" P2="1514,367" M2="40" P1="1512,365" /><JD c="242424,7,1,1" M1="40" P2="1518,350" M2="40" P1="1511,350" /><JD c="242424,2,1,1" M1="40" P2="1524,352" M2="40" P1="1531,353" /><JD c="242424,2,1,1" M1="40" P2="1528,351" M2="40" P1="1528,348" /><JD c="FFFFFF,2,1,1" M1="40" P2="1513,347" M2="40" P1="1513,346" /><JD c="FFFFFF,1,1,1" M1="40" P2="1516,347" M2="40" P1="1517,346" /><JD c="242424,1,1,1" M1="40" P2="1505,348" M2="40" P1="1506,348" /><JD c="242424,1,1,1" M1="40" P2="1510,347" M2="40" P1="1507,349" /><JD c="FFFFFF,2,1,1" M1="40" P2="1503,349" M2="40" P1="1502,349" /><JD c="FFFFFF,2,1,1" M1="40" P2="1503,350" M2="40" P1="1502,350" /><JD c="FFFFFF,2,1,1" M1="40" P2="1521,339" M2="40" P1="1527,336" /><JD c="FFFFFF,2,1,1" M1="40" P2="1525,343" M2="40" P1="1527,336" /><JD c="ffffff,2,1,1" M1="40" P2="1506,342" M2="40" P1="1503,341" /><JD c="242424,5,1,1" M1="40" P2="1519,364" M2="40" P1="1511,361" /><JD c="242424,2,1,1" M1="40" P2="1507,360" M2="40" P1="1505,356" /><JD c="242424,2,1,1" M1="40" P2="1512,363" M2="40" P1="1507,360" /><JD c="242424,2,1,1" M1="40" P2="1520,365" M2="40" P1="1512,363" /><JD c="242424,2,1,1" M1="40" P2="1508,360" M2="40" P1="1505,354" /><JD c="242424,2,1,1" M1="40" P2="1517,364" M2="40" P1="1509,360" /><JD c="ACACAC,2,1,1" M1="40" P2="1506,353" M2="40" P1="1502,350" /><JD c="ACACAC,2,1,1" M1="40" P2="1508,347" M2="40" P1="1503,341" /><JD c="ACACAC,2,1,1" M1="40" P2="1525,350" M2="40" P1="1523,346" /><JD c="ACACAC,2,1,1" M1="40" P2="1527,364" M2="40" P1="1525,363" /><JD c="ACACAC,2,1,1" M1="40" P2="1531,359" M2="40" P1="1527,364" /><JD c="ACACAC,2,1,1" M1="40" P2="1513,367" M2="40" P1="1510,366" /><JD c="ACACAC,2,1,1" M1="40" P2="1514,367" M2="40" P1="1512,367" /><JD c="ACACAC,2,1,1" M1="40" P2="1520,338" M2="40" P1="1519,337" /><JD c="ffffff,2,1,1" M1="40" P2="1519,353" M2="40" P1="1515,353" /><JD c="ffffff,2,1,1" M1="40" P2="1521,354" M2="40" P1="1519,353" /><JD c="ffffff,2,1,1" M1="40" P2="1522,355" M2="40" P1="1521,354" /><JD c="ffffff,2,1,1" M1="40" P2="1522,355" M2="40" P1="1519,358" /><JD c="ffffff,2,1,1" M1="40" P2="1515,354" M2="40" P1="1515,353" /><JD c="ffffff,2,1,1" M1="40" P2="1515,354" M2="40" P1="1519,358" /><JD c="ffffff,2,1,1" M1="40" P2="1524,359" M2="40" P1="1521,362" /><JD c="ffffff,2,1,1" M1="40" P2="1521,362" M2="40" P1="1524,363" /><JD c="ffffff,2,1,1" M1="40" P2="1507,357" M2="40" P1="1508,356" /><JD c="ffffff,2,1,1" M1="40" P2="1507,359" M2="40" P1="1507,357" /><JD c="ffffff,2,1,1" M1="40" P2="1511,358" M2="40" P1="1508,356" /><JD c="ffffff,2,1,1" M1="40" P2="1514,362" M2="40" P1="1511,358" /><JD c="ffffff,2,1,1" M1="40" P2="1514,362" M2="40" P1="1511,362" /><JD c="ffffff,1,1,1" M1="40" P2="1507,360" M2="40" P1="1510,362" /><JD c="f77474,3,0.8,1" M1="40" P2="1516,343" M2="40" P1="1515,343" /><JD c="f77474,2,0.8,1" M1="40" P2="1517,343" M2="40" P1="1518,343" /></L></Z></C>')
for name,player in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end
function eventPlayerDied(name)
tfm.exec.respawnPlayer(name)
end
function pythag(x1,y1,x2,y2,r)
local x=x2-x1
local y=y2-y1
local r=r+r
return x*x+y*y<r*r
end
function tekrarlanacakSey()
for flash in pairs(p) do
for kk=300,999,1 do
ui.removeTextArea(kk,flash)
end
end
end
sonCalisma=os.time()
function eventLoop()
for name in pairs(paragonder) do
paragonder[name].sure=paragonder[name].sure-0.5
paragonder[name].obursure=paragonder[name].obursure-0.5
if paragonder[name].obursure>=1 then
ui.addTextArea(93, "<r><b><font size='9'>Bu Kodu Kullanmak Ýçin <j>[ "..math.floor(paragonder[name].obursure).." ] <r>Saniye Beklemelisiniz", name,  6, 24, nil, nil, 0x1, 0x1, 0.6, true)
end
if paragonder[name].obursure<=0 then
ui.removeTextArea(93,name)
end
end
if os.time()-sonCalisma>2000 then
tekrarlanacakSey()
sonCalisma=os.time()
end
for flash in pairs(p) do
x=tfm.get.room.playerList[flash].x
y=tfm.get.room.playerList[flash].y
if p[flash].araba3>=2 then
ui.addTextArea(p[flash].arabasayi, "<r>"..araba3ism.."", nil, x, y, nil,nil, 0x1, 0x0, 0.7)
if tfm.get.room.playerList[flash].movingRight then
tfm.exec.movePlayer(flash, 0, 0, true, hiz3, 0, true)
end
if tfm.get.room.playerList[flash].movingLeft then
tfm.exec.movePlayer(flash, 0, 0, true, -hiz3, 0, true)
end
end

if p[flash].araba1>=2 then
ui.addTextArea(p[flash].arabasayi, "<r>"..araba1ism.."", nil, x, y, nil,nil, 0x1, 0x0, 0.7)
if tfm.get.room.playerList[flash].movingRight then
tfm.exec.movePlayer(flash, 0, 0, true, hiz1, 0, true)
end
if tfm.get.room.playerList[flash].movingLeft then
tfm.exec.movePlayer(flash, 0, 0, true, -hiz1, 0, true)
end
end

if p[flash].araba2>=2 then
ui.addTextArea(p[flash].arabasayi, "<r>"..araba2ism.."", nil, x, y, nil,nil, 0x1, 0x0, 0.7)
if tfm.get.room.playerList[flash].movingRight then
tfm.exec.movePlayer(flash, 0, 0, true, hiz2, 0, true)
end
if tfm.get.room.playerList[flash].movingLeft then
tfm.exec.movePlayer(flash, 0, 0, true, -hiz2, 0, true)
end
end
if p[flash].arabamenu>=1 then
if p[flash].araba1>=1 then
ui.addTextArea(7, "<r><a href='event:araba1use'>"..araba1ism.." - "..lang[flash].kullan.." </a><j>"..lang[flash].hiz.." 100 KMH", flash, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[flash].araba2>=1 then
ui.addTextArea(8, "<r><a href='event:araba2use'>"..araba2ism.." - "..lang[flash].kullan.." </a><j>"..lang[flash].hiz.." 300 KMH", flash, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[flash].araba3>=1 then
ui.addTextArea(9, "<r><a href='event:araba3use'>"..araba3ism.." - "..lang[flash].kullan.."</a> <j>"..lang[flash].hiz.." 500 KMH", flash, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[flash].araba1>=2 then
ui.addTextArea(7, "<r><a href='event:1araba'>"..araba1ism.." - "..lang[flash].birak.." </a><j>"..lang[flash].hiz.." 100 KMH", flash, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[flash].araba2>=2 then
ui.addTextArea(8, "<r><a href='event:2araba'>"..araba2ism.." - "..lang[flash].birak.." </a><j>"..lang[flash].hiz.." 300 KMH", flash, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[flash].araba3>=2 then
ui.addTextArea(9, "<r><a href='event:3araba'>"..araba3ism.." - "..lang[flash].birak.."</a> <j>"..lang[flash].hiz.." 500 KMH", flash, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if p[flash].envantermenu>=1 then
ui.addTextArea(30, "<r><p align='center'><b>X"..balikis[flash].olta.."", flash, 169, 82, 64, 21, 0x1, 0x1, 0.7, true)
ui.addTextArea(31, "<r><p align='center'><b>X"..madenis[flash].kazma.."", flash, 79, 82, 64, 21, 0x1, 0x1, 0.7, true)
ui.addTextArea(32, "<a href='event:envkpt'><r><b>X", flash, 739, 25, 16, 20, 0x1, 0x1, 0.7, true)
ui.addTextArea(33, "", flash, 73, 25, 656, 53, 0x1, 0x1, 0.7, true)
ui.addTextArea(34, "", flash, 79, 26, 64, 45, 0x1, 0x899aac, 0.7, true)
ui.addTextArea(50, "", flash, 110, 38, 1, 31, 0x303131, 0x303131, 1, true)
ui.addTextArea(36, "", flash, 97, 37, 24, 4, 0xaaff, 0x1, 1, true)
ui.addTextArea(38, "", flash, 92, 41, 0, 3, 0xaaff, 0x1, 1, true)
ui.addTextArea(39, "", flash, 168, 26, 64, 45, 0x1, 0x899aac, 0.7, true)
ui.addTextArea(40, "", flash, 184, 33, 1, 0, 0x62686b, 0x1, 1, true)
ui.addTextArea(41, "", flash, 189, 38, 1, 0, 0x62686b, 0x1, 1, true)
ui.addTextArea(42, "", flash, 194, 43, 1, 0, 0x62686b , 0x1, 1, true)
ui.addTextArea(47, "", flash, 197, 56, 7, 8, 0x144254, 0x1, 1, true)
ui.addTextArea(43, "", flash, 199, 48, 1, 0, 0x62686b, 0x1, 1, true)
ui.addTextArea(44, "", flash, 204, 53, 1, 0, 0x62686b, 0x1, 1, true)
ui.addTextArea(45, "", flash, 209, 58, 1, 0, 0x62686b, 0x1, 1, true)
ui.addTextArea(46, "", flash, 214, 63, 1, 0, 0x62686b, 0x1, 1, true)
ui.addTextArea(48, "", flash, 181, 38, 1, 26, 0xffffff, 0xffffff, 1, true)
ui.addTextArea(49, "", flash, 126, 42, 0, 3, 0xaaff, 0x1, 1, true)
end
if p[flash].evmenu>=1 then
ui.addTextArea(10, "<r><b><a href='event:arbkpt'><p align='center'>x", flash, 560, 217, 15, 19, 0x1, 0x0, 0.7, true)
ui.addTextArea(7, "<r><b><a href='event:ev1satinal'>"..lang[flash].ev.." 1  - "..ev1fiyat.." "..lang[flash].tl.."", flash, 443, 243, nil,nil, 0x1, 0x0, 0.7, true)
if oda1alindi==1 then
ui.addTextArea(7, "<r><b><a href='event:oda1ziyaret'>"..lang[flash].ev.." 1 - "..lang[flash].ziyaret.."", flash, 443, 243, nil,nil, 0x1, 0x0, 0.7, true)
end
ui.addTextArea(8, "<r><b><a href='event:ev2satinal'>"..lang[flash].ev.." 2  - "..ev2fiyat.." "..lang[flash].tl.."", flash, 444, 277, nil, nil, 0x1, 0x0, 0.7, true)
if oda2alindi==1 then
ui.addTextArea(8, "<r><b><a href='event:oda2ziyaret'>"..lang[flash].ev.." 2  - "..lang[flash].ziyaret.."", flash, 444, 277, nil, nil, 0x1, 0x0, 0.7, true)
end
ui.addTextArea(9, "<r><b><a href='event:ev3satinal'>"..lang[flash].ev.." 3  - "..ev3fiyat.." "..lang[flash].tl.."", flash, 444, 312, nil, nil, 0x1, 0x0, 0.7, true)
if oda3alindi==1 then
ui.addTextArea(9, "<r><b><a href='event:ev3ziyaret'>"..lang[flash].ev.." 3  - "..lang[flash].ziyaret.."", flash, 444, 312, nil, nil, 0x1, 0x0, 0.7, true)
end
if ev2[flash]==1 then
ui.addTextArea(8, "<vp><b>"..lang[flash].oda2satin.." !", flash, 444, 277, nil, nil, 0x1, 0x0, 0.7, true)
if oda1alindi==0 then
ui.removeTextArea(7,flash)
end
if oda3alindi==0 then
ui.removeTextArea(9,flash)
end
end
if ev1[flash]==1 then
ui.addTextArea(7, "<vp><b>"..lang[flash].oda1satin.." !", flash, 443, 243, nil, nil, 0x1, 0x0, 0.7, true)
if oda2alindi==0 then
ui.removeTextArea(8,flash)
end
if oda3alindi==0 then
ui.removeTextArea(9,flash)
end
end
if ev3[flash]==1 then
ui.addTextArea(9, "<vp><b>"..lang[flash].oda3satin.." !", flash, 444, 312, nil, nil, 0x1, 0x0, 0.7, true)
if oda2alindi==0 then
ui.removeTextArea(8,flash)
end
if oda1alindi==0 then
ui.removeTextArea(7,flash)
end
end
end
end

if pode then
		for i, v in pairs(tfm.get.room.playerList) do
			if isMolhado(i) and not v.isDead then
				jogador[i] = jogador[i] - 1
				ui.addTextArea(1234124, "<p align='center'><font color='#ff"..math.floor(jogador[i]/2)..math.floor(jogador[i]/2).."00'size='30px'><b>"..math.floor(jogador[i]/2), i, v.x-35, v.y-25, 70, 70, 0, 0, 0, false)
				for j=1, 10 do
					tfm.exec.displayParticle(14, v.x, v.y, math.random(-20,20)/10, math.random(-20,20)/10, 0, 0, i)
				end
			else
				jogador[i] = 20
				ui.removeTextArea(1234124, i)
			end
			if jogador[i] <= 0 then
				tfm.exec.killPlayer(i)
			end
		end
	end

for name in pairs(tfm.get.room.playerList) do
ui.removeTextArea(98,name)
ui.addTextArea(2, "", name, 345, 357, 121, 45, 0x1, 0x1, 1, true)
ui.addTextArea(5, "<a href='event:arabmenu'><r>"..lang[name].araba.."", name, 294, 376, 41, 22, 0x1, 0x1, 1, true)
ui.addTextArea(4, "<a href='event:evmenu'><r>"..lang[name].ev.."", name, 476, 376, 23, 22, 0x1, 0x1, 1, true)
ui.addTextArea(6, "<a href='event:envanter'><r>"..lang[name].envanter.."", name, 507, 379, nil, 22, 0x1, 0x1, 1, true)
ui.addTextArea(3, "<b><j><font size='15'><p align='center'>$<a href='event:param'>"..p[name].para.."", name, 349, 361, 111, 29, 0x1f2124, 0x1, 0.7, true)
ui.removeTextArea(0,name)
if pythag(is1x , is1y , tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
if is1[name]==0 then
ui.addTextArea(0, "<b><p align='center'><b><bv>"..lang[name].is.." : "..lang[name].balkik.."<br>"..lang[name].para.." : 30 - 90<vp><br><br><r><font size='12'><a href='event:onay'>"..lang[name].onay.."</a>", name, 318, 27, 183, 62, 0x1, 0x1, 0.7, true)
end
if is2[name]==1 then
ui.addTextArea(0, "<b><p align='center'><bv>"..lang[name].is.." : "..lang[name].maden.."<br>"..lang[name].is2.."<br>"..lang[name].para.." : 40 - 160<br><a href='event:is1ayril2'><r>"..lang[name].isleave.."", name, 318, 27, 183, 62, 0x1, 0x1, 0.7, true)
end
if is1[name]==1 then
ui.addTextArea(98, ""..randombalikis[math.random(#randombalikis)].."", name, 1357,185, 300, nil, 0x1, 0x1, 0.7)
ui.addTextArea(0, "<b><p align='center'><bv>"..lang[name].is.." : "..lang[name].balkik.."<br>"..lang[name].is2.."<br>"..lang[name].para.." : 30 - 90<br><r><a href='event:is1ayril'>"..lang[name].isleave.."</a> <g>- <a href='event:oltaal'><vp><font size='9'>"..lang[name].olta.." "..oltafiyat.." "..lang[name].tl.." : "..balikis[name].olta.."", name, 318, 27, 183, 62, 0x1, 0x1, 0.7, true)
end
end

if pythag(is2x,is2y , tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
if is2[name]==0 then
ui.addTextArea(0, "<b><p align='center'><b><bv>"..lang[name].is.." : "..lang[name].maden.."<br>"..lang[name].para.." : 40 - 160<vp><br><br><a href='event:onay2'>"..lang[name].onay.."</a>", name, 318, 27, 183, 62, 0x1, 0x1, 0.7, true)
end
if is1[name]==1 then
ui.addTextArea(0, "<b><p align='center'><bv>"..lang[name].is.." : "..lang[name].balkik.."<br>"..lang[name].is2.."<br>"..lang[name].para.." : 30 - 90<br><a href='event:is1ayril'><r>"..lang[name].isleave.." ", name, 318, 27, 183, 62, 0x1, 0x1, 0.7, true)
end
if is2[name]==1 and madenis[name].is==0 then
ui.addTextArea(98, ""..randommadenis[math.random(#randommadenis)].."", name, 135,266, 300, nil, 0x1, 0x1, 0.7)
ui.addTextArea(0, "<b><p align='center'><bv>"..lang[name].is.." : Madencilik<br>"..lang[name].is2.."<br>"..lang[name].para.."  : 40 - 160<br><font size='8'><r><a href='event:is1ayril2'>"..lang[name].isleave.."</a> <g>-<vp><a href='event:kazmaal'> "..lang[name].kazma.." "..kazmafiyat.." "..lang[name].tl.." : x"..madenis[name].kazma.."</a>", name, 318, 27, 183, 62, 0x1, 0x1, 0.7, true)
end
if madenis[name].is>=1 then
tfm.exec.movePlayer(name,is2x , is2y)
tfm.exec.playEmote(name,15)
end
end

if p[name].paratimer>=1 then
p[name].paratimer=p[name].paratimer+1
tfm.exec.movePlayer(name,is1x , is1y)
tfm.exec.playEmote(name,11)
end
if p[name].paratimer>=12 then
if balikis[name].tik>=4 then
balikis[name].tik=balikis[name].tik-4
balikis[name].olta=balikis[name].olta-1
tfm.exec.playEmote(name,2)
ui.addPopup(0, 0, ""..lang[name].oltakirik.." ", name, 300, 174, 200, true)
end
p[name].paratimer=p[name].paratimer-12
tfm.exec.movePlayer(name,is1x , is1y)
tfm.exec.playEmote(name,11)
p[name].paras=p[name].paras+para[math.random(#para)]
x=tfm.get.room.playerList[name].x
y=tfm.get.room.playerList[name].y
if p[name].paras==0 then
ui.addTextArea(13, "<r><b>"..lang[name].fishermsg1.."", name, x+70, y-50, nil, nil, 0x1, 0x0, 0.7)
tfm.exec.playEmote(name,7)
end
if p[name].paras==30 then
ui.addTextArea(13, "<r><b>"..lang[name].fishermsg2.."", name, x+70, y-50, nil, nil, 0x1, 0x0, 0.7)
tfm.exec.playEmote(name,15)
end
if p[name].paras==35 then
ui.addTextArea(13, "<r><b>"..lang[name].fishermsg3.."", name, x+70, y-50, nil, nil, 0x1, 0x0, 0.7)
tfm.exec.playEmote(name,15)
end
if p[name].paras==50 then
ui.addTextArea(13, "<r><b>"..lang[name].fishermsg4.."", name, x+70, y-50, nil, nil, 0x1, 0x0, 0.7)
tfm.exec.playEmote(name,15)
end
if p[name].paras==75 then
ui.addTextArea(13, "<r><b>"..lang[name].fishermsg5.."", name, x+70, y-50, nil, nil, 0x1, 0x0, 0.7)
tfm.exec.playEmote(name,15)
end
if p[name].paras==90 then
ui.addTextArea(13, "<r><b>"..lang[name].fishermsg6.."", name, x+70, y-50, nil, nil, 0x1, 0x0, 0.7)
tfm.exec.playEmote(name,15)
end

p[name].despawn=p[name].despawn+6
p[name].para=p[name].para+p[name].paras
p[name].paras=p[name].paras-p[name].paras
end
if p[name].despawn==2 then
ui.removeTextArea(13,name)
end
if p[name].despawn>=1 then
p[name].despawn=p[name].despawn-0.5
end
end
for name in pairs(ev1) do
if pythag(ev1x,ev1y, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
ui.addTextArea(130, "<a href='event:evegit'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ui.addTextArea(131, "<a href='event:parola'><r><b>"..lang[name].sifreayar.."", name, 68, 25, 142, 23, 0x1, 0x1, 0.7, true)
ui.addTextArea(132, "<a href='event:davet'><r><b>"..lang[name].herksdvt.." <a href='event:davetkisi'>"..lang[name].kisidvt.."", name, 220, 25, nil, nil, 0x1, 0x1, 0.7, true)
end
if pythag(lobix,lobiy, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
ui.addTextArea(130, "<a href='event:evegit'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.5, true)
ui.removeTextArea(131,name) ui.removeTextArea(132,name)
end
end
for name in pairs(ev2) do
if pythag(ev2x,ev2y, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
ui.addTextArea(130, "<a href='event:evegit2'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ui.addTextArea(131, "<a href='event:parola2'><r><b>"..lang[name].sifreayar.."", name, 68, 25, 142, 23, 0x1, 0x1, 0.7, true)
ui.addTextArea(132, "<a href='event:davet2'><r><b>"..lang[name].herksdvt.." <a href='event:davetkisi2'>"..lang[name].kisidvt.."", name, 220, 25, nil, nil, 0x1, 0x1, 0.7, true)
end
if pythag(lobix,lobiy, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
ui.addTextArea(130, "<a href='event:evegit2'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ui.removeTextArea(131,name) ui.removeTextArea(132,name)
end
end
for name in pairs(ev3) do
if pythag(ev3x,ev3y, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
ui.addTextArea(130, "<a href='event:evegit3'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ui.addTextArea(131, "<a href='event:parola3'><r><b>"..lang[name].sifreayar.."", name, 68, 25, 142, 23, 0x1, 0x1, 0.7, true)
ui.addTextArea(132, "<a href='event:davet3'><r><b>"..lang[name].herksdvt.." <a href='event:davetkisi3'>"..lang[name].kisidvt.."", name, 220, 25, nil, nil, 0x1, 0x1, 0.7, true)
end
if pythag(lobix,lobiy, tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
ui.addTextArea(130, "<a href='event:evegit3'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.5, true)
ui.removeTextArea(131,name) ui.removeTextArea(132,name)
end
end
end

function eventNewGame()
	ui.removeTextArea(0, nil)
	pode = false
	for i=1, #agua do
		table.remove(agua)
	end
	if tfm.get.room.currentMap:sub(1,1) == "@" then
		pegaAguas()
		for i, v in pairs(tfm.get.room.playerList) do
			jogador[i] = 20
		end
	end
end


function isMolhado(p)
	local x = tfm.get.room.playerList[p].x
	local y = tfm.get.room.playerList[p].y
	for i, v in pairs(agua) do
		if (x > (v.X - math.floor(v.L/2))) and (x < (v.X + math.floor(v.L/2))) and (y > (v.Y - math.floor(v.H/2))) and (y < (v.Y + math.floor(v.H/2))) then
			return true
		end
	end
	return false
end



function eventChatCommand(name,cmd)
local args={}
for arg in cmd:gmatch("%S+") do
table.insert(args,arg)
end
if cmd=="lang" then
ui.addTextArea(92, "<font size='150'><b><p align='center'><R><a href='event:tr'>TR </a><G>- <bv><a href='event:en'>EN", name, 36, 121, 749, 192, 0x1, 0x1, 0.7, true)
end
if cmd=="help" then
ui.addPopup(0, 0, ""..lang[name].help.."", name, nil, nil,300, true)
end
if args[1]=="paragonder" and paragonder[name].sure<=0 then
if tonumber(args[3]) and tfm.get.room.playerList[args[2]] then
paragonder[name]={isim=args[2],para=tonumber(args[3])}
p[paragonder[name].isim].para=p[paragonder[name].isim].para+paragonder[name].para
p[name].para=p[name].para-paragonder[name].para
end
if paragonder[name].para>=p[name].para+1 or args[3]=="0" then
ui.addPopup(0, 0, "Bunu Yapamazsýn ! Yasak", name,274, 91, 200, true)
p[paragonder[name].isim].para=p[paragonder[name].isim].para-paragonder[name].para
p[name].para=p[name].para+paragonder[name].para
end
paragonder[name]={isim="",para=0,sure=20,obursure=6}
ui.removeTextArea(93,name)
end
if cmd=="admkit" and admins[name]==1 then
p[name].para=p[name].para+14500
madenis[name].kazma=madenis[name].kazma+64
balikis[name].olta=balikis[name].olta+64
end
if cmd=="ev1info" and admins[name]==1 then
for ev1sahib in pairs(ev1) do
ui.addPopup(0, 0,"Odanýn Sahibi : "..ev1sahib.."<br>Þifre Durumu : "..ev1parolas.."<br>Þifre : "..ev1parola.."<br>Satin Alinma Durumu : "..oda1alindi.."", name, 300, 174, 200, true)
end
end
if cmd=="bugfix" then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do 
ui.removeTextArea(kpt,name)
tfm.exec.movePlayer(name,798,378)
ui.addPopup(0, 0, "Eðer bir bug yakaladýysanýz<br>/c Muutluerkek bug buldum<br><br>You Found the Glitch ?<br>/c Muutluerkek im Found Glitch", name, 300, 174, 200, true)
end
end
end
function eventKeyboard(name, key, down, x, y)
if pythag(is1x,is1y , tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
if key==32 and p[name].paratimer==0 and is1[name]==1 and balikis[name].olta>=1 then
if yon[name].yon>=1 then
tfm.exec.playEmote(name,11)
balikis[name].tik=balikis[name].tik+1
p[name].paratimer=p[name].paratimer+1
end
if yon[name].yon<=0 and key==32 and p[name].paratimer==0 and is1[name]==1 then
ui.addPopup(0, 0, ""..lang[name].ters1.."", name, 300, 174, 200, true)
end
end
if key==32 and p[name].paratimer==0 and is1[name]==1 and balikis[name].olta>=0 then
ui.addPopup(0, 0, ""..lang[name].nothave2.."", name, 300, 174, 200, true)
end
if yon[name].yon<=0 and key==32 and p[name].paratimer==0 and is1[name]==1 then
ui.addPopup(0, 0, ""..lang[name].ters1.."", name, 300, 174, 200, true)
end
end

if key==39 or key==68 then
yon[name]={yon=1}
end
if key==37 or key==65 then
yon[name]={yon=0}
end

if pythag(is2x,is2y , tfm.get.room.playerList[name].x, tfm.get.room.playerList[name].y,20) then
if key==69 and madenis[name].is==0 and is2[name]==1 and madenis[name].kazma>=1 then
if yon[name].yon<=0 then
madenis[name].kazma=madenis[name].kazma-1
madenis[name].is=madenis[name].is+1
madenis[name].random=madenis[name].random+madenrandom[math.random(#madenrandom)]
if madenis[name].random>=1 then
ui.addTextArea(20, "<p align='center'><vp><b><font size='50'><a href='event:ac1'>"..lang[name].kir.."", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'><a href='event:ac2'>"..lang[name].kir.."", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'><a href='event:ac3'>"..lang[name].kir.."", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'><a href='event:ac4'>"..lang[name].kir.."", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(24, "<p align='center'><vp><b><font size='50'><a href='event:ac5'>"..lang[name].kir.."", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(25, "<p align='center'><vp><b><font size='50'><a href='event:ac6'>"..lang[name].kir.."", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'><a href='event:ac7'>"..lang[name].kir.."", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'><a href='event:ac8'>"..lang[name].kir.."", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(28, "<p align='center'><vp><b><font size='50'><a href='event:ac9'>"..lang[name].kir.."", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=2 then
ui.addTextArea(20, "<p align='center'><vp><b><font size='50'><a href='event:ac2'>"..lang[name].kir.."", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'><a href='event:ac1'>"..lang[name].kir.."", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'><a href='event:ac4'>"..lang[name].kir.."", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'><a href='event:ac3'>"..lang[name].kir.."", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(24, "<p align='center'><vp><b><font size='50'><a href='event:ac8'>"..lang[name].kir.."", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(25, "<p align='center'><vp><b><font size='50'><a href='event:ac9'>"..lang[name].kir.."", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'><a href='event:ac7'>"..lang[name].kir.."", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'><a href='event:ac5'>"..lang[name].kir.."", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(28, "<p align='center'><vp><b><font size='50'><a href='event:ac6'>"..lang[name].kir.."", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=3 then
ui.addTextArea(20, "<p align='center'><vp><b><font size='50'><a href='event:ac3'>"..lang[name].kir.."", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'><a href='event:ac4'>"..lang[name].kir.."", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'><a href='event:ac1'>"..lang[name].kir.."", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'><a href='event:ac2'>"..lang[name].kir.."", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(24, "<p align='center'><vp><b><font size='50'><a href='event:ac5'>"..lang[name].kir.."", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(25, "<p align='center'><vp><b><font size='50'><a href='event:ac6'>"..lang[name].kir.."", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'><a href='event:ac7'>"..lang[name].kir.."", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'><a href='event:ac8'>"..lang[name].kir.."", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(28, "<p align='center'><vp><b><font size='50'><a href='event:ac9'>"..lang[name].kir.."", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=4 then
ui.addTextArea(20, "<p align='center'><vp><b><font size='50'><a href='event:ac1'>"..lang[name].kir.."", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'><a href='event:ac2'>"..lang[name].kir.."", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'><a href='event:ac3'>"..lang[name].kir.."", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'><a href='event:ac4'>"..lang[name].kir.."", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(24, "<p align='center'><vp><b><font size='50'><a href='event:ac7'>"..lang[name].kir.."", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(25, "<p align='center'><vp><b><font size='50'><a href='event:ac8'>"..lang[name].kir.."", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'><a href='event:ac5'>"..lang[name].kir.."", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'><a href='event:ac6'>"..lang[name].kir.."", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(28, "<p align='center'><vp><b><font size='50'><a href='event:ac9'>"..lang[name].kir.."", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(20, "<p align='center'><vp><b><font size='50'><a href='event:ac9'>"..lang[name].kir.."", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'><a href='event:ac8'>"..lang[name].kir.."", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'><a href='event:ac3'>"..lang[name].kir.."", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'><a href='event:ac5'>"..lang[name].kir.."", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(24, "<p align='center'><vp><b><font size='50'><a href='event:ac7'>"..lang[name].kir.."", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(25, "<p align='center'><vp><b><font size='50'><a href='event:ac2'>"..lang[name].kir.."", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'><a href='event:ac4'>"..lang[name].kir.."", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'><a href='event:ac6'>"..lang[name].kir.."", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
ui.addTextArea(28, "<p align='center'><vp><b><font size='50'><a href='event:ac1'>"..lang[name].kir.."", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end
end
if yon[name].yon>=1 and key==69 and madenis[name].is==0 and is2[name]==1 then
ui.addPopup(0, 0, ""..lang[name].ters2.."", name, 300, 174, 200, true)
end
end

if key==69 and madenis[name].is==0 and is2[name]==1 and madenis[name].kazma>=0 then
ui.addPopup(0, 0, ""..lang[name].nothave1.."", name, 300, 174, 200, true)
end
if yon[name].yon>=1 and key==69 and madenis[name].is==0 and is2[name]==1 then
ui.addPopup(0, 0, ""..lang[name].ters2.."", name, 300, 174, 200, true)
end
end
if key==38 or key==87 then
if p[name].araba1>=2 then
p[name].araba1=p[name].araba1-1
end
if p[name].araba2>=2 then
p[name].araba2=p[name].araba2-1
ui.removeTextArea(9999999,name)
end
if p[name].araba3>=2 then
p[name].araba3=p[name].araba3-1
ui.removeTextArea(9999999,name)
end
ui.addTextArea(9999999,"",name,99999,999999,nil,nil,0x0,0)
end
end
 
function pegaAguas()
	local xml = tfm.get.room.xmlMapInfo.xml
	local i = 1
	while i < xml:len() do
		if xml:sub(i,i+2) == "<S " then
			j = i + 3
			while xml:sub(j,j) ~= ">" do
				if xml:sub(j,j+4) == [[T="9"]] then
					z = i + 3
					while(xml:sub(z,z) ~= "/") do
						if xml:sub(z,z) == "H" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							h = tonumber(xml:sub(z+3, v-1),10)
						elseif xml:sub(z,z) == "L" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							l = tonumber(xml:sub(z+3, v-1),10)
						elseif xml:sub(z,z) == "X" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							x = tonumber(xml:sub(z+3, v-1),10)
						elseif xml:sub(z,z) == "Y" then
							v = z + 3
							while xml:sub(v,v) ~= [["]] do
								v = v + 1
							end
							y = tonumber(xml:sub(z+3, v-1),10)
						end
						z = z + 1
					end
					table.insert(agua, {X=x, Y=y, H=h, L=l})
				end
				j = j + 1
			end
			i = j
		end
		i = i + 1
	end
	pode = true
end

function eventTextAreaCallback(id,name,cb)
if cb=="onay" then
is1[name]=1
end
if cb=="param" then
ui.addPopup(0, 0, "Bütün Paranýz : "..p[name].para.."<br>Para Göndermek Ýçin: (Not : Paranýzýn Yarýsýný Gönderebilirsiniz.)<br>!paragonder isim miktar", name, 300, 174, 400, true)
end
if cb=="lobidon" then
tfm.exec.movePlayer(name,803,381)
end
if cb=="en" then
lang[name]={
araba="Car",
ev="<font size='7'>Home",
envanter="Inventory",
is="Job",
maden="Miner",
balkik="Fisher",
para="Money",
onay="Verifed",
is2="You are at work",
isleave="Job Leave",
kazma="Picaxe",
satinal="Buy",
olta="<font size='7'>Fishing Rod",
tl="USD",
nothave1="No have Picaxe",
nothave2="No fishing rod",
hiz="Speed",
kir="<font size='45'>Dig",
kullan="Use",
birak="Drop",
oltakirik="Crack You fish rod !",
comingsoon="Coming Soon",
kazmafull="You Full Picaxe Not verry Buy",
oltafull="You Full Fish rod Not verry Buy",
fishermsg1="Fish Rod Empty ! :/",
fishermsg2="Anchovy 30 USD Solded !",
fishermsg3="Levrek 35 USD Solded !",
fishermsg4="Çinekop 50 USD Solded !",
fishermsg5="Old Money 75 USD Solded !",
fishermsg6="Dog fish Catched 90 USD Solded !",
help="<p align='center'><b>Help<br>• Job : Fisher : Fisher Money 30 USD 90 USD mid Money won 1 Fisher rod 4 use and crack.<br>• Job : Miner : 	Mine dig Need the 1 Picaxe You can already get it under the miner's work tag.<br>• Inventory : 1. Picaxe 2. Fisher rod You already understand the System<br>• Commands : <br>!help - help page open<br>!lang - Lang Change menu open<br>!bugfix - Glitch fix",
parolavar="Password",
oda1satin="Home 1 - Solded !",
evegit="<font size='9'>Go Home",
sifreayar="<b><p align='center'>Pasword Change",
herksdvt="All Ýnvite",
kisidvt="One People invite",
davetmsg="You invited<br><br>Verifed For Green Button click or close page red button click<br><br><br><VP><a href='event:ev1davetonay'>Verifed</a> <g>- <r><a href='event:ev1davetiptal'>Close",
ziyaret="Visit Home",
lobidon="Back To Lobby",
oda2satin="Home 2 - Solded !",
oda3satin="Home 3 - Solded !",
davetmsg2="You invited<br><br>Verifed For Green Button click or close page red button click<br><br><br><VP><a href='event:ev2davetonay'>Verifed</a> <g>- <r><a href='event:ev2davetiptal'>Close",
davetmsg3="You invited<br><br>Verifed For Green Button click or close page red button click<br><br><br><VP><a href='event:ev3davetonay'>Verifed</a> <g>- <r><a href='event:ev3davetiptal'>Close",
hosgeldin="<p align='center'>Welcome :)</p>",
ters1="You Can not Hold the Inverse Fish!",
ters2="You can not do reverse digging!"
}
ui.removeTextArea(92,name)
ui.addTextArea(134, "<a href='event:lobidon'><r><b>"..lang[name].lobidon.."", name, 715, 24, nil, nil, 0x1, 0x1, 0.7, true)
end

if cb=="tr" then
lang[name]={
araba="Araba",
ev="Ev",
envanter="Envanter",
is="Ýþ",
maden="Madençilik",
balkik="Balikçilik",
para="Para",
onay="Onay",
is2="Ýþtesin !",
isleave="Ýþten Ayrýl",
kazma="Kazma",
satinal="Satýn Al",
olta="Olta",
tl="TL",
nothave1="Kazman Yok Kazma Almalýsýn !",
nothave2="Oltan Yok Olta Almalýsýn",
hiz="Hýz",
kir="Kýr",
kullan="Kullan",
birak="Býrak",
oltakirik="Oltan Kýrýldý !",
comingsoon="Yakýnda...",
kazmafull="Tane Kazman oldu Daha fazla alamazsýn !",
oltafull="Tane Oltan oldu Daha fazla alamazsýn !",
fishermsg1="Oltanýn ucu Boþ ! :/",
fishermsg2="Hamsi Yakaladýn 30 Lira Eder !",
fishermsg3="Levrek Yakaladýn 35 Lira Eder !",
fishermsg4="Çinekop Yakaladýn 50 Lira Eder !",
fishermsg5="Eski Para Oltana Takýldý 75 Lira Eder !",
fishermsg6="Köpek Balýgý Yakaladýn 90 Lira Eder !",
help="<p align='center'><b>Yardým<br>• Ýþ : Balýkçýlýk : Balýkçýlýkta 30 TL 90 TL arasý para kazanýrsýnýz 1 oltanýn 4 kullaným hakký vardýr.<br>• Ýþ : Madencilik : Her maden kazarken 1 Kazmaya Ýhteyacýnýz vardýr bunuda zaten madenci iþ tagýnýn altýnda alabilirsiniz.<br>• Envanter : 1. Olan Kazmadýr 2. Olan Oltadýr zaten Sistemi Anlamýþsýnýzdýr<br>• Komutlar : <br>!help - bu Sayfayý Açar<br>!lang - Dil Deðiþtirme Menusunu Açar<br>!bugfix - Bir buga girdiyseniz Bugtan Kurtarýr",
parolavar="Parola Var",
oda1satin="Ev 1 - Satýn Alýndý !",
evegit="Eve Git",
sifreayar="Parola Ayarla Kaldýr",
herksdvt="Herkesi Davet et",
kisidvt="Kiþi Davet et",
davetmsg="seni eve Davet ediyor<br><br>Onaylamak Ýçin yeþil butona yani onaylaya iptal etmek içinse Ýptal tuþuna basýnýz.<br><br><br><VP><a href='event:ev1davetonay'>Onayla</a> <g>- <r><a href='event:ev1davetiptal'>Ýptal",
ziyaret="Ziyaret et",
lobidon="Lobiye Dön",
oda2satin="Ev 2 - Satýn Alýndý !",
oda3satin="Ev 3 - Satýn Alýndý !",
davetmsg2="seni eve Davet ediyor<br><br>Onaylamak Ýçin yeþil butona yani onaylaya iptal etmek içinse Ýptal tuþuna basýnýz.<br><br><br><VP><a href='event:ev2davetonay'>Onayla</a> <g>- <r><a href='event:ev2davetiptal'>Ýptal",
davetmsg3="seni eve Davet ediyor<br><br>Onaylamak Ýçin yeþil butona yani onaylaya iptal etmek içinse Ýptal tuþuna basýnýz.<br><br><br><VP><a href='event:ev3davetonay'>Onayla</a> <g>- <r><a href='event:ev3davetiptal'>Ýptal",
hosgeldin="<p align='center'>Hoþgeldin :)</p>",
ters1="Ters Balýk Tutamazsýn !",
ters2="Ters Maden Kazamazsýn !"
}
ui.removeTextArea(92,name)
ui.addTextArea(134, "<a href='event:lobidon'><r><b>"..lang[name].lobidon.."", name, 715, 24, nil, nil, 0x1, 0x1, 0.7, true)
end

if cb=="is1ayril" then
is1[name]=0
end
if cb=="is1ayril2" then
is2[name]=0
end
if cb=="envkpt" then
if p[name].envantermenu>=1 then
p[name].envantermenu=p[name].envantermenu-p[name].envantermenu
end
for kpt= 30,50,1 do
ui.removeTextArea(kpt,name)
end
end

if cb=="envanter" then
if p[name].envantermenu==0 then
p[name].envantermenu=p[name].envantermenu+1
end
end
if cb=="oltaal" and p[name].para>=oltafiyat then
if balikis[name].olta>=0 then
p[name].para=p[name].para-oltafiyat
balikis[name].olta=balikis[name].olta+1
end
if balikis[name].olta>=65 then
p[name].para=p[name].para+oltafiyat
balikis[name].olta=balikis[name].olta-1
ui.addPopup(0, 0, ""..balikis[name].olta.." "..lang[name].oltafull.."", name, 300, 174, 200, true)
end
end

if cb=="kazmaal" and p[name].para>=kazmafiyat then
if madenis[name].kazma>=0 then
p[name].para=p[name].para-kazmafiyat
madenis[name].kazma=madenis[name].kazma+1
end
if madenis[name].kazma>=65 then
p[name].para=p[name].para+kazmafiyat
madenis[name].kazma=madenis[name].kazma-1
ui.addPopup(0, 0, ""..madenis[name].kazma.." "..lang[name].kazmafull.."", name, 300, 174, 200, true)
end
end
if cb=="arabmenu" then
if p[name].arabamenu==0 then
p[name].arabamenu=p[name].arabamenu+1
end
ui.addTextArea(7, "<r><a href='event:araba1'>"..araba1ism.." - "..jip.." "..lang[name].tl.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
ui.addTextArea(8, "<r><a href='event:araba2'>"..araba2ism.." - "..ferrari.." "..lang[name].tl.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
ui.addTextArea(9, "<r><a href='event:araba3'>"..araba3ism.." - "..bugatti.." "..lang[name].tl.." </a><j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
ui.addTextArea(10, "<r><b><a href='event:arbkpt'><p align='center'>x", name, 405, 226, 15, 19, 0x1, 0x0, 0.7,true)
if p[name].araba1>=1 then
ui.addTextArea(7, "<r><a href='event:araba1use'>"..araba1ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba2>=1 then
ui.addTextArea(8, "<r><a href='event:araba2use'>"..araba2ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba3>=1 then
ui.addTextArea(9, "<r><a href='event:araba3use'>"..araba3ism.." - "..lang[name].kullan.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba1>=2 then
ui.addTextArea(7, "<r><a href='event:1araba'>"..araba1ism.." - "..lang[name].birak.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba2>=2 then
ui.addTextArea(8, "<r><a href='event:2araba'>"..araba2ism.." - "..lang[name].birak.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba3>=2 then
ui.addTextArea(9, "<r><a href='event:3araba'>"..araba3ism.." - "..lang[name].birak.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="ac1" then
if madenis[name].random>=1 then
ui.addTextArea(20, "<p align='center'><r><b><font size='50'>X", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=2 then
ui.addTextArea(21, "<p align='center'><r><b><font size='50'>X", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=3 then
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'>^", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=4 then
ui.addTextArea(20, "<p align='center'><r><b><font size='50'>^", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=5 then
ui.addTextArea(28, "<p align='center'><r><b><font size='50'>X", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end
madenis[name].tik=madenis[name].tik+1 
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do 
ui.removeTextArea(kpt,name)
end
end
end

if cb=="ac2" then
if madenis[name].random>=1 then
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'>^", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end

if madenis[name].random>=2 then
ui.addTextArea(20, "<p align='center'><R><b><font size='50'>X", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=3 then
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'>^", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=4 then
ui.addTextArea(21, "<p align='center'><R><b><font size='50'>X", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(25, "<p align='center'><R><b><font size='50'>X", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
end
madenis[name].tik=madenis[name].tik+1
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
 end
if cb=="ac3" then
if madenis[name].random>=1 then
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'>^", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=2 then
ui.addTextArea(23, "<p align='center'><R><b><font size='50'>X", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=3 then
ui.addTextArea(20, "<p align='center'><R><b><font size='50'>X", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=4 then
ui.addTextArea(22, "<p align='center'><R><b><font size='50'>X", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(22, "<p align='center'><vp><b><font size='50'>^", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
madenis[name].tik=madenis[name].tik+1
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
 end
if cb=="ac4" then
if madenis[name].random>=1 then
ui.addTextArea(23, "<p align='center'><vp><b><font size='50'>^", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=2 then
ui.addTextArea(22, "<p align='center'><R><b><font size='50'>X", name, 227, 240, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=3 then
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'>^", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=4 then
ui.addTextArea(23, "<p align='center'><R><b><font size='50'>X", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'>^", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
madenis[name].tik=madenis[name].tik+1 
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
end
if cb=="ac5" then
if madenis[name].random>=1 then
ui.addTextArea(24, "<p align='center'><R><b><font size='50'>X", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=2 then
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'>^", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end

if madenis[name].random>=3 then
ui.addTextArea(24, "<p align='center'><vp><b><font size='50'>^", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=4 then
ui.addTextArea(26, "<p align='center'><R><b><font size='50'>X", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(23, "<p align='center'><R><b><font size='50'>X", name, 227, 323, 90, 70, 0x1, 0x1, 0.7)
end
madenis[name].tik=madenis[name].tik+1 
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
end
if cb=="ac6" then
if madenis[name].random>=1 then
ui.addTextArea(25, "<p align='center'><R><b><font size='50'>X", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=2 then
ui.addTextArea(28, "<p align='center'><R><b><font size='50'>X", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end

if madenis[name].random>=3 then
ui.addTextArea(25, "<p align='center'><R><b><font size='50'>X", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=4 then
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'>^", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=5 then
ui.addTextArea(27, "<p align='center'><R><b><font size='50'>X", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
end
madenis[name].tik=madenis[name].tik+1 
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do 
ui.removeTextArea(kpt,name)
end
end
end
if cb=="ac7" then
if madenis[name].random>=1 then
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'>^", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end

if madenis[name].random>=2 then
ui.addTextArea(26, "<p align='center'><vp><b><font size='50'>^", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end

if madenis[name].random>=3 then
ui.addTextArea(26, "<p align='center'><R><b><font size='50'>X", name, 7, 157, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=4 then
ui.addTextArea(24, "<p align='center'><R><b><font size='50'>X", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(24, "<p align='center'><R><b><font size='50'>X", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
end
madenis[name].tik=madenis[name].tik+1 
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
end
if cb=="ac8" then
if madenis[name].random>=1 then
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'>^", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=2 then
ui.addTextArea(24, "<p align='center'><R><b><font size='50'>X", name, 116, 323, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=3 then
ui.addTextArea(27, "<p align='center'><vp><b><font size='50'>^", name, 116, 157, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
if madenis[name].random>=4 then
ui.addTextArea(25, "<p align='center'><R><b><font size='50'>X", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(21, "<p align='center'><vp><b><font size='50'>^", name, 117, 239, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+madenparasi[math.random(#madenparasi)]
end
madenis[name].tik=madenis[name].tik+1 
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
end
if cb=="ac9" then
if madenis[name].random>=1 then
ui.addTextArea(28, "<p align='center'><R><b><font size='50'>X", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=2 then
ui.addTextArea(25, "<p align='center'><R><b><font size='50'>X", name, 7, 322, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=3 then
ui.addTextArea(28, "<p align='center'><vp><b><font size='50'>^", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+5
end
if madenis[name].random>=4 then
ui.addTextArea(28, "<p align='center'><R><b><font size='50'>X", name, 227, 158, 90, 70, 0x1, 0x1, 0.7)
end
if madenis[name].random>=5 then
ui.addTextArea(20, "<p align='center'><vp><b><font size='50'>^", name, 7, 239, 90, 70, 0x1, 0x1, 0.7)
p[name].para=p[name].para+5
end
madenis[name].tik=madenis[name].tik+1
if madenis[name].tik>=4 then
madenis[name]={is=0,tik=0,random=0,kazma=madenis[name].kazma} for kpt = 20,28,1 do ui.removeTextArea(kpt,name)
end
end
end
if cb=="araba1" and p[name].para>=jip then
p[name].para=p[name].para-jip
p[name].araba1=p[name].araba1+1
if p[name].araba1>=1 then
ui.addTextArea(7, "<r><a href='event:araba1use'>Jip - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="evmenu" then
if p[name].evmenu<=0 then
p[name].evmenu=p[name].evmenu+1
end
end
if cb=="ev1satinal" and p[name].para>=ev1fiyat then
p[name].para=p[name].para-ev1fiyat
oda1alindi=oda1alindi+1
tfm.exec.movePlayer(name,ev1x,ev1y)
ui.addTextArea(7, "<vp><b>"..lang[name].oda1satin.." !", name, 443, 243, nil, nil, 0x1, 0x0, 0.7, true)
ui.removeTextArea(8,name) ui.removeTextArea(9,name)
ui.addTextArea(130, "<a href='event:evegit'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ev1[name]=1
end
if cb=="ev2satinal" and p[name].para>=ev2fiyat then
p[name].para=p[name].para-ev2fiyat
oda2alindi=oda2alindi+1
tfm.exec.movePlayer(name,ev2x,ev2y)
ui.addTextArea(8, "<vp><b>"..lang[name].oda2satin.." !", name, 444, 277, nil, nil, 0x1, 0x0, 0.7, true)
ui.removeTextArea(7,name) ui.removeTextArea(9,name)
ui.addTextArea(130, "<a href='event:evegit2'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ev2[name]=1
end
if cb=="ev3satinal" and p[name].para>=ev3fiyat then
p[name].para=p[name].para-ev3fiyat
oda3alindi=oda3alindi+1
tfm.exec.movePlayer(name,ev3x,ev3y)
ui.addTextArea(8, "<vp><b>"..lang[name].oda3satin.." !", name, 444, 312, nil, nil, 0x1, 0x0, 0.7, true)
ui.removeTextArea(7,name) ui.removeTextArea(9,name)
ui.addTextArea(130, "<a href='event:evegit3'><r><b>"..lang[name].evegit.."", name, 5, 25, 53, 23, 0x1, 0x1, 0.7, true)
ev3[name]=1
end
if cb=="evegit" then
if ev1[name]==1 and ev1parolas==0 then
tfm.exec.movePlayer(name,ev1x,ev1y)
end
if ev1[name]==1 and ev1parolas==1 then
ui.addPopup(2, 2, ""..lang[name].parolavar.." Parola = "..ev1parola.."", name, 300, 174, 200, true)
end
end
if cb=="evegit2" then
if ev2[name]==1 and ev2parolas==0 then
tfm.exec.movePlayer(name,ev2x,ev2y)
end
if ev2[name]==1 and ev2parolas==1 then
ui.addPopup(4, 2, ""..lang[name].parolavar.." Parola = "..ev2parola.."", name, 300, 174, 200, true)
end
end
if cb=="evegit3" then
if ev3[name]==1 and ev3parolas==0 then
tfm.exec.movePlayer(name,ev3x,ev3y)
end
if ev3[name]==1 and ev3parolas==1 then
ui.addPopup(5, 2, ""..lang[name].parolavar.." Parola = "..ev3parola.."", name, 300, 174, 200, true)
end
end
if cb=="davetkisi" then
ui.addPopup(3, 2, ""..lang[name].kisidvt.."", name, 300, 174, 200, true)
end
if cb=="davet" then
for ev1 in pairs(ev1) do
ui.addTextArea(133, "<font size='15'><br><p align='center'><vp>"..ev1.."<bv><br>"..lang[name].davetmsg.."", nil, 180, 116, 363, 204, 0x1, 0x1, 0.7,true)
ui.removeTextArea(133,name)
end
end
if cb=="davet2" then
for ev2 in pairs(ev2) do
ui.addTextArea(134, "<font size='15'><br><p align='center'><vp>"..ev2.."<bv><br>"..lang[name].davetmsg2.."", nil, 180, 116, 363, 204, 0x1, 0x1, 0.7,true)
ui.removeTextArea(134,name)
end
end
if cb=="davetkisi2" then
ui.addPopup(8, 2, ""..lang[name].kisidvt.."", name, 300, 174, 200, true)
end
if cb=="davetkisi3" then
ui.addPopup(9, 2, ""..lang[name].kisidvt.."", name, 300, 174, 200, true)
end
if cb=="davet3" then
for ev3 in pairs(ev3) do
ui.addTextArea(136, "<font size='15'><br><p align='center'><vp>"..ev3.."<bv><br>"..lang[name].davetmsg3.."", nil, 180, 116, 363, 204, 0x1, 0x1, 0.7,true)
ui.removeTextArea(136,name)
end
end
if cb=="ev1davetonay" then
tfm.exec.movePlayer(name,ev1x,ev1y)
ui.removeTextArea(133,name)
end
if cb=="ev1davetiptal" then
ui.removeTextArea(133,name)
end
if cb=="ev2davetonay" then
tfm.exec.movePlayer(name,ev2x,ev2y)
ui.removeTextArea(134,name)
end
if cb=="ev2davetiptal" then
ui.removeTextArea(134,name)
end
if cb=="ev3davetonay" then
tfm.exec.movePlayer(name,ev3x,ev3y)
ui.removeTextArea(136,name)
end
if cb=="ev3davetiptal" then
ui.removeTextArea(136,name)
end
if cb=="oda1ziyaret" then
if ev1parolas==0 then
tfm.exec.movePlayer(name,ev1x,ev1y)
end
if ev1parolas==1 then
ui.addPopup(2, 2, ""..lang[name].parolavar.."", name, 300, 174, 200, true)
end
end
if cb=="oda2ziyaret" then
if ev2parolas==0 then
tfm.exec.movePlayer(name,ev2x,ev2y)
end
if ev2parolas==1 then
ui.addPopup(12, 2, ""..lang[name].parolavar.."", name, 300, 174, 200, true)
end
end
if cb=="ev3ziyaret" then
if ev3parolas==0 then
tfm.exec.movePlayer(name,ev3x,ev3y)
end
if ev3parolas==1 then
ui.addPopup(14, 2, ""..lang[name].parolavar.."", name, 300, 174, 200, true)
end
end
if cb=="araba2" and p[name].para>=ferrari then
p[name].para=p[name].para-ferrari
p[name].araba2=p[name].araba2+1
if p[name].araba2>=1 then
ui.addTextArea(8, "<r><a href='event:araba2use'>"..araba2ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="parola2" then
if ev2parolas==0 then
ui.addPopup(6, 2, "TR: Parola Ayarla<BR>EN: Password Change", name, 300, 174, 200, true)
end
if ev2parolas==1 then
ev2parola=""
ev2parolas=ev2parolas-1
end
end
if cb=="parola3" then
if ev3parolas==0 then
ui.addPopup(7, 2, "TR: Parola Ayarla<BR>EN: Password Change", name, 300, 174, 200, true)
end
if ev3parolas==1 then
ev3arola=""
ev3parolas=ev3parolas-1
end
end
if cb=="parola" then
if ev1parolas==0 then
ui.addPopup(1, 2, "TR: Parola Ayarla<BR>EN: Password Change", name, 300, 174, 200, true)
end
if ev1parolas==1 then
ev1parola=""
ev1parolas=ev1parolas-1
end
end
if cb=="araba3" and p[name].para>=bugatti then
p[name].para=p[name].para-bugatti
p[name].araba3=p[name].araba3+1
if p[name].araba3>=1 then
ui.addTextArea(9, "<r><a href='event:araba3use'>"..araba3ism.." - "..lang[name].kullan.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="araba1use" then
if p[name].araba2>=2 then
p[name].araba2=p[name].araba2-1
end
if p[name].araba3>=2 then
p[name].araba3=p[name].araba3-1
end
p[name].araba1=p[name].araba1+1
if p[name].araba1>=2 then
ui.addTextArea(7, "<r><a href='event:1araba'>"..araba1ism.." - "..lang[name].birak.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba2>=1 then
ui.addTextArea(8, "<r><a href='event:araba2use'>"..araba2ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba3>=1 then
ui.addTextArea(9, "<r><a href='event:araba3use'>"..araba3ism.." - "..lang[name].kullan.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="araba2use" then
if p[name].araba1>=2 then
p[name].araba1=p[name].araba1-1
end
if p[name].araba3>=2 then
p[name].araba3=p[name].araba3-1
end
p[name].araba2=p[name].araba2+1
if p[name].araba2>=2 then
ui.addTextArea(8, "<r><a href='event:2araba'>"..araba2ism.." - "..lang[name].birak.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba1>=1 then
ui.addTextArea(7, "<r><a href='event:araba1use'>"..araba1ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba3>=1 then
ui.addTextArea(9, "<r><a href='event:araba3use'>"..araba3ism.." - "..lang[name].kullan.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="araba3use" then
if p[name].araba1>=2 then
p[name].araba1=p[name].araba1-1
end
if p[name].araba2>=2 then
p[name].araba2=p[name].araba2-1
end
p[name].araba3=p[name].araba3+1
if p[name].araba3>=2 then
ui.addTextArea(9, "<r><a href='event:3araba'>"..araba3ism.." - "..lang[name].birak.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba1>=1 then
ui.addTextArea(7, "<r><a href='event:araba1use'>"..araba1ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
if p[name].araba2>=1 then
ui.addTextArea(8, "<r><a href='event:araba2use'>"..araba2ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="3araba" then
p[name].araba3=p[name].araba3-1
if p[name].araba3>=1 then
ui.addTextArea(9, "<r><a href='event:araba3use'>"..araba3ism.." - "..lang[name].kullan.."</a> <j>"..lang[name].hiz.." 500 KMH", name, 244, 329, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="2araba" then
p[name].araba2=p[name].araba2-1
if p[name].araba2>=1 then
ui.addTextArea(8, "<r><a href='event:araba2use'>"..araba2ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 300 KMH", name, 245, 291, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="1araba" then
p[name].araba1=p[name].araba1-1
if p[name].araba1>=1 then
ui.addTextArea(7, "<r><a href='event:araba1use'>"..araba1ism.." - "..lang[name].kullan.." </a><j>"..lang[name].hiz.." 100 KMH", name, 245, 255, nil, nil, 0x1, 0x0, 0.7,true)
end
end
if cb=="onay2" then
is2[name]=1
end
if cb=="arbkpt" then
if p[name].arabamenu>=1 then
p[name].arabamenu=p[name].arabamenu-p[name].arabamenu
end
if p[name].evmenu>=1 then
p[name].evmenu=p[name].evmenu-p[name].evmenu
end
ui.removeTextArea(7,name) ui.removeTextArea(8,name) ui.removeTextArea(9,name) ui.removeTextArea(10,name)
end
end
function eventPopupAnswer(id,name,cvp)
if id==1 then
ev1parola=""..cvp..""
ev1parolas=ev1parolas+1
if cvp=="" then
ev1parola=""
ev1parolas=0
ui.addPopup(0, 0, "Hata : Þifre Girmedin !<br>Error : Password Box Empty !", name, 300, 174, 200, true)
end
end
if id==2 then
if cvp==""..ev1parola.."" then
tfm.exec.movePlayer(name,ev1x,ev1y)
end
if cvp=="" then
tfm.exec.killPlayer(name)
tfm.exec.respawnPlayer(name) 
ui.addPopup(0, 0, "Hata : Þifre Girmedin !<br>Error : Password Box Empty !", name, 300, 174, 200, true)
end
end
if id==3 then
for ev1 in pairs(ev1) do
ui.addTextArea(133, "<font size='15'><br><p align='center'><vp>"..ev1.."<bv><br>"..lang[name].davetmsg.."<br><br><br><VP><a href='event:ev1davetonay'>Onayla</a> <g>- <r><a href='event:ev1davetiptal'>Ýptal", cvp, 180, 116, 363, 204, 0x1, 0x1, 0.7,true)
end
end
if id==6 then
ev2parola=""..cvp..""
ev2parolas=ev2parolas+1
if cvp=="" then
ev2parola=""
ev2parolas=0
ui.addPopup(0, 0, "Hata : Þifre Girmedin !<br>Error : Password Box Empty !", name, 300, 174, 200, true)
end
end
if id==7 then
ev3parola=""..cvp..""
ev3parolas=ev3parolas+1
if cvp=="" then
ev3parola=""
ev3parolas=0
ui.addPopup(0, 0, "Hata : Þifre Girmedin !<br>Error : Password Box Empty !", name, 300, 174, 200, true)
end
end
if id==4 then
if cvp==""..ev2parola.."" then
tfm.exec.movePlayer(name,ev2x,ev2y)
end
if cvp=="" then
tfm.exec.killPlayer(name)
tfm.exec.respawnPlayer(name) 
ui.addPopup(0, 0, "Hata : Þifre Girmedin !<br>Error : Password Box Empty !", name, 300, 174, 200, true)
end
end
if id==5 then
if cvp==""..ev3parola.."" then
tfm.exec.movePlayer(name,ev3x,ev3y)
end
if cvp=="" then
tfm.exec.killPlayer(name)
tfm.exec.respawnPlayer(name) 
ui.addPopup(0, 0, "Hata : Þifre Girmedin !<br>Error : Password Box Empty !", name, 300, 174, 200, true)
end
end
if id==8 then
for ev1 in pairs(ev2) do
ui.addTextArea(134, "<font size='15'><br><p align='center'><vp>"..ev1.."<bv><br>"..lang[name].davetmsg2.."<br><br><br><VP><a href='event:ev2davetonay'>Onayla</a> <g>- <r><a href='event:ev2davetiptal'>Ýptal", cvp, 180, 116, 363, 204, 0x1, 0x1, 0.7,true)
end
end
if id==9 then
for ev1 in pairs(ev3) do
ui.addTextArea(136, "<font size='15'><br><p align='center'><vp>"..ev1.."<bv><br>"..lang[name].davetmsg3.."<br><br><br><VP><a href='event:ev1davetonay'>Onayla</a> <g>- <r><a href='event:ev1davetiptal'>Ýptal", cvp, 180, 116, 363, 204, 0x1, 0x1, 0.7,true)
end
end
end