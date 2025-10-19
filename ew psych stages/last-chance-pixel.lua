function onCreatePost()
	precacheImage('bgs/sunshine-exe/lastchancetailsbg1_1')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg1_2')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg1_3')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg2_1')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg2_2')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg3_1')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg4_1')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg4_2')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg4_3')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg4_4')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg5_1')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg5_2')
	precacheImage('bgs/sunshine-exe/lastchancetailsbg5_3')
	precacheImage('stuff/last-chance/anim1')
	precacheImage('stuff/last-chance/anim2')
	precacheImage('stuff/last-chance/poemAnim')
	
	makeAnimatedLuaSprite('skyFaker', 'bgs/sunshine-exe/lastchancetailsbg1_1', -57, 5)
	addAnimationByPrefix('skyFaker', 'lastchancetailsbg1 1 loop', 'lastchancetailsbg1 1 loop', 12, true)
	setScrollFactor('skyFaker', 0.5, 1)
	
	makeAnimatedLuaSprite('groundFaker', 'bgs/sunshine-exe/lastchancetailsbg1_2', -100, -243)
	addAnimationByPrefix('groundFaker', 'loop', 'loop', 3, true)
	
	makeLuaSprite('groundFaker2', 'bgs/sunshine-exe/lastchancetailsbg1_3', -100, 98)
	
	makeAnimatedLuaSprite('skyZalgo', 'bgs/sunshine-exe/lastchancetailsbg2_1', -57, 5)
	addAnimationByPrefix('skyZalgo', 'lastchancetailsbg3 1 loop', 'lastchancetailsbg3 1 loop', 12, true)
	setScrollFactor('skyZalgo', 0.5, 1)
	
	makeAnimatedLuaSprite('groundZalgo', 'bgs/sunshine-exe/lastchancetailsbg2_2', -100, 5)
	addAnimationByPrefix('groundZalgo', 'lastchancetailsbg3 2 loop', 'lastchancetailsbg3 2 loop', 12, true)
	
	makeLuaSprite('room', 'bgs/sunshine-exe/lastchancetailsbg3_1', -250, -180)
	setScrollFactor('room', 0.5, 0.5)
	
	makeLuaSprite('skyZalgo2', 'bgs/sunshine-exe/lastchancetailsbg4_1', 50, -143)
	setScrollFactor('skyZalgo2', 0.5, 0.5)
	
	makeLuaSprite('skyZalgo2Shadows', 'bgs/sunshine-exe/lastchancetailsbg4_4', -300, -243)
	setScrollFactor('skyZalgo2Shadows', 1.5, 1)
	
	makeLuaSprite('groundZalgo2', 'bgs/sunshine-exe/lastchancetailsbg4_2', -100, -243)
	
	makeLuaSprite('groundZalgo2Shadows', 'bgs/sunshine-exe/lastchancetailsbg4_3', -320, -243)
	setScrollFactor('groundZalgo2Shadows', 1.5, 1)
	
	makeLuaSprite('skyFinal', 'bgs/sunshine-exe/lastchancetailsbg5_1', 230, -23)
	setScrollFactor('skyFinal', 0.5, 0.5)
	
	makeLuaSprite('groundFinal', 'bgs/sunshine-exe/lastchancetailsbg5_2', 190, -183)

	makeLuaSprite('cloudsFinal', 'bgs/sunshine-exe/lastchancetailsbg5_3', 160, -353)
	setScrollFactor('cloudsFinal', 1.5, 1.5)
	
	
	makeAnimatedLuaSprite('zalgoAnim1', 'stuff/last-chance/anim1', 200, 0)
	addAnimationByPrefix('zalgoAnim1', 'static', 'static', 24, false)
	setObjectCamera('zalgoAnim1', 'other')
	scaleObject('zalgoAnim1', 1.7, 1.7)
	
	makeAnimatedLuaSprite('poemAnim', 'stuff/last-chance/poemAnim', 465, 235)
	addAnimationByPrefix('poemAnim', 'static', 'static', 12, true)
	setScrollFactor('poemAnim', 0, 0)
	scaleObject('poemAnim', 1, 1)
	
	makeAnimatedLuaSprite('zalgoAnim2', 'stuff/last-chance/anim2', 140, -160)
	addAnimationByPrefix('zalgoAnim2', 'idle', 'loop', 24, true)
	setScrollFactor('zalgoAnim2', 0, 0)
	scaleObject('zalgoAnim2', 1.5, 1.5)
	
	addLuaSprite('zalgoAnim2', false)
	addLuaSprite('zalgoAnim1', false)
	addLuaSprite('room', false)
	addLuaSprite('skyFinal', false)
	addLuaSprite('skyZalgo', false)
	addLuaSprite('skyZalgo2', false)
	addLuaSprite('skyZalgo2Shadows', false)
	addLuaSprite('skyFaker', false)
	addLuaSprite('groundZalgo', false)
	addLuaSprite('groundZalgo2', false)
	addLuaSprite('groundFaker', false)
	addLuaSprite('groundFaker2', false)
	addLuaSprite('groundFinal', false)
	addLuaSprite('cloudsFinal', true)
	addLuaSprite('groundZalgo2Shadows', true)
	addLuaSprite('poemAnim', false)
	
	setProperty('skyFaker.antialiasing', false)
	setProperty('groundFaker.antialiasing', false)
	setProperty('groundFaker2.antialiasing', false)
	setProperty('skyZalgo.antialiasing', false)
	setProperty('skyZalgo2.antialiasing', false)
	setProperty('skyZalgo2Shadows.antialiasing', false)
	setProperty('groundZalgo.antialiasing', false)
	setProperty('groundZalgo2.antialiasing', false)
	setProperty('groundZalgo2Shadows.antialiasing', false)
	setProperty('skyFinal.antialiasing', false)
	setProperty('groundFinal.antialiasing', false)
	setProperty('cloudsFinal.antialiasing', false)
	setProperty('poemAnim.antialiasing', false)
	
	setProperty('skyFinal.visible', false)
	setProperty('groundFinal.visible', false)
	setProperty('cloudsFinal.visible', false)
	setProperty('skyZalgo.visible', false)
	setProperty('skyZalgo2.visible', false)
	setProperty('skyZalgo2Shadows.visible', false)
	setProperty('groundZalgo.visible', false)
	setProperty('groundZalgo2.visible', false)
	setProperty('groundZalgo2Shadows.visible', false)
	setProperty('groundFaker2.visible', false)
	setProperty('room.visible', false)
	setProperty('zalgoAnim1.visible', false)
	setProperty('zalgoAnim2.visible', false)
	setProperty('zalgoAnim2.alpha', 0)
	setProperty('poemAnim.visible', false)
	setProperty('poemAnim.alpha', 0)
