function onCreate()
	
	makeLuaSprite('wall','storeroom/backwall',-580,-480)
	addLuaSprite('wall',false)
	scaleObject('wall', 1.33, 1.33)
	
	makeLuaSprite('boxx','storeroom/boxes',-580,-480)
	addLuaSprite('boxx',false)
	scaleObject('boxx', 1.33, 1.33)
	--setScrollFactor('boxx', 1.01)

	makeLuaSprite('t2','storeroom/trolley2',-580,-480)
	addLuaSprite('t2',false)
	scaleObject('t2', 1.33, 1.33)
	--setScrollFactor('t2', 1.05)

	makeLuaSprite('fork','storeroom/forklift',-680,-580)
	addLuaSprite('fork',false)
	scaleObject('fork', 1.33, 1.33)
	setScrollFactor('fork', 1.3)
	
	makeLuaSprite('t1','storeroom/trolley1',-580,-480)
	addLuaSprite('t1',true)
	scaleObject('t1', 1.33, 1.33)
	setScrollFactor('t1', 1.2)

	
	
	close(true); 
end