function postCreate() {
    black = new FlxSprite(0, 0);
    black.makeGraphic(FlxG.width, FlxG.height, 0xff000000);
    black.cameras = [camHUD];
    black.alpha = 0;
    add(black);
    remove(black);

    insert(0, black);
}

function onEvent(event){
	if(event.event.name != "Camera Face") return;

	var value1 = event.event.params[0];
    var value2 = event.event.params[1];
    var value3 = event.event.params[2];
    trace('ooooo ho hoo hoo hoo');

    var shouldFade:Bool = value1;
    var fadeTime:Float = value2;
    var fadeOut:Bool = value3;
    camFade(shouldFade, fadeOut, fadeTime);

}
function camFade(shouldFade:Bool = true, fadeOut:Bool = true, fadeTime:Float = 1){
    if(shouldFade == null) shouldFade = true;
    if(fadeOut == null) fadeOut = true;
    if(fadeTime == null) fadeTime = 1;
    trace('fading camera');
    if(shouldFade && fadeOut){
        black.alpha = 0;
    }
    if(!shouldFade && !fadeOut){
        black.alpha = 1;
    }
    if(shouldFade && !PlayState.chartingMode){
        if(fadeOut){
            black.alpha = 0;
            FlxTween.tween(black, {alpha: 1}, fadeTime, {ease: FlxEase.linear});
        }
        else{
            black.alpha = 1;
            FlxTween.tween(black, {alpha: 0}, fadeTime, {ease: FlxEase.linear});
        }
    }
}