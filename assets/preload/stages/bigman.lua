function onCreate()
	makeLuaSprite('bg','stages/bigman/big_person_someone_wow',-1900,-1100)
	--scaleObject('bg',4,4)
	addLuaSprite('bg',false)
end
function onBeatHit()
	if curBeat == 52 then
		setProperty('vocals.volume',0)
	end
end