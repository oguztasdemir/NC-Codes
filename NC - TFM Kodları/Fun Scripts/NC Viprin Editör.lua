function table()
	mice={}
	id=0
	tfm.exec.addPhysicObject(1,400,-600,{type=0,width=10,height=10,foreground=true,friction=0.3,restitution=0,dynamic=false,miceCollision=true,groundCollision=true})
end

function eventNewGame()
	tfm.exec.addPhysicObject(1,400,-600,{type=0,width=10,height=10,foreground=true,friction=0.3,restitution=0,dynamic=false,miceCollision=true,groundCollision=true})
end

function eventNewPlayer(name)
	system.bindMouse(name,active)
	tfm.exec.bindKeyboard(name,80,false,true)
	if not mice[name] then
		mice[name]={
			step=0,
			id=0,
			X,
			Y,
			U,
			V,
			size=10,
			alpha=1,
			foreground=true,
			status="Active",
			color=0xffffff
		}
	end
	ui.addTextArea(0,'<p align="center"><font size="13">'..mice[name].status..'</font></p>',name,15,365,50,20,0x003333,0x003333,1)
	ui.addTextArea(1,'<p align="center"><font size="13"><a href="event:size">'..mice[name].size..'</a>px</font></p>',name,125,365,50,20,0x003333,0x003333,1)
	ui.addTextArea(2,'<p align="center"><font size="13"><a href="event:alpha">'..(mice[name].alpha*100)..'</a>%</font></p>',name,195,365,50,20,0x003333,0x003333,1)
	ui.addTextArea(3,'<p align="center"><font size="13"><a href="event:foreground">Foreground</a></font></p>',name,265,365,90,20,0x003333,0x003333,1)
	ui.addTextArea(4,'<a href="event:color"><p align="center">     </p></a>',name,85,365,20,20,mice[name].color,mice[name].color,1)
end

function eventPlayerLeft(name)
	mice[name] = nil
end

function eventMouse(name,mx,my)
	if mice[name].step==0 and mice[name].status=="Active" then
		mice[name].X=mx
		mice[name].Y=my
		mice[name].step=1
	elseif mice[name].step==1 and mice[name].status=="Active" then
		mice[name].V=mx
		mice[name].U=my
		mice[name].step=2
		draw(name)
	end
end

function eventKeyboard(name,key,down)
	if key==80 then
		if mice[name].status=="Active" then
			mice[name].status="Paused"
			ui.updateTextArea(0,'<p align="center"><font size="13">'..mice[name].status..'</font></p>',name)
		else
			mice[name].status="Active"
			ui.updateTextArea(0,'<p align="center"><font size="13">'..mice[name].status..'</font></p>',name)
		end
	end
end

function eventTextAreaCallback(area,name,event)
	if event=="size" then
		ui.addPopup(1,2,'Size',name,50,50,100,true)
	elseif event=="alpha" then
		ui.addPopup(2,2,'Alpha',name,50,50,100,true)
	elseif event=="foreground" then
		ui.addPopup(3,1,'Foreground',name,50,50,200,true)
	elseif event=="color" then
		ui.showColorPicker(0,name)
	end
end

function eventPopupAnswer(popup,name,answer)
	if popup==1 and answer~="" then
		if tonumber(answer) ~= nil then
			if tonumber(answer)>=250 then
				mice[name].size=250
				ui.updateTextArea(1,'<p align="center"><font size="13"><a href="event:size">'..mice[name].size..'</a>px</font></p>',name)
			elseif tonumber(answer)<=0 then
				mice[name].size=0
				ui.updateTextArea(1,'<p align="center"><font size="13"><a href="event:size">'..mice[name].size..'</a>px</font></p>',name)
			else
				mice[name].size=answer
				ui.updateTextArea(1,'<p align="center"><font size="13"><a href="event:size">'..mice[name].size..'</a>px</font></p>',name)
			end
		end
	elseif popup==2 and answer~="" then
		if tonumber(answer) ~= nil then
			if tonumber(answer)>=100 then
				mice[name].alpha=1
				ui.updateTextArea(2,'<p align="center"><font size="13"><a href="event:alpha">'..(mice[name].alpha*100)..'</a>%</font></p>',name)
			elseif tonumber(answer)<=0 then
				mice[name].alpha=0
				ui.updateTextArea(2,'<p align="center"><font size="13"><a href="event:alpha">'..(mice[name].alpha*100)..'</a>%</font></p>',name)
			else
				mice[name].alpha=answer/100
				ui.updateTextArea(2,'<p align="center"><font size="13"><a href="event:alpha">'..(mice[name].alpha*100)..'</a>%</font></p>',name)
			end
		end
	elseif popup==3 then
		if answer=="yes" then
			mice[name].foreground=true
			ui.updateTextArea(3,'<p align="center"><font size="13"><a href="event:foreground">Foreground</a></font></p>',name)
		else
			mice[name].foreground=false
			ui.updateTextArea(3,'<p align="center"><font size="13"><a href="event:foreground">Background</a></font></p>',name)
		end
	end
end

function eventColorPicked(id,name,picked)
	if id==0 and picked~=-1 then
		mice[name].color='0x'..string.sub(string.format("%08x",picked*256),0,6)
		ui.addTextArea(4,'<a href="event:color"><p align="center">     </p></a>',name,85,365,20,20,mice[name].color,mice[name].color,1)
	end
end

function draw(name)
	id=id+1
	table={type=0,point1=mice[name].X..","..mice[name].Y,point2=mice[name].V..","..mice[name].U,frequency=10,damping=0.2,line=mice[name].size,color=mice[name].color,alpha=mice[name].alpha,foreground=mice[name].foreground}
	tfm.exec.addJoint(mice[name].id,1,1,table)
	mice[name].step=0
end

table()

for name,player in pairs(tfm.get.room.playerList) do
	eventNewPlayer(name)
end