package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('Sunrise-Polo', [24, 25], 0, false, isPlayer);
		animation.add('Brazil-Polo', [26, 27], 0, false, isPlayer);
		animation.add('Thelove-Polo', [28, 29], 0, false, isPlayer);
		animation.add('Alive-Polo', [30, 31], 0, false, isPlayer);
		animation.add('Jeevan-Polo', [32, 33], 0, false, isPlayer);
		animation.add('Dystopia-Polo', [38, 39], 0, false, isPlayer);
		animation.add('bf-Com-Manto', [0, 1], 0, false, isPlayer);
		animation.add('LittleMiss-Polo', [36, 37], 0, false, isPlayer);
		animation.add('Alpha-Polo', [34, 35], 0, false, isPlayer);
		animation.add('Ultra-Polo', [36, 37], 0, false, isPlayer);
		animation.add('Final-Polo', [36, 37], 0, false, isPlayer);
		animation.add('exTricky', [40, 41], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
