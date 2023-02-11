function onCreate()
	
	makeLuaSprite('wall','erect/walls-dark',-580,-480)
	addLuaSprite('wall',false)
	scaleObject('wall', 1.33, 1.33)

	makeLuaSprite('decor','erect/bg-decor-dark',-580,-480)
	addLuaSprite('decor',false)
	scaleObject('decor', 1.33, 1.33)

	makeLuaSprite('thingo','erect/thingo-dark',-580,-480)
	addLuaSprite('thingo',false)
	scaleObject('thingo', 1.33, 1.33)

	makeLuaSprite('sign','erect/sign-dark',-580,-480)
	addLuaSprite('sign',false)
	scaleObject('sign', 1.33, 1.33)
	
	makeLuaSprite('boxx','erect/boxes-dark',-580,-480)
	addLuaSprite('boxx',false)
	scaleObject('boxx', 1.33, 1.33)
	--setScrollFactor('boxx', 1.01)

	makeLuaSprite('t2','erect/box-trolley-dark',-580,-480)
	addLuaSprite('t2',false)
	scaleObject('t2', 1.33, 1.33)
	--setScrollFactor('t2', 1.05)
	
	makeLuaSprite('t1','erect/trolley-dark',-580,-480)
	addLuaSprite('t1',true)
	scaleObject('t1', 1.33, 1.33)
	setScrollFactor('t1', 1.03)

	makeLuaSprite('l','erect/light',-580,-540)
	addLuaSprite('l',true)
	scaleObject('l', 1.33, 1.33)
	setScrollFactor('l', 1.12)

	makeLuaSprite('glowy','erect/glow2',-300,-570)
	addLuaSprite('glowy',true)
	setScrollFactor('glowy', 1.12)

	makeLuaSprite('fork','erect/forklift-dark',-650,-580)
	addLuaSprite('fork',true)
	scaleObject('fork', 1.33, 1.33)
	setScrollFactor('fork', 1.3)
	
	
end

function onBeatHit()
	if curBeat % 2 == 0 then
		--scaleObject('glowy', 3.3, 3.3)
		doTweenX('balls', 'glowy.scale', 3.3, 0.17, 'linear')
		doTweenY('balls2', 'glowy.scale', 3.3, 0.17, 'linear')
		function onTweenCompleted()
			doTweenX('balls3', 'glowy.scale', 1, 0.22, 'linear')
  			doTweenY('balls4', 'glowy.scale', 1, 0.22, 'linear')
		end
	end
end

function onUpdate(elapsed)
	setProperty('l.angle',2*math.sin((getSongPosition()/crochet))+10)
	if curBeat == 304 then
		doTweenAlpha('byeByeLight', 'glowy', 0.2, 0.1, 'sineInOut')
	end
	if curBeat == 416 then
		doTweenAlpha('helloLight', 'glowy', 1, 0.1, 'sineInOut')
	end
end