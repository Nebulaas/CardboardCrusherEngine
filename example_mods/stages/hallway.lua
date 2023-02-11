function onCreate()
	
	makeAnimatedLuaSprite('zardyBG','hallway',-170,-200)
	addAnimationByPrefix('zardyBG','hallway','hallway',60,true)
	addLuaSprite('zardyBG',false)
	objectPlayAnimation('zardyBG','hallway',false)
	
	scaleObject('zardyBG',1.6,1.6)
end

function onBeatHit()
	if curBeat == 320 then
		doTweenAlpha('hallwayAlpha0','zardyBG',0,0.6,'linear')
	end

	if curBeat == 352 then
		doTweenAlpha('hallwayAlpha0','zardyBG',1,0.6,'linear')
	end
end