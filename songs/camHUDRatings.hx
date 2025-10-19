public var ratingScaleDiff:Float = 0.1;

function postCreate()
{
    comboGroup.x = 560;
    comboGroup.y = 290;
}
function postUpdate()
{
	comboGroup.forEachAlive(function(spr) {
		if(spr.camera != camHUD) spr.camera = camHUD;
	});
}

function onNoteHit(event)
{
	event.numScale -= ratingScaleDiff;
	event.ratingScale -= ratingScaleDiff;
}
