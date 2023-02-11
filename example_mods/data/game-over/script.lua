function onCreate()
	makeLuaText('disclaimer','Original song by\nSaster\nft. Kiwiquest',screenWidth,0,55);
	setTextSize('disclaimer',20);
	setTextAlignment('disclaimer','center');
	setObjectCamera('disclaimer', 'hud')
	addLuaText('disclaimer');
	
	addCharacterToList('bf', 'boyfriend');

	makeAnimatedLuaSprite('theHole','game-over/theHole', -200, -50)
    addAnimationByPrefix('theHole','falling','fall',24,true);
    scaleObject('theHole', 1.85, 1.85)
	addLuaSprite('theHole', false);
	objectPlayAnimation('theHole','falling',false);
	setProperty('theHole.visible', false)
end

-- \nft. die

function onBeatHit()
	if curBeat == 384 then
		setProperty('theHole.visible', true)

		doTweenAngle('spinnin', 'boyfriend', 3240, 41.5, 'linear')
		
		triggerEvent('Change Character','bf','bf')
		doTweenZoom('camGameTweenZoom', 'camGame', 0.64, 2, 'sineInOut')
		function onTweenCompleted(camGameTweenZoom)
			setProperty('defaultCamZoom',0.64)
		end
	end
	if curBeat == 512 then
		triggerEvent('Change Character','bf','pxbf')
		setProperty('theHole.visible', false)
		setProperty('defaultCamZoom',0.78)
	end
end
