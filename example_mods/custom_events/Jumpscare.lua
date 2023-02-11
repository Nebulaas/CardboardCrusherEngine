function onCreate()

  makeLuaSprite('jumpscare','monochrome/jumpscare',0,0)
  setObjectCamera('jumpscare','other')
  setObjectOrder('jumpscare',40)
  scaleObject('jumpscare',0.34,0.34)
  --setProperty('jumpscare.visible',false)
  setProperty('jumpscare.alpha',0)
end

function onEvent(name, value1, value2)
  if name == 'Jumpscare' then
   cancelTween('byeLOLHAHA')
   addLuaSprite('jumpscare',true)
   setProperty('jumpscare.alpha',1)
   playSound('mono-jumpscare')
   triggerEvent('Screen Shake',"0.33,0.04","0.33,0.04")
   --triggerEvent('window_shake', '60', '10')
   --setProperty('jumpscare.visible',true)
   runTimer('Scary',value1)
   function onTimerCompleted(Scary)
     doTweenAlpha('byeLOLHAHA','jumpscare', 0, 0.2, 'linear')
     function onTweenCompleted(byeLOLHAHA)
 	    --setProperty('jumpscare.visible',false)
     end
   end
  end
end

function onBeatHit()
  if curBeat == 400 then
    makeLuaSprite('jumpscare','monochrome/jumpscare-alt',0,0)
    setObjectCamera('jumpscare','other')
  setObjectOrder('jumpscare',40)
  scaleObject('jumpscare',0.34,0.34)
  setProperty('jumpscare.alpha',0)
  end
end