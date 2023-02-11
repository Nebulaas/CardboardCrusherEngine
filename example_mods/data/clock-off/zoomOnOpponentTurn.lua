function onCreate()
   
    
    --doTweenAlpha("gone","camHUD",0,0.01)
end
function onUpdate(elapsed)
        if mustHitSection == false then
            setProperty('defaultCamZoom',1.12)
        else
           
            setProperty('defaultCamZoom',0.77)
        end
end

