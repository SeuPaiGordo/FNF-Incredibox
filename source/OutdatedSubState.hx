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

	var Preto:FlxSprite;

	public var txtEn:FlxText;
	public var txt2En:FlxText;
	public var txt3En:FlxText;
	public var txt4En:FlxText;
	public var txt5En:FlxText;
	public var txt6En:FlxText;
	public var txt7En:FlxText;
	public var txt8En:FlxText;
	public var txt9En:FlxText;

	public var txtBr:FlxText;
	public var txt2Br:FlxText;
	public var txt3Br:FlxText;
	public var txt4Br:FlxText;
	public var txt5Br:FlxText;
	public var txt6Br:FlxText;
	public var txt7Br:FlxText;
	public var txt8Br:FlxText;
	public var txt9Br:FlxText;


	//public var ptbr:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		var ver = "v" + Application.current.meta.get('version');

		Preto = new FlxSprite(-200, -200).makeGraphic(Std.int(FlxG.width * 2), Std.int(FlxG.height * 2), FlxColor.BLACK);

		txtEn = new FlxText(0, 40, FlxG.width, " Friday Night Funkin vs Incredibox ", 32);
		txt2En = new FlxText(0, 70, FlxG.width, " :credits: ", 32);
		txt3En = new FlxText(0, 110, FlxG.width, " Programing, Art and vocals by Luiz Phellipe(or SeuPaiGordo on Gamebanana) ", 32);
		txt4En = new FlxText(0, 180, FlxG.width, " Incredibox is a game where you can make your own music developed by So Far So Good and I want to highlight the composer of the game, known as Incredible Polo, since the instrumentals in this mod are songs made in Incredibox itself so we can say they were made by Incredible Polo, so here are the credits ", 32);
		txt5En = new FlxText(0, 340, FlxG.width, " And another thing of the mod that i have to credit is the song 'Synthwave Little Miss', or the final song of the mod, this song is a synthwave remix of the Incredibox version 2 made by the person with the name of 'BunByun' on Youtube ", 32);
		txt6En = new FlxText(0, 470, FlxG.width, " press 'B' on your keyboard to be redirected to the song on YT go there and support him ", 32);
		txt7En = new FlxText(0, 580, FlxG.width, " Thanks for downloading the mod! ", 32);
		txt8En = new FlxText(0, 610, FlxG.width, " Press 'Enter' or 'ESC' to exit this screen ", 32);
		txt9En = new FlxText(0, 8, FlxG.width, " Press 'P' to change the language ", 18);
		txtEn.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt2En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt3En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt4En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt5En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt6En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt7En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt8En.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt9En.setFormat("VCR OSD Mono", 32, FlxColor.GREEN, CENTER);
		add(txtEn);
		add(txt2En);
		add(txt3En);
		add(txt4En);
		add(txt5En);
		add(txt6En);
		add(txt7En);
		add(txt8En);
		add(txt9En);

		txtBr = new FlxText(0, 40, FlxG.width, " Friday Night Funkin vs Incredibox ", 32);
		txt2Br = new FlxText(0, 70, FlxG.width, " :créditos: ", 32);
		txt3Br = new FlxText(0, 110, FlxG.width, " Programação, Arte e vocais por Luiz Phellipe(ou SeuPaiGordo no Gamebanana) ", 32);
		txt4Br = new FlxText(0, 180, FlxG.width, " Incredibox é um jogo onde você faz sua própria música desenvolvido pela So Far So Good e eu quero destacar o compositor do jogo, conhecido como Incredible Polo, já que os instrumentais das músicas foram feitos no próprio Incredibox então na teoria foram feitas pelo Incredible Polo, então eis os créditos ", 32);
		txt5Br = new FlxText(0, 340, FlxG.width, " E outra coisa que eu preciso dar crédito é a música 'Synthwave Little Miss', a música final do mod, essa música é um remix Synthwave da versão 2 do Incredibox feito pela pessoa com o nome de 'BunByun' no Youtube ", 32);
		txt6Br = new FlxText(0, 470, FlxG.width, " aperte 'B' no seu teclado para ser redirecionado á música no YT vai lá e dê uma força ao cara ", 32);
		txt7Br = new FlxText(0, 580, FlxG.width, " Obrigado por baixar o mod! ", 32);
		txt8Br = new FlxText(0, 610, FlxG.width, " Aperte 'Enter' ou 'ESC' pra sair dessa tela ", 32);
		txt9Br = new FlxText(0, 8, FlxG.width, " Aperte 'P' para mudar o idioma ", 18);
		txtBr.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt2Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt3Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt4Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt5Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt6Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt7Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt8Br.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt9Br.setFormat("VCR OSD Mono", 32, FlxColor.GREEN, CENTER);
		add(txtBr);
		add(txt2Br);
		add(txt3Br);
		add(txt4Br);
		add(txt5Br);
		add(txt6Br);
		add(txt7Br);
		add(txt8Br);
		add(txt9Br);
	}

	override function update(elapsed:Float)
	{
		Preto.alpha -= 0.3;

		if(FlxG.keys.justPressed.P)
		{
			FlxG.save.data.traduzido =! FlxG.save.data.traduzido;
			Preto.alpha = 1;
		}

		if(FlxG.save.data.traduzido)
		{
			txtEn.visible = false;
			txt2En.visible = false;
			txt3En.visible = false;
			txt4En.visible = false;
			txt5En.visible = false;
			txt6En.visible = false;
			txt7En.visible = false;
			txt8En.visible = false;
			txt9En.visible = false;

			txtBr.visible = true;
			txt2Br.visible = true;
			txt3Br.visible = true;
			txt4Br.visible = true;
			txt5Br.visible = true;
			txt6Br.visible = true;
			txt7Br.visible = true;
			txt8Br.visible = true;
			txt9Br.visible = true;
		}else{
			txtEn.visible = true;
			txt2En.visible = true;
			txt3En.visible = true;
			txt4En.visible = true;
			txt5En.visible = true;
			txt6En.visible = true;
			txt7En.visible = true;
			txt8En.visible = true;
			txt9En.visible = true;

			txtBr.visible = false;
			txt2Br.visible = false;
			txt3Br.visible = false;
			txt4Br.visible = false;
			txt5Br.visible = false;
			txt6Br.visible = false;
			txt7Br.visible = false;
			txt8Br.visible = false;
			txt9Br.visible = false;
		}

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
