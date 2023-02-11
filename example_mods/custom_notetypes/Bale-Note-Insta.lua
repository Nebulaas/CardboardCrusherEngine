function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bale-Note-Insta' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'evil-bale-notes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			--if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			--end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false


tea = 0

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Bale-Note-Insta' then
		tea = tea + 1
		--runTimer('kill',0.2)
		playSound('BASS',1)
		--function onTimerCompleted(t)
			--if t == 'kill' then

				makeLuaSprite('bale'..tea, 'nightmare/evil-bale', -1200, 250);
				addLuaSprite('bale'..tea, true);
				doTweenX('baleTweenX'..tea, 'bale'..tea, 770, 0.5, 'linear')
				doTweenAngle('baleTweenAngle'..tea, 'bale'..tea, 720, 0.9, 'linear')

				function onTweenCompleted(t)
					teaString = string.sub(t,1,string.len('baleTweenX'))
				--	if t == 'baleTweenX'..tea then
						if teaString == 'baleTweenX' then
						setProperty('health',-666)
						--setProperty('bale'..tea.visible, false)
						removeLuaSprite('bale'..tea)
				--	end
			--	end

			end
		end
	end
end
