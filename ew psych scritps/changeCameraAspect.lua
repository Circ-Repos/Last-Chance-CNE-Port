function onCreatePost()
	makeLuaSprite('4:3', 'stuff/4_3', 0, 0)
	addLuaSprite('4:3', true)
	setObjectCamera("4:3", "other")
	setTextString('botplayTxt','bot')
	setObjectCamera('botplayTxt', 'hud')
	setProperty('botplayTxt.y', 680)
	setProperty('botplayTxt.x', 825)
	
	noteTweenX('opponentStrums1', 0, 182, 0.01)
	noteTweenX('opponentStrums2', 1, 294, 0.01)
	noteTweenX('opponentStrums3', 2, 876, 0.01)
	noteTweenX('opponentStrums4', 3, 988, 0.01)
	
	if not middlescroll then
	noteTweenX('playerStrums1', 4, 182, 0.01)
	noteTweenX('playerStrums2', 5, 294, 0.01)
	noteTweenX('playerStrums3', 6, 406, 0.01)
	noteTweenX('playerStrums4', 7, 518, 0.01)
	
	noteTweenX('opponentStrums1', 0, 652, 0.01)
	noteTweenX('opponentStrums2', 1, 764, 0.01)
	noteTweenX('opponentStrums3', 2, 876, 0.01)
	noteTweenX('opponentStrums4', 3, 988, 0.01)
	end
end