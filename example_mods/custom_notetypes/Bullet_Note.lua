function onCreate()
	bullets = 1
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet_Note' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'bomb/nevada/notes/Bullet_Note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			--setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end
function onUpdatePost()
	if bullets == 0 then
		hp = 'bomb/cc-hp/max'
	elseif bullets == 1 then
		hp = 'bomb/cc-hp/yes'
	elseif bullets == 2 then
		hp = 'bomb/cc-hp/9'
	elseif bullets == 3 then
		hp = 'bomb/cc-hp/8'
	elseif bullets == 4 then
		hp = 'bomb/cc-hp/7'
	elseif bullets == 5 then
		hp = 'bomb/cc-hp/6'
	elseif bullets == 6 then
		hp = 'bomb/cc-hp/5'
	elseif bullets == 7 then
		hp = 'bomb/cc-hp/4'
	elseif bullets == 8 then
		hp = 'bomb/cc-hp/3'
	elseif bullets == 9 then
		hp = 'bomb/cc-hp/2'
	elseif bullets == 10 then
		hp = 'bomb/cc-hp/1'
	elseif bullets == 11 then
		hp = 'bomb/cc-hp/ded'
	end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet_Note' then	
		bullets = bullets + 1
			removeLuaSprite('cchp')
			makeLuaSprite('cchp',hp,-450,-50)
			addLuaSprite('cchp',true)
			--debugPrint(bullets)
			playSound('hankshootThanksNevada',1)
			return bullets
		
		end
end

function noteMiss(id, direction, noteType, isSustainNote)
end