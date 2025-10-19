function onEvent(name,value1,value2)
    if name == 'CamFlash' then
        cameraFlash('hud', value1, value2)
    end
    if  name == 'CamFlash Alt' then
        cameraFlash('game', value1, value2)
    end
end