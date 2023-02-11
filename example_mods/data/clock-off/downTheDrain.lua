function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.18 then
       setProperty('health', health- 0.026);
	end
end

function onUpdatePost()
	if curBeat < 12 then
		triggerEvent('Camera Follow Pos',getProperty('boyfriend.x'),getProperty('boyfriend.y'))
	else
		triggerEvent('Camera Follow Pos','','')
	end
end