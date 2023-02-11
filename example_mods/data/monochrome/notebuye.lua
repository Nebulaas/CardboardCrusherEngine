function onUpdatePost()
    for i = 0,3 do
        noteTweenAlpha('note movement'..i, i, 0, 0.0001, 'linear')
    end
    cameraSetTarget('dad')
end

function onBeatHit()
    if curBeat == 388 then
        doTweenAlpha("gone","camHUD",0,1,'linear')
    end
    if curBeat == 413 then
        setProperty('iconP2.visible',true)
        doTweenAlpha("gone","camHUD",1,1,'linear')
    end 
end