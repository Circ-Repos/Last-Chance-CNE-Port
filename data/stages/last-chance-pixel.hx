import hxvlc.flixel.FlxVideoSprite;

var endingVideo:FlxVideoSprite;
var poemCutscene:FlxSprite;
function cacheVideos(){
        videoArray = [endingVideo];
    for (i in videoArray)
    {
        i.bitmap.rate = 1;
        i.alpha = 0.001;
        i.autoPause = true;
        i.cameras = [camHUD];
        i.scale.set(0.7,0.7);
        i.x -= 300;
        i.y -= 180;
        i.updateHitbox();
        add(i);
    }
    for (i in videoArray)
    {
        i.play(); // This fixes a visual issue where the video doesnt play until a little bit after it should
        new FlxTimer().start(0.1, function(tmr) {
			i.pause();
            i.bitmap.time = 0;
		});
    }  
}
function postCreate() {
    trace(PlayState.chartingMode);
    healthBar.alpha = 0;
    iconP1.alpha = 0;
    iconP2.alpha = 0;
    healthBarBG.alpha = 0;

    endingVideo = new FlxVideoSprite();
    endingVideo.load(Paths.video('finale'));
    endingVideo.camera = camHUD;
    add(endingVideo);

    poemCutscene = new FlxSprite(35);
    poemCutscene.frames = Paths.getSparrowAtlas('bgs/sunshine-exe/last-chance/poemAnim');
    poemCutscene.animation.addByPrefix("idle", "static", 15, false);
    poemCutscene.animation.addByPrefix("transition", "transition", 15, false);
    poemCutscene.animation.play('idle');
    poemCutscene.camera = camHUD;
    poemCutscene.antialiasing = false;
    poemCutscene.scale.set(3.5,3.5);
    poemCutscene.updateHitbox();
    poemCutscene.visible = false;
    add(poemCutscene);

    cacheVideos();
    // tween needs to last from 4:51 to 5:24 aka 33 seconds
}

function setBFAlpha(alphaVal:Float = 1){
    boyfriend.alpha = alphaVal;
}
function strumLinePosChange(pos:String){
    switch(pos){
        case "mid":
            for(strums in playerStrums.members){
                strums.x += 325;
            }
            for(strums in cpuStrums.members){
                strums.x += 650;
            }
        
        case 'back to effoc':
            for(strums in playerStrums.members){
                strums.x -= 325;
            }
            for(strums in cpuStrums.members){
                strums.x -= 650;
            }

    }
}
function stepHit(curStep:Int) {
    switch(curStep){
        case 368:
            if(!PlayState.chartingMode){
                FlxTween.tween(FlxG.camera, {alpha: 0}, 3);
                FlxTween.tween(FlxG.camera, {angle: 359}, 6);

            }
            else{
                FlxG.camera.alpha = 0;
            }
        case 416:
            FlxG.camera.angle = 0;
            FlxG.camera.alpha = 1;
        case 670:
            FlxG.camera.alpha = 0;
        case 685:
            FlxG.camera.alpha = 1;
        case 912:
            if(!PlayState.chartingMode){
                FlxTween.tween(FlxG.camera, {alpha: 0}, 3);
            }
            else{
                FlxG.camera.alpha = 0;
            }
        case 976:
            FlxG.camera.alpha = 1;
        case 1483:
            FlxG.camera.alpha = 0;
            camHUD.alpha = 0;
        case 1664:
            FlxG.camera.alpha = 1;
            camHUD.alpha = 1;
        case 2030:
            FlxG.camera.alpha = 0;
            strumLinePosChange('mid');
        case 2047:
            FlxG.camera.alpha = 1;
        case 2720:
            FlxG.camera.alpha = 0;
            //camHUD.alpha = 0;
        case 2759:
            poemCutscene.alpha = 0;
            poemCutscene.visible = true;
            FlxTween.tween(poemCutscene, {alpha: 1}, 26, {ease: FlxEase.linear});
        case 3028:
            poemCutscene.animation.play('transition');
        case 3056:
            poemCutscene.alpha = 0;
            FlxG.camera.alpha = 1;
            camHUD.alpha = 1;
        case 3935:
            FlxTween.tween(FlxG.camera, {alpha: 0}, 3, {ease: FlxEase.linear});            
        case 3950:
            //video BS
            endingVideo.alpha = 1;
            endingVideo.visible = true;
            endingVideo.resume();
            player.cpu = true;
            for(strums in playerStrums.members) strums.alpha = 0;
        case 4000:
            player.cpu = false;
        }            
}

