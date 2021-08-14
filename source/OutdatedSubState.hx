package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		var ver = "v" + Application.current.meta.get('version');
		var txt:FlxText = new FlxText(0, 40, FlxG.width, " Friday Night Funkin vs Incredibox ", 32);
		var txt2:FlxText = new FlxText(0, 70, FlxG.width, " :credits: ", 32);
		var txt3:FlxText = new FlxText(0, 110, FlxG.width, " Programing, Art and vocals by Luiz Phellipe(or SeuPaiGordo on Gamebanana) ", 32);
		var txt4:FlxText = new FlxText(0, 180, FlxG.width, " Incredibox is a game where you can make your own music developed by So Far So Good and I want to highlight the composer of the game, known as Incredible Polo, since the instrumentals in this mod are songs made in Incredibox itself so we can say they were made by Incredible Polo, so here are the credits ", 32);
		var txt5:FlxText = new FlxText(0, 340, FlxG.width, " And another thing of the mod that i have to credit is the song 'Synthwave Little Miss', or the final song of the mod, this song is a synthwave remix of the Incredibox version 2 made by the person with the name of 'BunByun' on Youtube ", 32);
		var txt6:FlxText = new FlxText(0, 470, FlxG.width, " press 'B' on your keyboard to be redirected to the song on YT go there and support him ", 32);
		var txt7:FlxText = new FlxText(0, 580, FlxG.width, " Thanks for downloading the mod! ", 32);
		var txt8:FlxText = new FlxText(0, 610, FlxG.width, " Press 'Enter' or 'ESC' to exit this screen ", 32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt2.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt3.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt4.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt5.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt6.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt7.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt8.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		add(txt);
		add(txt2);
		add(txt3);
		add(txt4);
		add(txt5);
		add(txt6);
		add(txt7);
		add(txt8);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			leftState = true;
			FlxG.switchState(new MainMenuState());
		}
		if (controls.BACK)
		{
			leftState = true;
			FlxG.switchState(new MainMenuState());
		}
		if(FlxG.keys.justPressed.B)
		{
					#if linux
					Sys.command('/usr/bin/xdg-open', ["https://www.youtube.com/watch?v=BEjCeMrdlAU", "&"]);
					#else
					FlxG.openURL('https://www.youtube.com/watch?v=BEjCeMrdlAU');
					#end
		}
		super.update(elapsed);
	}
}
