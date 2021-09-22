package;

import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.util.FlxColor;

class WetFart extends MusicBeatState
{

    var wetwetwetwetwet:FlxSprite;


    public function new(isUnlocked:Bool, whichUnlocked:String)
    {
        wetwetwetwetwet = new FlxSprite().loadGraphic(Paths.image('fpc', 'shared'));
        
        super();
    }

    override function create()
    {
        wetwetwetwetwet.alpha = 0;
        wetwetwetwetwet.screenCenter();
        add(wetwetwetwetwet);

        new FlxTimer().start(2, function(xd:FlxTimer)
        {
            FlxTween.tween(wetwetwetwetwet, {alpha: 1}, 1);
        });

        super.create();
    }

    override function update(elapsed:Float)
    {
        if (controls.ACCEPT)
        {
            LoadingState.loadAndSwitchState(new MainMenuState());
        }
        
        super.update(elapsed);
    }
}