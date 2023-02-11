function onCreate()

	

	precacheImage('smash')

	makeLuaSprite('wall','heavy-lifting/freezers',-4680,-1640) -- add 40 to 1640 and 250 to get OG values

	addLuaSprite('wall',false)
	scaleObject('wall', 0.9, 0.9)
		
	makeLuaSprite('ta','heavy-lifting/trolleyAgain',1470,250)
	addLuaSprite('ta',false)
	scaleObject('ta', 1.8, 1.8)

	

	
							--OG ZOOM FOR STAGE WAS 0.55

	makeAnimatedLuaSprite('secondDad','characters/cardboard-crusher',-10, -1520)
	addAnimationByPrefix('secondDad','idle','idle',24,false);
	addAnimationByPrefix('secondDad','singLEFT','left',24,false);
	addAnimationByPrefix('secondDad','singRIGHT','right',24,false);
	addAnimationByPrefix('secondDad','singUP','up',24,false);
	addAnimationByPrefix('secondDad','singDOWN','down',24,false);
	objectPlayAnimation('secondDad','idle',true);
	addLuaSprite('secondDad',false)
	scaleObject('secondDad',1.9,1.9)
	setObjectOrder('secondDad',getObjectOrder('boyfriendGroup'))

	makeAnimatedLuaSprite('smoke','heavy-lifting/smoke',-220,-260)
	addAnimationByPrefix('smoke','explode','explode',24,false)
	addLuaSprite('smoke',true)
	setProperty('smoke.visible',false)
	scaleObject('smoke',2.3,2.3)
	
	makeAnimatedLuaSprite('ssu','heavy-lifting/smash',-1570,-2180)
	addAnimationByPrefix('ssu','smash','smash',24,false)
	addLuaSprite('ssu',true)
	setProperty('ssu.visible',false)
	setProperty('ssu.angle',270)
	scaleObject('ssu',2.9,2.9)

	
	
end

function onUpdate(elapsed)

	if curBeat == 525 then
		doTweenY('secondDadVWOOM','secondDad',128,0.17,'sineInOut')
		function onTweenCompleted(t)
			if t == 'secondDadVWOOM' then
				triggerEvent('Screen Shake','0.09, 0.03','0.09, 0.03')
				playSound('explode',0.9)
		end	
	end
end
	if curBeat == 526 then
		setProperty('smoke.visible',true)
		objectPlayAnimation('smoke','explode',false)
	end

	if curBeat == 527 then
		setProperty('smoke.visible',false)
	end

	if curBeat == 590 then
		doTweenX('secondDadVWOOOOM','secondDad',3020,0.7,'linear')
		doTweenAngle('secondDadBYEE','secondDad',1440,2,'linear')
		function onTweenCompleted(t)
			if t == 'secondDadVWOOOOM' then
				triggerEvent('Screen Shake','0.09, 0.03','0.09, 0.03')
				setProperty('ssu.visible',true)
				objectPlayAnimation('ssu','smash',false)
				playSound('explode',0.8)
		end	
	end
	end

	if curBeat == 597 then
		setProperty('ssu.visible',false)
	end

	
end

function onUpdatePost()
	
end