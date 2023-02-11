function onCreate()

	makeLuaSprite('wall','game-over/pxBG',-580,-480)
	addLuaSprite('wall',false)
	scaleObject('wall', 1.33, 1.33)

end

--function onUpdatePost()
--	if curBeat == 384 then
--		setProperty('wall.alpha',0)
--		triggerEvent('Change Character','dad','cc-monster')
--		setProperty('defaultCamZoom',0.4)
--	end
--	if curBeat == 512 then
--		setProperty('wall.alpha',1)
--		triggerEvent('Change Character','dad','pxcc-evil')
--		setProperty('defaultCamZoom',0.78)
--	end
--end