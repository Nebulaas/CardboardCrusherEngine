-- this is not made by me this is made by Andrew.#6096
local allowCountdown = false
local warningimage = 'info/stick-up' -- put your image in mods/images, needs to be 1280x720
local confirmed = 0

function onCreate()

 runTimer('imageAppear',0.9)
 function onTimerCompleted(t)
	 if t == 'imageAppear' then
		 playSound('PageFlip-Thanks-SoundJay-dot-com',3);
		 makeLuaSprite('warningimage', warningimage, 0, 0)
		 scaleObject('warningimage',0.3,0.3)
		 screenCenter('warningimage', 'xy')
		 setObjectCamera('warningimage', 'other')

		 addLuaSprite('warningimage', true)
		 setProperty('warningimage.alpha', 0)

		 doTweenAlpha('YESmorewarningimage', 'warningimage', 1, 1, 'sineOut');
	 end
 end
end

function onStartCountdown()
 if not allowCountdown then
  return Function_Stop
 end
 if allowCountdown then
  return Function_Continue
 end
end

function onUpdate()
 if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and confirmed == 0 then
  allowCountdown = true
  startCountdown();
  doTweenAlpha('nomorewarningimage', 'warningimage', 0, 1, 'sineOut');
  playSound('confirmMenu');
  confirmed = 1
 end
end
