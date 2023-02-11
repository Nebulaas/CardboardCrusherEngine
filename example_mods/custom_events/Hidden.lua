



function onEvent(n,v,b)
	if n == 'Hidden' then
		wigglefreq = 200
		wiggleamp = 1
	end
	function onUpdatePost()

if not inGameOver then
	for i=0,getProperty('notes.length') do
		strum = getPropertyFromGroup('notes',i,'strumTime')
		
		woom = (strum-getSongPosition())/wigglefreq-0.47
		
		setPropertyFromGroup('notes',i,'alpha',wiggleamp *math.sin(woom))
	
	end
end

end
end