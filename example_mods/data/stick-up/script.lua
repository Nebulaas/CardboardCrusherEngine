function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health - multiplier );
	end
end

function onCreate()
	hp = ''
	multiplier = 0.05
	bullets2 = 1
	makeLuaSprite('cchp','bomb/cc-hp/max',-450,-50)
	addLuaSprite('cchp',true)
	
end
	
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Bullet_Note' then	
		bullets2 = bullets2 + 1
	end
end

function onUpdatePost()
	if bullets2 == 0 then
		multiplier = 0.05
	elseif bullets2 == 1 then
		multiplier = 0.0459
	elseif bullets2 == 2 then
		multiplier = 0.0418
	elseif bullets2 == 3 then
		multiplier = 0.0377
	elseif bullets2 == 4 then
		multiplier = 0.0336
	elseif bullets2 == 5 then
		multiplier = 0.0295
	elseif bullets2 == 6 then
		multiplier = 0.0254
	elseif bullets2 == 7 then
		multiplier = 0.0213
	elseif bullets2 == 8 then
		multiplier = 0.0172
	elseif bullets2 == 9 then
		multiplier = 0.0131
	elseif bullets2 == 10 then
		multiplier = 0.009
	elseif bullets2 == 11 then
		multiplier = 0.0049
	elseif bullets2 == 12 then
		multiplier = 0
	end
	if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		doTweenX('cchpLeftTweenX','cchp',-500,0.05,'sineOut')
		doTweenY('cchpLeftTweenY','cchp',-50,0.05,'sineOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		doTweenX('cchpRightTweenX','cchp',-350,0.05,'sineOut')
		doTweenY('cchpRightTweenY','cchp',-50,0.05,'sineOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'singUP' then
		doTweenY('cchpUpTweenY','cchp',-100,0.05,'sineOut')
		doTweenX('cchpUpTweenX','cchp',-450,0.05,'sineOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
		doTweenY('cchpDownTweenY','cchp',0,0.05,'sineOut')
		doTweenX('cchpDownTweenX','cchp',-450,0.05,'sineOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'idle' then
		doTweenY('cchpidleTweenY','cchp',-50,0.1,'sineOut')
		doTweenX('cchpidleTweenX','cchp',-450,0.1,'sineOut')
	end
end





	


