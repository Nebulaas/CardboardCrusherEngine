function onCreate()

	makeLuaSprite('aisle1cont','bomb/aisle1cont',-924,-180)
	addLuaSprite('aisle1cont',false)
	scaleObject('aisle1cont', 1.53, 1.53)
	
	makeLuaSprite('wall','bomb/corridor',100,-180)
	addLuaSprite('wall',false)
	scaleObject('wall', 1.53, 1.53)


	
	makeLuaSprite('aisle2','bomb/aisle2',100,-180)
	addLuaSprite('aisle2',false)
	scaleObject('aisle2', 1.53, 1.53)
	
	makeAnimatedLuaSprite('bomb','boom',400,80)
	addAnimationByPrefix('bomb','explode','explode',24,false)
	addLuaSprite('bomb',false)
	setProperty('bomb.visible',false)
	scaleObject('bomb',2.9,2.9)



	makeLuaSprite('aisle1','bomb/aisle1',100,-180)
	addLuaSprite('aisle1',false)
	scaleObject('aisle1', 1.53, 1.53)


	makeLuaSprite('flash','bomb/flashy',1300,230)
	addLuaSprite('flash',false)
	setProperty('flash.visible',false)
	scaleObject('flash', 1.53, 1.53)


	
	
end
	
function onBeatHit()
	if curBeat == 80 then
		setProperty('bomb.visible',true)
		objectPlayAnimation('bomb','explode',false)
		playSound('explode',0.9)
		triggerEvent('Screen Shake','0.09, 0.03','0.09, 0.03')
	end

	if curBeat == 82 then
		setProperty('flash.visible',true)
		setProperty('bomb.visible',false)
	end

	doTweenX('ball', 'flash.scale', 2.63, 0.17, 'linear')
	doTweenY('ball2', 'flash.scale', 2.63, 0.17, 'linear')
		function onTweenCompleted()
			doTweenX('ball3', 'flash.scale', 1.53, 0.17, 'linear')
  			doTweenY('ball4', 'flash.scale', 1.53, 0.17, 'linear')
		end
end