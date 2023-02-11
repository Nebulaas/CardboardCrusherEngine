function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	precacheImage('bale');
   	precacheImage('smoke');
	killYou = 0

	
end


function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --killYou = killYou + 1
    --Get Dodge time
    DodgeTime = 0.4;
    --debugPrint(killYou)
	characterPlayAnim('dad', 'bale', true);
	runTimer('char', 1.2)
	setProperty('dad.specialAnim', true);



  makeLuaSprite('bale'..killYou, 'bale', -400, 200);
	addLuaSprite('bale'..killYou, true);
	doTweenX('baleTweenX'..killYou, 'bale'..killYou, 1900, 0.9, 'linear')
	doTweenAngle('baleTweenAngle'..killYou, 'bale'..killYou, 720, 0.9, 'linear')
		function onTweenCompleted(t)

				killString = string.sub(t,1,string.len('baleTweenX'))
				if killString == 'baleTweenX' then

				removeLuaSprite('bale'..killYou)
			end

	end
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);

	end
end


function onUpdate()
   if canDodge == true and keyJustPressed('space') then

   Dodged = true;

   --characterPlayAnim('dad', 'bale', true);
   characterPlayAnim('bf', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);

   canDodge = false


   end
    if botPlay then
	 if canDodge == true then
		Dodged = true

		characterPlayAnim('boyfriend', 'dodge', true);

		setProperty('boyfriend.specialAnim', true);

		canDodge = false
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then

   setProperty('health', 0);

 elseif tag == 'Died' and Dodged == true then
   Dodged = false

   end
end
