function onCreate()
	-- precacheImage('7PL/shelves')
	-- precacheImage('7PL/shelves2')
	-- precacheImage('7PL/shelves3')
	-- precacheImage('7PL/shelves4')
	-- precacheImage('7PL/shelves5')
	-- precacheImage('7PL/shelvesFull')



end


function onEvent(n,v1,v2)


	-- if n == "ShelfMoveOver" then
	--
	-- 		removeLuaSprite('bean')
	-- 		removeLuaSprite('beanPlace')
	-- 		removeLuaSprite('beanCompleted')
	-- 		s = ''
	-- 		SRAND = getRandomInt(1,5)
	-- 		if SRAND == 1 then
	-- 			s = '7PL/shelves'
	-- 			makeLuaSprite('beanPlace','beanPlace',510,510)
	-- 		elseif SRAND == 2 then
	-- 			s = '7PL/shelves2'
	-- 			makeLuaSprite('beanPlace','beanPlace',690,510)
	-- 		elseif SRAND == 3 then
	-- 			s = '7PL/shelves3'
	-- 			makeLuaSprite('beanPlace','beanPlace',0,510)
	-- 		elseif SRAND == 4 then
	-- 			s = '7PL/shelves4'
	-- 			makeLuaSprite('beanPlace','beanPlace',690,-50)
	-- 		elseif SRAND == 5 then
	-- 			s = '7PL/shelves5'
	-- 			makeLuaSprite('beanPlace','beanPlace',510,510)
	-- 		end
	-- 		--debugPrint(s)
	-- 	makeLuaSprite('shelf','7PL/shelvesFull',-840,-420)
	-- 	scaleObject('shelf', 0.9, 0.9)
	-- 	addLuaSprite('shelf',false)
	-- 	setObjectOrder('shelf',0)
	--
	-- 	doTweenX('shelfvwoom','shelf', -3680, 2, 'backInOut')
	--
	-- 	makeLuaSprite('shelf2',s,2000,-420)
	--
	-- 	scaleObject('shelf2', 0.9, 0.9)
	--
	-- 	addLuaSprite('shelf2',false)
	--
	-- 	setObjectOrder('shelf2',0)
	--
	-- 	doTweenX('shelfvwoom2','shelf2', -840, 2, 'backInOut')
	--
	-- 	function onTweenCompleted(t)
	--
	-- 		if t == 'shelfvwoom' then
	--
	-- 			removeLuaSprite('shelf')
	-- 			colour = getRandomInt(2,3)
	-- 			if colour == 2 then
	-- 			bean = 'beanBlue'
	-- 			elseif colour == 3 then
	-- 				bean = 'beanRed'
	-- 			end
	--
	-- 			makeLuaSprite('bean',bean,450,700)
	-- 			addLuaSprite('bean',true)
	-- 			setObjectOrder('bean',getObjectOrder('crosshair')-1)
	--
	--
	-- 			addLuaSprite('beanPlace',true)
	-- 			setObjcetOrder('beanPlace',getObjectOrder('bean')-1)
	-- 			makeLuaSprite('beanCompleted',bean,510,510)
	--
	-- 		end
	-- 	end
	-- end
end
