var increment:Bool = 3.5;

function postUpdate() {
    switch(strumLines.members[curCameraTarget].characters[0].getAnimName()) {
        case "singLEFT": {
            camFollow.x -= increment;
        }

        case "singDOWN": {
            camFollow.y += increment;
        }

        case "singUP": {
            camFollow.y -= increment;
        }

        case "singRIGHT": {
            camFollow.x += increment;
        }
    }
}

