function onCreate()

	dodgeSprite = 'coke'
    
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	precacheImage(dodgeSprite);
   	
	dangerNumber = 0
	

	bfX = getProperty('boyfriend.x')
end

function onEvent(name, value1, value2)
    
    if name == "DodgeEvent2" then

    	dangerNumber = dangerNumber + 1

    	DodgeTime = 0.3;
    	
		canDodge = true;

		dodge()

		makeSpaceNOTE()

		runTimer('Died2', DodgeTime)

	end
end

function onUpdate()

	if canDodge == true and keyJustPressed('space') then

		Dodged = true

		setProperty('boyfriend.specialAnim', true);
		
   		dodged()

   		canDodge = false

   end
    

   if botPlay then
	 
	 	if canDodge == true then
		
			Dodged = true

			setProperty('boyfriend.specialAnim', true);

			dodged()
			
			canDodge = false

		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)

   if tag == 'Died2' and Dodged == false then
   	
   		debugPrint('DIE ALREADY')

   		setProperty('health', 0);

   	end

 	if tag == 'Died2' and Dodged == true then

   		Dodged = false

   	end

   	if tag == 'bfDodgeLEFTDelay' then
		doTweenX('bfDodgeLEFT2','boyfriend', bfX, 0.2,'sineIN')
	end

	if tag == 'bfDodgeRIGHTDelay' then
		doTweenX('bfDodgeRIGHT2','boyfriend', bfX, 0.2,'sineIN')
	end

end





function dodge()
	makeLuaSprite('danger'..dangerNumber, dodgeSprite, bfX, -800);
	addLuaSprite('danger'..dangerNumber, true);

	scaleObject('danger',1.6,1.6)

	doTweenY('dangerTweenY'..dangerNumber, 'danger'..dangerNumber, 1600, 0.6, 'linear')
	doTweenAngle('dangerTweenAngle'..dangerNumber, 'danger'..dangerNumber, 720, 0.6, 'linear')

	function onTweenCompleted(dangerTweenY)

		killString = string.sub(t,1,string.len('dangerTweenY'))

		if killString == 'dangerTweenY' then
			removeLuaSprite('danger'..dangerNumber)
		end
	end
end






function dodged()
	direction = getRandomInt(1,2)
	removeLuaSprite('spaceNote'..dangerNumber)

	if direction == 1 then
		characterPlayAnim('boyfriend', 'dodgeLEFT', true);
		doTweenX('bfDodgeLEFT','boyfriend',bfX+400,0.2,'quint')

		runTimer('bfDodgeLEFTDelay',0.3)

	end

	if direction == 2 then
		characterPlayAnim('boyfriend', 'dodgeRIGHT', true);
		doTweenX('bfDodgeRIGHT','boyfriend',bfX-400,0.2,'quint')

		runTimer('bfDodgeRIGHTDelay',0.3)
		
	end
end