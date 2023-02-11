function onCreate()
    dangerNumber = 0
end




function onEvent(name,value1,value2)

    if name == "Warning Note" then

        dangerNumber = dangerNumber + 1
        
        makeSpaceNOTE()
            
    end

end




function makeSpaceNOTE()
    makeLuaSprite('spaceNote'..dangerNumber,'SPACE',660,900)
    setObjectCamera('spaceNote'..dangerNumber,'camHUD')
    addLuaSprite('spaceNote'..dangerNumber,true)

    doTweenY('spaceNoteUP'..dangerNumber,'spaceNote'..dangerNumber,-100,0.4,'linear')
end