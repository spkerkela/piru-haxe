package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;

class PlayState extends FlxState
{
	var player:FlxSprite;
	override public function create():Void
	{
		super.create();
		var sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.orbs_0__png);
		sprite.x = 10;
		sprite.y = FlxG.height-sprite.height;
		var sprite2= new FlxSprite();
		sprite2.loadGraphicFromSprite(sprite);
		sprite2.x = FlxG.width - sprite.width -10;
		sprite2.y = FlxG.height-sprite.height;
		add(sprite);
		add(sprite2);
		
		player = new FlxSprite();
		player.loadGraphic(AssetPaths.player_idle__png,true,Std.int(816/8),Std.int(1792/16));
		player.centerOrigin();
		player.x = FlxG.width/2;
		player.y = FlxG.height/2;
		player.animation.add("south",[0,1,2,3,4,5,6,7],20,true);
		add(player);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		player.animation.play("south");
	}
}
