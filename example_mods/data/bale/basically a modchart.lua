function onCreate()
	makeLuaSprite('black','black-thanks-wikipedia',-500,0)
	addLuaSprite('black', false)
	scaleObject('black', 4.0, 4.0)
	setObjectOrder('black', getObjectOrder('gfGroup'))
	doTweenAlpha('blackTweenAlpha', 'black', 0, 0.00001, 'sineInOut')
end

function onUpdate(elapsed)
	if curBeat == 303 then
		
		doTweenAlpha('blackTweenAlpha', 'black', 0.79, 0.6, 'sineInOut')
	
	end
		
	if curBeat == 304 then
		doTweenZoom('camGameTweenZooma', 'camGame', 1.2, 9.4, linear)
		if difficulty == 1 then
			triggerEvent('Change Scroll Speed', 0.8, 1)
		end
		if difficulty == 2 then
			triggerEvent('Change Scroll Speed', 0.85, 1)
		end
		
		
		if difficulty == 0 then
			triggerEvent('Change Scroll Speed', 0.75, 1)
		end

		function onTweenCompleted(tag)
			if tag == 'camGameTweenZooma' then
				doTweenZoom('camGameTweenZoomb', 'camGame', 1.25, 14.5, linear)
				
			end
		end
	end
	
	if curBeat == 384 then
		
		doTweenZoom('camGameTweenZoomc', 'camGame', 0.8, 0.6, linear)

		
	end
	
	if curBeat == 415 then
		
		doTweenAlpha('blackTweenAlpha', 'black', 0, 0.6, 'sineInOut')
		triggerEvent('Change Scroll Speed', 1, 1)
	end
end