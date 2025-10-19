import flixel.text.FlxTextBorderStyle;
import flixel.text.FlxText;
import flixel.text.FlxTextAlign;

var lyrics:FlxText;
var shakeTween:FlxTween;

public var subtitleCam = new HudCamera();

function create() {

	FlxG.cameras.add(subtitleCam = new HudCamera(), false);
    subtitleCam.bgColor = 0;

	lyrics = new FlxText(0, 600, 0, "");
	lyrics.alignment = FlxTextAlign.CENTER;
	lyrics.setFormat(Paths.font("sth.ttf"), 36, FlxColor.RED, FlxTextAlign.center);
	lyrics.setBorderStyle(FlxTextBorderStyle.NONE);
	lyrics.antialiasing = false;
	lyrics.scrollFactor.set(0, 0);
	lyrics.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.BLACK, 2, 4);
	lyrics.cameras = [subtitleCam];
	add(lyrics);
    lyrics.screenCenter(FlxAxes.X);

	shakeTween = FlxTween.shake(lyrics, 0.05, 2, FlxAxes.XY, { ease: FlxEase.bounceInOut, type: FlxTween.PINGPONG });
	shakeTween.cancel();
}
function postUpdate(elapsed:Float) {
	lyrics.y = lerp(lyrics.y, mid ? 300 : 600, elapsed * 60);
}
var mid:Bool = false;
function onEvent(event)
{
	if(event.event.name != "Lyrics") return;

	var value1 = event.event.params[0];
    var value2 = event.event.params[1];
	if(value2 != 'mid' && lyrics.y != 560){
		mid = false;
		lyrics.x = 0;
		lyrics.y = 590;
		lyrics.setFormat(Paths.font("sth.ttf"), 36, FlxColor.RED, FlxTextAlign.center);
	}
    if (event.event.name == 'Lyrics' && value1 != '')
    {
		lyrics.alpha = 1;
		lyrics.text = value1;
		lyrics.updateHitbox();

    }
	switch(value2){
		default:
			shakeTween.cancel();
			lyrics.screenCenter(FlxAxes.X);
		case 'mid':
			shakeTween.cancel();
			lyrics.screenCenter();
			lyrics.updateHitbox();
			lyrics.setFormat(Paths.font("sth.ttf"), 72, FlxColor.RED, FlxTextAlign.center);
			mid = true;
		case 'shake':
			lyrics.screenCenter(FlxAxes.X);
			lyrics.updateHitbox();
			shakeTween.start();
			mid = false;
		case 'shakemid':
			lyrics.screenCenter();
			lyrics.setFormat(Paths.font("sth.ttf"), 72, FlxColor.RED, FlxTextAlign.center);
			lyrics.updateHitbox();
			shakeTween.start();
			mid = true;
			
	}
	if(value1 == '') FlxTween.tween(lyrics, {alpha: 0},0.8, {ease: FlxEase.linear});
}
