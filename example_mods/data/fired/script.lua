function onUpdatePost()
	if not inGameOver then

		if timesPressed == 0 then
			
			if(getPropertyFromClass('flixel.FlxG','keys.justPressed.SEVEN')) then

				--os.execute("msg * Oh No! The game has crashed! Y͓̣̯͂͐͞o͙̞̊͂ṵ͆͐͟'̝̌r̙̗͚̒̄̚e͍̅ ̩̏g͐ͅo̘͊ing t̮͑o̩̾͟͠ ̞͓̪̀̉̚d̫̬̖̒̏͡ie̗͒.̳͈̔̉")

				
				--debugPrint('naughty')

				setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'the-voices'); --put in mods/music/
				setPropertyFromClass('GameOverSubstate', 'endSoundName', 'the-voices-end'); --put in mods/music/

				playSound('jumpscare',10)
				makeLuaSprite('die','nightmare/killeth',650,400)
				addLuaSprite('die',true)
				setObjectCamera('die','other')
				scaleObject('die',0.01,0.01)
				doTweenX('naughty','die.scale',8,1,'linear')
				doTweenY('naughty1','die.scale',8,1,'linear')
				--addInvertEffect('camHud')
				timesPressed = timesPressed + 1
				runTimer('scary',0.6)

				local file = io.open("deded.txt","w")
				file:write(t+1)
				file:close()


				function onTimerCompleted(tag)
					if tag == 'scary' then
						--exitSong(true)
						setProperty('health',-666)
					end
				end

			end
		end
	end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		doTweenX('boom1','cool.scale',0.8,0.11,'linear')
		doTweenY('boom2','cool.scale',0.8,0.11,'linear')
		function onTweenCompleted()
			doTweenX('boom3','cool.scale',1,0.15,'linear')
			doTweenY('boom4','cool.scale',1,0.15,'linear')
		end
	end
end

function onCreate()

	setProperty('debugKeysChart', null);

	timesPressed = 0

	local file = io.open("deded.txt","r")
	t = (file:read())
	--debugPrint(t)
	file:close()
end

function onGameOver()
	clearEffects('camHud')
	addChromaticAbberationEffect('camGame',0.02)
	triggerEvent('cheater','','')

	local file = io.open("deded.txt","r")
	deaths = (file:read())
	file:close()

	return Function_Continue;
end









function onGameOverConfirm()
	if timesPressed == 1 then

	local file = io.open("deded.txt","r")
	deaths = (file:read())

if deaths == '1' then
	makeLuaText('naughty',"Don't do that again.",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '2' then
	makeLuaText('naughty',"What did I just say?",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '3' then
	makeLuaText('naughty',"Seriously?",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '4' then
	makeLuaText('naughty',"This isn't helping anybody.",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '5' then
	makeLuaText('naughty',"Is this funny for you?",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '6' then
	makeLuaText('naughty',"If you keep this up, nothing good will happen.",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '7' then
	makeLuaText('naughty',"Okay actually stop.",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '8' then
	makeLuaText('naughty',"You really sure about this?",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '9' then
	makeLuaText('naughty',"Fuck you, then.",screenWidth,-10,screenHeight/2);
	setTextSize('naughty',20);
	setTextAlignment('naughty','center');
	setObjectCamera('naughty', 'hud')
	setTextColor('naughty','ee0000')
	addLuaText('naughty');
	doTweenAlpha('fadeOut','naughty',0,3.9,'sineInOut')
end

if deaths == '10' then

	local file = io.open("deded.txt","w")
				file:write('0')
				file:close()

	local ffi = require("ffi")  -- Load FFI module (instance)

	local user32 = ffi.load("user32")   -- Load User32 DLL handle

	ffi.cdef([[
	enum{
    	MB_OK = 0x00000000L,
    	MB_ICONINFORMATION = 0x00000040L
	};

	typedef void* HANDLE;
	typedef HANDLE HWND;
	typedef const char* LPCSTR;
	typedef unsigned UINT;

	int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
	]]) -- Define C -> Lua interpretation

	user32.MessageBoxA(nil, "Goodbye.", "Stop.", ffi.C.MB_OK + ffi.C.MB_ICONINFORMATION)   -- Call C function 'MessageBoxA' from User32
	
	os.exit();
end
file:close()
end
end








function onBeatHit()
	if curBeat == 384 then
		cameraFlash('game','FAC323',1, false)
		makeLuaSprite('cool','nightmareChrom/thefunniereffect',-200,-200)
		addLuaSprite('cool',true)
		setObjectCamera('cool','other')

	end
end

function onDestroy()
	if not inGameOver then
	local file = io.open("deded.txt","w")
	file:write(0)
	file:close()
end
end

-- function onEndSong()
-- 	local file = io.open("deded.txt","w")
-- 	file:write(0)
-- 	file:close()
-- 	return Function_Continue;
-- end