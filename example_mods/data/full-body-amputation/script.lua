function onCreate()
	dadY = getProperty('dad.y')
end

function onBeatHit()
	if curBeat == 320 then
		doTweenAlpha('boyfriendAlpha0','boyfriend',0,1,'linear')
		
		doTweenAlpha('HUDAlpha0','camHUD',0,1,'linear')
	end

	if curBeat == 321 then

		makeLuaSprite('bee','bee',60,-480)
		addLuaSprite('bee',false)
		scaleObject('bee',1.25,1.25)
		setProperty('bee.alpha',0)

		doTweenAlpha('beeAlpha','bee',1,11,'linear')

		doTweenAlpha('boyfriendAlpha0','boyfriend',0,1,'linear')
		
		doTweenAlpha('HUDAlpha0','camHUD',0,1,'linear')
	end

	if curBeat < 351 and curBeat > 319 then
		characterPlayAnim('dad', 'troll', true)
	end

	if curBeat == 352 then

		removeLuaSprite('bee')

		doTweenAlpha('boyfriendAlpha1','boyfriend',1,1,'linear')

		doTweenAlpha('HUDAlpha1','camHUD',1,1,'linear')
	end
end

function onUpdate()
	for i = 0,3 do
		noteTweenX('byenote'..i, i, 10000, 0.001, 'linear')
	end
end