function changeBG(eventNum){
    trace('changing to bg ' + eventNum);
    switch (eventNum)
    {
        case "-1":
            skyZalgo.visible = false;
            groundZalgo.visible = false;
            room.visible = false;
            skyZalgo.alpha = groundZalgo.alpha = room.alpha = 0;

        case "0":
            skyZalgo.visible = true;
            groundZalgo.visible = true;
            skyZalgo.alpha = 1;
            groundZalgo.alpha = 1;

        case "1":
            skyFaker.visible = true;
            groundFaker.visible = true;
            skyFaker.alpha = 1;
            groundFaker.alpha = 1;

        case "2":
            skyFaker.visible = false;
            groundFaker.visible = false;
            skyFaker.alpha = 0;
            groundFaker.alpha = 0;

        case "3":
            room.visible = true;
            room.alpha = 1;

        case "2.5":
            skyFaker.visible = groundFaker.visible = skyZalgo.visible = skyZalgo2.visible = groundZalgo.visible = true;
            skyZalgo2Shadows.visible = groundZalgo2.visible = true;
            skyZalgo2Shadows.alpha = 1;
            skyFaker.alpha = groundFaker.alpha = skyZalgo.alpha = skyZalgo2.alpha = groundZalgo.alpha = 0;
            skyZalgo2Shadows.alpha = groundZalgo2.alpha = 1;
            skyZalgo2.alpha = 1;
            skyZalgo2.visible = true;
        case "3.5":
            skyZalgo2.visible = false;
            skyFaker.visible = true;
            groundFaker.visible = false;
            groundFaker2.visible = true;
            skyZalgo2.visible = false;
            skyZalgo2Shadows.visible = false;
            groundZalgo2.visible = false;

        case "4":
            skyFaker.visible = false;
            groundFaker.visible = false;
            groundFaker2.visible = false;
            skyZalgo2.visible = true;
            skyZalgo2Shadows.visible = true;
            groundZalgo2.visible = true;

        case "5":
            skyFaker.visible = false;
            groundFaker.visible = false;
            skyZalgo.visible = false;
            groundZalgo.visible = false;
            skyFinal.visible = false;
            groundFinal.visible = false;
            cloudsFinal.visible = false;
            skyZalgo2.visible = false;
            skyZalgo2Shadows.visible = false;
            groundZalgo2.visible = false;
        case "6":
            setBFAlpha(1);
            remove(boyfriend,true);
            insert(99, boyfriend);
            skyFaker.visible = false;
            groundFaker.visible = false;
            skyZalgo.visible = false;
            groundZalgo.visible = false;
            skyFinal.visible = true;
            skyFinal.alpha = 1;
            groundFinal.alpha = 1;
            cloudsFinal.alpha = 1;
            groundFinal.visible = true;
            cloudsFinal.visible = true;
            PlayState.defaultZoom = 3.0;
            poemCutscene.alpha = 0;
            poemCutscene.visible = false;
    }
}
function openYourEyes(){
    dad.alpha = 0;
    zalgoAnim1.visible = true;
    zalgoAnim1.alpha = 1;
    zalgoAnim1.playAnim("idle", false);
    zalgoAnim1.camera = camHUD;
    zalgoAnim1.screenCenter();
}
function opover(){
    zalgoAnim1.visible = false;
    zalgoAnim1.alpha = 0;
    dad.alpha = 1;
    dad.camera = camHUD;
    dad.screenCenter();
}
var followChars:Bool = true;
function camMoveBool(boolVal:Bool){
    followChars = boolVal;
}
function onCameraMove(event){
    if(!followChars) event.cancel();
}