end

function onEvent(event,v1,v2)
	if event == 'HealthBar' then
		if v1 == '0' then
			setProperty('healthBar.visible', false)
			setProperty('scoreTxt.visible', false)
			setProperty('botTxt.alpha', 0)
		end
		if v1 == '1' then
			setProperty('healthBar.visible', true)
			setProperty('scoreTxt.visible', true)
			setProperty('botTxt.alpha', 1)
		end
	end
	if event == 'Play Animation' then
		if v1 == 'open your eyes' then
			setProperty('zalgoAnim1.visible', true)
			addAnimationByPrefix('zalgoAnim1', 'idle', 'idle', 11, false)
		end
		if v1 == 'disable anim 1' then
			setProperty('zalgoAnim1.visible', false)
			addAnimationByPrefix('zalgoAnim1', 'static', 'static', 24, false)
		end
		if v1 == 'room fadeOut' then
			doTweenAlpha('room', 'room', 0, 14, 'linear')
		end
		if v1 == 'beastzalgo incoming' then
			doTweenAlpha('camHUD', 'camHUD', 0.4, 0.3, 'linear')
		end
		if v1 == 'zalgo incoming' then
			doTweenAlpha('camHUD', 'camHUD', 0.2, 8, 'linear')
		end
		if v1 == 'zalgo is here' then
			doTweenAlpha('camHUD', 'camHUD', 1, 0.5, 'linear')
		end
	end
	if event == 'Set BG phase' then
		if v1 == '-1' then
			setProperty('skyZalgo.visible', false)
			setProperty('groundZalgo.visible', false)
			setProperty('room.visible', false)
		end
			if v1 == '0' then
			setProperty('skyZalgo.visible', true)
			setProperty('groundZalgo.visible', true)
		end
		if v1 == '1' then
			setProperty('skyFaker.visible', true)
			setProperty('groundFaker.visible', true)
		end
			if v1 == '2' then
			setProperty('skyFaker.visible', false)
			setProperty('groundFaker.visible', false)
		end
			if v1 == '3' then
			setProperty('room.visible', true)
		end
			if v1 == '2.5' then
			setProperty('skyFaker.visible', false)
			setProperty('groundFaker.visible', false)
			setProperty('skyZalgo.visible', false)
			setProperty('groundZalgo.visible', false)
			setProperty('skyZalgo2.visible', true)
			setProperty('skyZalgo2Shadows.visible', true)
			setProperty('groundZalgo2.visible', true)
			setProperty('groundZalgo2Shadows.visible', true)
		end
			if v1 == '3.5' then
			setProperty('skyFaker.visible', true)
			setProperty('groundFaker.visible', false)
			setProperty('groundFaker2.visible', true)
			setProperty('skyZalgo2.visible', false)
			setProperty('skyZalgo2Shadows.visible', false)
			setProperty('groundZalgo2.visible', false)
			setProperty('groundZalgo2Shadows.visible', false)
		end
			if v1 == '4' then
			setProperty('skyFaker.visible', false)
			setProperty('groundFaker.visible', false)
			setProperty('groundFaker2.visible', false)
			setProperty('skyZalgo2.visible', true)
			setProperty('skyZalgo2Shadows.visible', true)
			setProperty('groundZalgo2.visible', true)
			setProperty('groundZalgo2Shadows.visible', true)
		end
			if v1 == '5' then
			setProperty('skyFaker.visible', false)
			setProperty('groundFaker.visible', false)
			setProperty('skyZalgo.visible', false)
			setProperty('groundZalgo.visible', false)
			setProperty('skyFinal.visible', false)
			setProperty('groundFinal.visible', false)
			setProperty('cloudsFinal.visible', false)
			setProperty('skyZalgo2.visible', false)
			setProperty('skyZalgo2Shadows.visible', false)
			setProperty('groundZalgo2.visible', false)
			setProperty('groundZalgo2Shadows.visible', false)
		end
			if v1 == '6' then
			setProperty('skyFaker.visible', false)
			setProperty('groundFaker.visible', false)
			setProperty('skyZalgo.visible', false)
			setProperty('groundZalgo.visible', false)
			setProperty('skyFinal.visible', true)
			setProperty('groundFinal.visible', true)
			setProperty('cloudsFinal.visible', true)
		end
	end
	if event == 'end' then
		if v1 == 'FF0000' then
			cameraFlash('game', v1, 3)
		end
		if v1 == 'poem in' then
			setProperty('poemAnim.visible', true)
			doTweenAlpha('poemAnim', 'poemAnim', 1, 50, 'linear')
		end
		if v1 == 'poem out' then
			addAnimationByPrefix('poemAnim', 'transition', 'transition', 12, false)
		end
		if v1 == 'poem off' then
			setProperty('poemAnim.visible', false)
			setObjectOrder('dadGroup', 5)
			setObjectOrder('boyfriendGroup', 16)
		end
		if v1 == 'end arrows' then 
			if not middlescroll then
				noteTweenX('opponentStrums1', 0, 182, 0.000001)
				noteTweenX('opponentStrums2', 1, 294, 0.000001)
				noteTweenX('opponentStrums3', 2, 406, 0.000001)
				noteTweenX('opponentStrums4', 3, 518, 0.000001)
				noteTweenX('playerStrums1', 4, 652, 0.000001)
				noteTweenX('playerStrums2', 5, 764, 0.000001)
				noteTweenX('playerStrums3', 6, 876, 0.000001)
				noteTweenX('playerStrums4', 7, 988, 0.000001)
			end
		end
		if v1 == 'cutscene' then
			startVideo('end')
		end
		if v1 == 'in' then
			setProperty('zalgoAnim2.visible', true)
			doTweenAlpha('zalgoAnim2', 'zalgoAnim2', 1, 2.5, 'linear')
		end
		if v1 == 'out' then
			setProperty('zalgoAnim2.visible', false)
		end
	end
end