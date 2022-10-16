local endstops = 0
function onCreate()
	makeLuaSprite('ending','stages/bigman/dead',0,0);
	setObjectCamera('ending', 'other')
	doTweenAlpha('Nope', 'ending', 0, 0, 'linear');
end
function onEndSong()

	endstops = endstops + 1
	if isStoryMode then
		if endstops == 1 then
			runTimer('endscreen', 8.942);
			addLuaSprite('ending', true);
			playMusic('bloowop',1);
			doTweenAlpha('ending', 'ending', 1, 1, 'linear');
			return Function_Stop;
		end
	end
	return Function_Continue;

end
function onUpdatePost()
    
   
    if endstops == 1 and getProperty('endingSong') then
       
      if keyJustPressed('accept') then endSong() end
        
    end
    
    
end