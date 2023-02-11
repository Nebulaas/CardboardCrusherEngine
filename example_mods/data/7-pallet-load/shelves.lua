function onCreate()



	precacheImage('7PL/shelves')
	precacheImage('7PL/shelves2')
	precacheImage('7PL/shelves3')
	precacheImage('7PL/shelves4')
	precacheImage('7PL/shelves5')
	precacheImage('7PL/shelvesFull')

	shelves = {
		{
			-- first set of shelves
			resource = '7PL/shelves',
			number_locations = 3,
			locations =
			{
				--{ label = 'location1', x = -10, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' }, GRAB THE LOCATIONS FOR OTHER CANS FROM HERE
			  { label = 'location1', x = 170, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location2', x = 510, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location3', x = 690, y = 240, colour = 'red',  occupied = false, resource = 'beanPlaceRed' }
			},
			number_cans = 3,
			cans =
			{
				{ label = 'can1', x = 210, y = 700, colour = 'red', locked = false, resource = 'beanRed' },
				{ label = 'can2', x = 450, y = 700, colour = 'blue',  locked = false, resource = 'beanBlue'  },
				{ label = 'can3', x = 690, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				--{ label = 'can4', x = 930, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' } GRAB THE LOCATIONS FOR OTHER CANS FROM HERE
			}
		},
		{
			-- second set of shelves
			resource = '7PL/shelves2',
			number_locations = 5,
			locations =
			{
				{ label = 'location1', x = 340, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed' },
				{ label = 'location2', x = 880, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed' },
				{ label = 'location3', x = 690, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location4', x = 880, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location5', x = 880, y = -50, colour = 'blue', occupied = false, resource = 'beanPlace' }

			},
			number_cans = 5,
			cans =
			{
				{ label = 'can1', x = -10, y = 700, colour = 'red', locked = false, resource = 'beanRed' },
				{ label = 'can2', x = 210, y = 700, colour = 'red', locked = false, resource = 'beanRed' },
				{ label = 'can3', x = 450, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				{ label = 'can4', x = 690, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				{ label = 'can5', x = 930, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' }
			}
		},
		{
			-- third
			resource = '7PL/shelves3',
			number_locations = 4,
			locations =
			{
				{ label = 'location1', x = 340, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed'},
				{ label = 'location2', x = 690, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed'},
				{ label = 'location3', x = -10, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace'},
				{ label = 'location4', x = 1040, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace'}
			},
			number_cans = 4,
			cans =
			{
				{ label = 'can1', x = 210, y = 700, colour = 'red',  locked = false, resource = 'beanRed'  },
				{ label = 'can2', x = 450, y = 700, colour = 'red',  locked = false, resource = 'beanRed'  },
				{ label = 'can3', x = 690, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				{ label = 'can4', x = 930, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' }
			}
		},
		{
			-- forth
			resource = '7PL/shelves4',
			number_locations = 7,
			locations =
			{
				{ label = 'location1', x = 690, y = -50, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location2', x = 880, y = -50, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location3', x = 690, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location4', x = 510, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace' },
				{ label = 'location5', x = 510, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed' },
				{ label = 'location6', x = 330, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed' },
				{ label = 'location7', x = 160, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed' }
			},
			number_cans = 7,
			cans =
			{
				{ label = 'can1', x = -470, y = 700, colour = 'red',  locked = false, resource = 'beanRed'  },
				{ label = 'can2', x = -240, y = 700, colour = 'red',  locked = false, resource = 'beanRed'  },
				{ label = 'can3', x = -10, y = 700, colour = 'red',  locked = false, resource = 'beanRed'  },
				{ label = 'can4', x = 220, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				{ label = 'can5', x = 450, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				{ label = 'can6', x = 680, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' },
				{ label = 'can7', x = 910, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' }
			}
		},
		{
			-- fifth
			resource = '7PL/shelves5',
			number_locations = 2,
			locations =
			{
				{ label = 'location1', x = 510, y = 510, colour = 'blue', occupied = false, resource = 'beanPlace'  },
				{ label = 'location2', x = 690, y = 240, colour = 'red', occupied = false, resource = 'beanPlaceRed'  }
			},
			number_cans = 2,
			cans =
			{
				{ label = 'can1', x = 450, y = 700, colour = 'red',  locked = false, resource = 'beanRed'  },
				{ label = 'can2', x = 690, y = 700, colour = 'blue', locked = false, resource = 'beanBlue' }
			}
		}
	}

	--========================================================================================================================================================================
	shelf_number = 1;
	--========================================================================================================================================================================

	shelf = shelves[shelf_number];

	makeLuaSprite('crosshair', '7PL/crosshair', 0, 0)
	addLuaSprite('crosshair', true)
	setObjectOrder('crosshair', 40)

	makeLuaSprite('crosshair2', '7PL/crosshair2', 0, 0)
	addLuaSprite('crosshair2', true)
	setObjectOrder('crosshair2', 41)

	setProperty('crosshair2.visible',false)

	showTutorialShelf();

	createCans();
	createLocations();

	drag = {}
	dragOn = false
	dragX = 0
	dragY = 0

	dragCan = nil


end

function showTutorialShelf()

	resource = shelf.resource

	makeLuaSprite('shelf', resource, -840, -420)
	scaleObject('shelf', 0.9, 0.9)
	addLuaSprite('shelf', false)
	setObjectOrder('shelf', 0)

end

function damagePlayer()
	setProperty('health', getProperty('health')-0.199);
end


function showEmptyShelf()

	resource = shelf.resource

	makeLuaSprite('shelf', resource, 2000, -420)
	scaleObject('shelf', 0.9, 0.9)
	addLuaSprite('shelf', false)
	setObjectOrder('shelf', 0)

end

function hideEmptyShelf()
	removeLuaSprite('shelf')
end

function showFullShelf()
	makeLuaSprite('fullShelf','7PL/shelvesFull',-840,-420)
	scaleObject('fullShelf', 0.9, 0.9)
	addLuaSprite('fullShelf',false)
	setObjectOrder('fullShelf',0)
end

function hideFullShelf()
	removeLuaSprite('fullShelf')
end

function createCans()
	for can_number = 1, shelf.number_cans do
		can = shelf.cans[can_number]

		can.locked = false

		makeLuaSprite(can.label, can.resource, can.x, can.y)
		addLuaSprite(can.label, true)
		setObjectOrder(can.label, getObjectOrder('crosshair')-1)
	end
end

function removeCans()
	for can_number = 1, shelf.number_cans do
		can = shelf.cans[can_number]
		removeLuaSprite(can.label)

	end
end

function createLocations()
	for location_number = 1, shelf.number_locations do

		location = shelf.locations[location_number]

		location.occupied = false

		makeLuaSprite(location.label, location.resource, location.x, location.y)
		addLuaSprite(location.label, true)
		setObjectOrder(location.label, getObjectOrder('crosshair')-shelf.number_locations-1)


	end
end

function removeLocations()
	for location_number = 1, shelf.number_locations do
		location = shelf.locations[location_number]
		removeLuaSprite(location.label)
	end
end

function onEvent(eventName,value1,value2)

	if eventName == "ShelfMoveOver" then

		for number = 1,shelf.number_locations do
			if shelf.locations[number].occupied == false then
				damagePlayer()
			end
		end

		showFullShelf()

		dragOn = false

		setProperty('crosshair2.visible',false)
		setProperty('crosshair2.angle',0)

		setProperty('crosshair.visible',true)

		removeCans();

		removeLocations();

		doTweenX('shelfvwoom', 'fullShelf', -3680, 2, 'backInOut')

		hideEmptyShelf()

		local oldNumber = shelf_number

		while oldNumber == shelf_number do
			shelf_number = getRandomInt(1,5)
			if curBeat > 355 and shelf_number == 4 then
				shelf_number = oldNumber
			end
		end


		--========================================================================================================================================================================
		--shelf_number = 5
  	--========================================================================================================================================================================
		shelf = shelves[shelf_number]

		showEmptyShelf()

		doTweenX('shelfvwoom2','shelf', -840, 2, 'backInOut')

		function onTweenCompleted(t)

			if t == 'shelfvwoom' then



				hideFullShelf()

				createCans()
				createLocations()

			--	makeLuaSprite('bean', can.resource, can.x, can.y)
				-- makeLuaSprite('bean', bean, 450, 700)


				-- makeLuaSprite('beanCompleted', can.resource, location.x, location.y)

			end
		end
	end

end

function onUpdatePost()

	onMouseMove()

	onDrag()

	if mouseClicked() then
		dragCan = beanClicked()


		if dragCan ~= nil then
			--debugPrint(value)
			onDragStart();
		end
	end

	if mouseReleased() then
		onDragStop();
	end

end

function onDrag()
	-- when dragging is action we want bean to automatically follow mouse cursor
	if (dragOn) then
		label = dragCan.label

		setProperty(label .. '.angle', 14 * math.sin((getSongPosition()/crochet)))
		setProperty(label .. '.x', getCursorX() - getProperty(label .. '.width') / 2 );
		setProperty(label .. '.y', getCursorY() - getProperty(label .. '.height') / 2);
		
		setProperty('crosshair2.visible',true)
		setProperty('crosshair2.angle', 14 * math.sin((getSongPosition()/crochet)))

		setProperty('crosshair.visible',false)
	end
end

function onDragStart()
	if not dragOn then
		-- capture original can location


		dragX = dragCan.x
		dragY = dragCan.y

		dragOn = true;
	end
end

function onDragStop()
	-- here we would check for shelf location hit-box
	-- if correct then move bean to new location
	-- otherwise cancel and return bean to original location

	if (dragOn) then
		dragLocation = beanPlaceUnclicked()
		-- show placed can and hide placeholder
		setProperty('crosshair2.visible',false)
		setProperty('crosshair2.angle',0)

		setProperty('crosshair.visible',true)
		if dragLocation ~= nil then

			if dragLocation.colour == dragCan.colour then
				label = dragCan.label
				setProperty(label .. '.angle', 0)
				setProperty(label ..'.x', dragLocation.x)
				setProperty(label ..'.y', dragLocation.y)
				dragLocation.occupied = true
				dragCan.locked = true
				dragOn = false
				setObjectOrder(label,getObjectOrder('boyfriendGroup')-1)
				setObjectOrder(dragLocation.label,getObjectOrder(label)-1)
			else

				damagePlayer()

				sound = getRandomInt(1,3)
				playSound('badnoise'..sound)

				label = dragCan.label
				doTweenX('beanTweenDefaultX', label, dragX, 0.2, 'sineIn')
				doTweenY('beanTweenDefaultY', label, dragY, 0.2, 'sineIn')
				setProperty(label .. '.angle', 0)
				dragOn = false
			end



		else

			-- cancel drag and drop and reset bean location to original drag start position
			dragOn = false;
			label = dragCan.label

			-- doTweenX('beanTweenDefaultX', 'bean', dragX, 0.2, 'sineIn')
			-- doTweenY('beanTweenDefaultY', 'bean', dragY, 0.2, 'sineIn')
			-- setProperty('bean.angle',0)
			doTweenX('beanTweenDefaultX', label, dragX, 0.2, 'sineIn')
			doTweenY('beanTweenDefaultY', label, dragY, 0.2, 'sineIn')
			setProperty(label .. '.angle', 0)
		end
	end
end

function getCursorX()
	return getMouseX('camGame')+ getProperty('camGame.scroll.x');
end

function getCursorY()
	return getMouseY('camGame')+ getProperty('camGame.scroll.y');
end

function beanClicked()

	cursorX = getCursorX();
	cursorY = getCursorY();



	for number = 1, shelf.number_cans do
		can = shelf.cans[number]
		label = can.label
		if can.locked then goto continue end
		x = getProperty(label..'.x')
		y = getProperty(label..'.y')
		width = getProperty(label..'.width')
		height = getProperty(label..'.height')
		if x == label..'.x' then goto continue end
		clicked = cursorX > x and cursorY > y and cursorX < x + width and cursorY < y + height
		if clicked then
			return shelf.cans[number]
		end
		::continue::
	end
	return nil
end

function beanPlaceUnclicked()
	cursorX = getCursorX();
	cursorY = getCursorY();
	for number = 1,shelf.number_locations do
		location = shelf.locations[number]
		label = location.label
		if location.occupied then goto continue end
		x = getProperty(label..'.x')
		y = getProperty(label..'.y')
		width = getProperty(label..'.width')
		height = getProperty(label..'.height')
		if x == label..'.x' then goto continue end
		unclicked = cursorX > x and cursorY > y and cursorX < x + width and cursorY < y + height
		if unclicked then
			return shelf.locations[number]
		end
		::continue::
	end
	return nil
end

function onMouseMove()
	setProperty('crosshair.x',getMouseX('camGame')+ getProperty('camGame.scroll.x'));
	setProperty('crosshair.y',getMouseY('camGame')+ getProperty('camGame.scroll.y'));
	setProperty('crosshair.offset.x',85);
	setProperty('crosshair.offset.y',85);

	setProperty('crosshair2.x',getMouseX('camGame')+ getProperty('camGame.scroll.x'));
	setProperty('crosshair2.y',getMouseY('camGame')+ getProperty('camGame.scroll.y'));
	setProperty('crosshair2.offset.x',85);
	setProperty('crosshair2.offset.y',85);
end
function onEndSong()
	triggerEvent('ShelfMoveOver','','')
	runTimer('thatsAllFolks',0.2)
	function onTimerCompleted(t)
	if t == 'thatsAllFolks' then goto endDaSong end
	::endDaSong::
	return Function_Continue;
	end
end