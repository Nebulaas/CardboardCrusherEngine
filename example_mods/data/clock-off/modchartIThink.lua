function onCreate()
	setProperty('iconP2.visible',false)
end

function onUpdate(elapsed)
	if curBeat == 64 then
		doTweenAlpha("gone","camHUD",0,4,'linear')
	end
	if curBeat == 80 then
		setProperty('iconP2.visible',true)
		doTweenAlpha("gone","camHUD",1,1.3,'linear')
	end	
end

--function onEndSong()
--	doTweenAlpha("gone","healthbar",0,1,'linear')
--end