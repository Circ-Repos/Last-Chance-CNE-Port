function onEvent(name,v1,v2)
    if name == 'Lyrics' then
        if v1 ~= '' then
            if not luaTextExists('Text') then
                makeLuaText('Text',v1,screenWidth,10,screenHeight - 175)
                setTextSize('Text',30)
            else
                setTextString('Text',v1)
            end
            if v2 ~= '' then
                setProperty('Text.color',getColorFromHex(v2))
            end
            setTextBorder('Text',1,'000000')
            setObjectCamera('Text','other')
            addLuaText('Text', false)
        else
            removeLuaText('Text',true)
        end
    
    --shitty text movements by haxxar uwuwuwuwu
    
        if v2 == 'FF0000' then
            setProperty('Text.y', 150)
            if not downscroll then
                setProperty('Text.y', screenHeight - 175)
           end
        end
        if v1 == 'Now its time i tell the tale.' then
            setProperty('Text.y', 100)
            if not downscroll then
                setProperty('Text.y', 635)
           end
        end
        if v1 == 'Zalgo.' then
            setProperty('Text.y', 100)
            if not downscroll then
                setProperty('Text.y', 635)
            end
        end
        if v1 == '*cutscene*' then
            setProperty('Text.y', 635)
        end
    end
end
