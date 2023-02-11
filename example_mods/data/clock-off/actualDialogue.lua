function onEndSong()
  setPropertyFromClass("openfl.Lib","application.window.title", "Friday Night Funkin': Psych Engine")
 if not allowEndShit and not seenCutscene and isStoryMode then
  setProperty('inCutscene', true);
  startDialogue('dialogue', 'no'); 
  allowEndShit = true;
  return Function_Stop;
 end
 return Function_Continue;
end