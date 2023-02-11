function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
	--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Opponent Sing' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
		end
	end
	--debugPrint('Script started!')
	

end

local DadSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local DadSingDir = 1
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Opponent Sing' then
		DadSingDir = direction
		objectPlayAnimation('secondDad', DadSingAnims[DadSingDir+1], true)
		runTimer('secondDadHold',0.6)
		function onTimerCompleted()
		objectPlayAnimation('secondDad', 'idle', true)
		setProperty('secondDad.offset.x',-230);
		setProperty('secondDad.offset.y',-184);
		end
	if DadSingDir == 3 then
		setProperty('secondDad.offset.x',-228);
		setProperty('secondDad.offset.y',-184);
	end
	if DadSingDir == 2 then
		setProperty('secondDad.offset.y',-110);
		setProperty('secondDad.offset.x',-230);
	end
	if DadSingDir == 1 then
		setProperty('secondDad.offset.y',-199);
		setProperty('secondDad.offset.x',-223);
	end
	if DadSingDir == 0 then
		setProperty('secondDad.offset.x',-145);
		setProperty('secondDad.offset.y',-184);
	end
	

	
		if mustHitSection == false then
			triggerEvent('Camera Follow Pos',getProperty('dad.x')+480, getProperty('dad.y')+90)
		else
			triggerEvent('Camera Follow Pos','','')
		end
	end
	
	

end


	