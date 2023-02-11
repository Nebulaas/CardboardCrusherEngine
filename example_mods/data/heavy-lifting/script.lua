function onCreate()
	makeAnimatedLuaSprite('stoopid','heavy-lifting/party-pooper',-1347,110)
	addAnimationByPrefix('stoopid','theLine','theLine',24,false)
	addLuaSprite('stoopid',false)
	scaleObject('stoopid', 1.3, 1.3)
	setProperty('stoopid.visible',false)
end

function onStepHit()
	if curStep == 1402 then
		playSound('the-line',1)
		playSound('concrete-scrape',0.7)
		setProperty('stoopid.visible',true)
		doTweenX('goGoGO','stoopid',-547,1,'linear')
		objectPlayAnimation('stoopid','theLine',false)
		--setProperty('stoopid.alpha',0)
	end
	if curStep == 1482 then
		doTweenX('goGoGO2','stoopid',-1347,1,'sineInOut')
		playSound('concrete-scrape',0.7)
		function onTweenCompleted(t)
			if t == 'goGoGO2' then
				setProperty('stoopid.visible',false)
			end
		end
		
		--setProperty('stoopid.alpha',0)
	end
end