function onUpdate(elapsed)
	if curBeat < 60 then
		 setPropertyFromClass("openfl.Lib","application.window.title", "I see you.")
	end

 

	if curBeat == 60 then
		 setPropertyFromClass("openfl.Lib","application.window.title", "Now it's my turn.")
	end
	if curBeat == 64 then
		 setPropertyFromClass("openfl.Lib","application.window.title", " ")
	end

	if curBeat == 80 then
		 setPropertyFromClass("openfl.Lib","application.window.title", "Let's have some fun, shall we?")
	end

	if curBeat == 96 then
		 setPropertyFromClass("openfl.Lib","application.window.title", " ")
	end

	--if curStep == 969 then
		 --setPropertyFromClass("openfl.Lib","application.window.title", "Friday Night Funkin': Psych Engine")
	--end
	
	if inGameOver then
		setPropertyFromClass("openfl.Lib","application.window.title", "Oh, you died.")
	end
		
		
	

	


end