function onCreate()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
end
function onEndSong()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
	return Function_Continue;
end
function onPause()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
	return Function_Continue;
end
function onResume()
	setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
end