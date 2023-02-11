function onCreate()
	
	makeLuaSprite('wall','storeroom-spooky/backWall',-580,-480)
	addLuaSprite('wall',false)
	scaleObject('wall', 1.33, 1.33)
	
	makeLuaSprite('plank','storeroom-spooky/plank',-580,-480)
	addLuaSprite('plank',false)
	scaleObject('plank', 1.33, 1.33)
	setScrollFactor('plank', 1.01)
	
	makeLuaSprite('beam','storeroom-spooky/beam',-580,-480)
	addLuaSprite('beam',true)
	scaleObject('beam', 1.33, 1.33)

	makeLuaSprite('fwall','storeroom-spooky/frontWall',-940,-480)
	addLuaSprite('fwall',false)
	scaleObject('fwall', 1.33, 1.33)
	setObjectOrder('fwall',7)
	
	makeLuaSprite('overlay','storeroom-spooky/overlay',-940,-480)
	addLuaSprite('overlay',false)
	scaleObject('overlay', 1.33, 1.33)
	setObjectOrder('overlay',10)


	close(true); 
end