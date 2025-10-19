function onCreatePost()
	setTextFont('scoreTxt', 'NiseSegaSonic.ttf')  
	setTextFont('timeTxt', 'NiseSegaSonic.ttf')
	setTextFont('botplayTxt', 'NiseSegaSonic.ttf')
	
	runHaxeCode([[
		game.healthBar.scale.y = 2.4;
		game.healthBar.flipX = true;
		game.healthBar.bg.loadGraphic(Paths.image('stuff/none'));
		game.iconP1.visible = false;
		game.iconP2.visible = false;
		return;
	]])
end

function onCreate()
	precacheImage('stuff/hud/zalgoBarAnimated')
	
	makeAnimatedLuaSprite('bar', 'stuff/hud/zalgoBarAnimated', 161, -45)
	addAnimationByPrefix('bar', 'static', 'static', 12, true)
	setProperty('bar.antialiasing', false)
	setProperty('bar.flipX', true)
	setObjectCamera('bar', 'camHUD')
	scaleObject('bar', 5.7, 5.7)
	addLuaSprite('bar', true)
	if not downscroll then
		makeAnimatedLuaSprite('bar', 'stuff/hud/zalgoBarAnimated', 161, 515)
		addAnimationByPrefix('bar', 'static', 'static', 12, true)
		setProperty('bar.antialiasing', false)
		setProperty('bar.flipX', true)
		setObjectCamera('bar', 'camHUD')
		scaleObject('bar', 5.7, 5.7)
		addLuaSprite('bar', true)
	end
end

function onUpdatePost()
	setObjectOrder('healthBar', getObjectOrder('healthBar')+1)
	setObjectOrder('bar', getObjectOrder('bar')+2)
	setObjectOrder('scoreTxt', getObjectOrder('scoreTxt')+3)
	if rating > 0 then
		setTextString('scoreTxt', 'S: '..score..' | M: '..misses..' | R: ('..round(rating*100, 2)..'%) - '..ratingFC)
	else
		setTextString('scoreTxt', 'S: '..score..' | M: '..misses..' | R: (?%)')
	end
end

function onEvent(event,v1,v2)
	if event == 'Health Bar' then
		if v1 == 'static' then
			addAnimationByPrefix('bar', 'static', 'static', 12, true)
		end
		if v1 == 'woosh' then
			addAnimationByPrefix('bar', 'woosh', 'woosh', 18, false)
		end
		if v1 == 'idle' then
			addAnimationByPrefix('bar', 'idle', 'idle', 12, true)
		end
		if v1 == 'back' then
			addAnimationByPrefix('bar', 'omg', 'omg', 18, false)
		end
	end
	if event == 'Change Cam Offset' then
		if v1 ~= '' then
			setOffs(v1,'dad')
			setOffs(v1,'boyfriend')
		end
		if v1 == 'zalgoFinale' then
			setOffs(10,'dad')
			setOffs(3.5,'boyfriend')
		end
	end
	if event == 'HealthBar' then
		if v1 == '0' then
			setProperty('bar.visible', false)
		end
		if v1 == '1' then
			setProperty('bar.visible', true)
		end
	end
end

function setOffs(ofs,target)
	callScript('scripts/setCameraMovement','setOffs',{ofs,target})
end