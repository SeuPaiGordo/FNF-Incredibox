package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.text.FlxTypeText;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxSpriteGroup;
import flixel.input.FlxKeyManager;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

using StringTools;

class DialogueBox extends FlxSpriteGroup
{
	var box:FlxSprite;

	var curCharacter:String = '';

	var dialogue:Alphabet;
	var dialogueList:Array<String> = [];

	// SECOND DIALOGUE FOR THE PIXEL SHIT INSTEAD???
	var swagDialogue:FlxTypeText;

	var dropText:FlxText;
	var pressZ:FlxText;

	public var finishThing:Void->Void;

	var portraitLeft:FlxSprite;
	var portraitRight:FlxSprite;
	var dialogPolo:FlxSprite;
	var bfNormal:FlxSprite;
	var bfShit:FlxSprite;

	var handSelect:FlxSprite;
	var bgFade:FlxSprite;

	public function new(talkingRight:Bool = true, ?dialogueList:Array<String>)
	{
		super();

		switch (PlayState.SONG.song.toLowerCase())
		{
			case 'senpai':
				FlxG.sound.playMusic(Paths.music('Lunchbox'), 0);
				FlxG.sound.music.fadeIn(1, 0, 0.8);
			case 'thorns':
				FlxG.sound.playMusic(Paths.music('LunchboxScary'), 0);
				FlxG.sound.music.fadeIn(1, 0, 0.8);
			//case 'alpha':
				//FlxG.sound.playMusic(Paths.music('Lunchbox'), 0);
				//FlxG.sound.music.fadeIn(1, 0, 0.8);
		}

		bgFade = new FlxSprite(-200, -200).makeGraphic(Std.int(FlxG.width * 1.3), Std.int(FlxG.height * 1.3), 0xFFB3DFd8);
		bgFade.scrollFactor.set();
		bgFade.alpha = 0;
		add(bgFade);

		new FlxTimer().start(0.83, function(tmr:FlxTimer)
		{
			bgFade.alpha += (1 / 5) * 0.7;
			if (bgFade.alpha > 0.7)
				bgFade.alpha = 0.7;
		}, 5);

		box = new FlxSprite(-20, 45);
		
		var hasDialog = false;
		switch (PlayState.SONG.song.toLowerCase())
		{
			case 'senpai':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-pixel');
				box.animation.addByPrefix('normalOpen', 'Text Box Appear', 24, false);
				box.animation.addByIndices('normal', 'Text Box Appear', [4], "", 24);
			case 'roses':
				hasDialog = true;
				FlxG.sound.play(Paths.sound('ANGRY_TEXT_BOX'));

				box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-senpaiMad');
				box.animation.addByPrefix('normalOpen', 'SENPAI ANGRY IMPACT SPEECH', 24, false);
				box.animation.addByIndices('normal', 'SENPAI ANGRY IMPACT SPEECH', [4], "", 24);

			case 'thorns':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('weeb/pixelUI/dialogueBox-evil');
				box.animation.addByPrefix('normalOpen', 'Spirit Textbox spawn', 24, false);
				box.animation.addByIndices('normal', 'Spirit Textbox spawn', [11], "", 24);

				var face:FlxSprite = new FlxSprite(320, 170).loadGraphic(Paths.image('weeb/spiritFaceForward'));
				face.setGraphicSize(Std.int(face.width * 6));
				add(face);
			case 'alpha':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'little-miss':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'sunrise':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'the-love':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'brazil':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'alive':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'jeevan':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'dystopia':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
			case 'synthwave-little-miss':
				hasDialog = true;
				box.frames = Paths.getSparrowAtlas('fotinhas/dialoguebox');
				box.animation.addByPrefix('normalOpen', 'dialoguebox', 24, false);
				box.animation.addByPrefix('normal', 'dialoguebox', 24, false);
				box.x = 4.3;
				box.y = 453.45;
		}

		this.dialogueList = dialogueList;
		
		if (!hasDialog)
			return;
		
		if (PlayState.SONG.song.toLowerCase() == 'senpai' || PlayState.SONG.song.toLowerCase() == 'roses' || PlayState.SONG.song.toLowerCase() == 'thorns')
		{
			portraitLeft = new FlxSprite(-20, 40);
			portraitLeft.frames = Paths.getSparrowAtlas('weeb/senpaiPortrait');
			portraitLeft.animation.addByPrefix('enter', 'Senpai Portrait Enter', 24, false);
			portraitLeft.setGraphicSize(Std.int(portraitLeft.width * PlayState.daPixelZoom * 0.9));
			portraitLeft.updateHitbox();
			portraitLeft.scrollFactor.set();
			add(portraitLeft);
			portraitLeft.visible = false;
		}
		
		if (PlayState.SONG.song.toLowerCase() == 'alpha' || PlayState.SONG.song.toLowerCase() == 'little-miss' || PlayState.SONG.song.toLowerCase() == 'sunrise' || PlayState.SONG.song.toLowerCase() == 'the-love' || PlayState.SONG.song.toLowerCase() == 'brazil' || PlayState.SONG.song.toLowerCase() == 'alive' || PlayState.SONG.song.toLowerCase() == 'jeevan' || PlayState.SONG.song.toLowerCase() == 'dystopia' || PlayState.SONG.song.toLowerCase() == 'synthwave-little-miss')
		{
			dialogPolo = new FlxSprite(68, 185);
			dialogPolo.frames = Paths.getSparrowAtlas('fotinhas/Fotos');
			dialogPolo.animation.addByPrefix('normal', 'PoloNormal', 24);
			dialogPolo.animation.addByPrefix('assustado', 'PoloAssustado', 24);
			dialogPolo.animation.addByPrefix('atento', 'PoloAtento', 24);
			dialogPolo.animation.addByPrefix('deboche', 'PoloDeboche', 24);
			dialogPolo.animation.addByPrefix('duvida', 'PoloDuvida', 24);
			dialogPolo.animation.addByPrefix('feliz', 'PoloFeliz', 24);
			dialogPolo.animation.addByPrefix('tedio', 'PoloTedio', 24);
			dialogPolo.animation.addByPrefix('v2normal', 'PoloV2Normal', 24);
			dialogPolo.animation.addByPrefix('v2feliz', 'PoloV2Feliz', 24);
			dialogPolo.animation.addByPrefix('v2final1', 'PoloV2Final1', 24);
			dialogPolo.animation.addByPrefix('v2final2', 'PoloV2Final2', 24);
			dialogPolo.animation.addByPrefix('v3', 'PoloV3', 24);
			dialogPolo.animation.addByPrefix('v4feliz', 'PoloV4Feliz', 24);
			dialogPolo.animation.addByPrefix('v4normal', 'PoloV4Normal', 24);
			dialogPolo.animation.addByPrefix('v4preocupado', 'PoloV4precupads', 24);
			dialogPolo.animation.addByPrefix('v5assustado', 'PoloV5Assustado', 24);
			dialogPolo.animation.addByPrefix('v5feliz', 'PoloV5Feliz', 24);
			dialogPolo.animation.addByPrefix('v5normal', 'PoloV5Normal', 24);
			dialogPolo.animation.addByPrefix('v6', 'PoloV6', 24);
			dialogPolo.animation.addByPrefix('v7feliz', 'PoloV7Feliz', 24);
			dialogPolo.animation.addByPrefix('v7normal', 'PoloV7Normal', 24);
			dialogPolo.animation.addByPrefix('v8assustado', 'PoloV8Assustado', 24);
			dialogPolo.animation.addByPrefix('v8feliz', 'PoloV8Feliz', 24);
			dialogPolo.animation.addByPrefix('v8normal', 'PoloV8Normal', 24);
			dialogPolo.antialiasing = true;
			dialogPolo.updateHitbox();
			add(dialogPolo);
			dialogPolo.alpha = 0;
		}

		if (PlayState.SONG.song.toLowerCase() == 'senpai' || PlayState.SONG.song.toLowerCase() == 'roses' || PlayState.SONG.song.toLowerCase() == 'thorns')
		{
			portraitRight = new FlxSprite(0, 40);
			portraitRight.frames = Paths.getSparrowAtlas('weeb/bfPortrait');
			portraitRight.animation.addByPrefix('enter', 'Boyfriend portrait enter', 24, false);
			portraitRight.setGraphicSize(Std.int(portraitRight.width * PlayState.daPixelZoom * 0.9));
			portraitRight.updateHitbox();
			portraitRight.scrollFactor.set();
			add(portraitRight);
			portraitRight.visible = false;
		}

		if (PlayState.SONG.song.toLowerCase() == 'alpha' || PlayState.SONG.song.toLowerCase() == 'little-miss' || PlayState.SONG.song.toLowerCase() == 'sunrise' || PlayState.SONG.song.toLowerCase() == 'the-love' || PlayState.SONG.song.toLowerCase() == 'brazil' || PlayState.SONG.song.toLowerCase() == 'alive' || PlayState.SONG.song.toLowerCase() == 'jeevan' || PlayState.SONG.song.toLowerCase() == 'dystopia' || PlayState.SONG.song.toLowerCase() == 'synthwave-little-miss')
		{
			bfNormal = new FlxSprite(905, 217);
			bfNormal.frames = Paths.getSparrowAtlas('fotinhas/Fotos');
			bfNormal.animation.addByPrefix('normal', 'bfNormal', 24);
			bfNormal.animation.addByPrefix('shit', 'bfShit', 24);
			bfNormal.animation.addByPrefix('gf', 'GF', 24);
			bfNormal.antialiasing = true;
			bfNormal.updateHitbox();
			add(bfNormal);
			bfNormal.alpha = 0;

		}
		
		box.animation.play('normalOpen');
		box.setGraphicSize(Std.int(box.width * PlayState.daPixelZoom * 0.9));
		box.updateHitbox();
		add(box);

		box.screenCenter(X);
		//portraitLeft.screenCenter(X);
		//dialogPolo.screenCenter(X);

		handSelect = new FlxSprite(FlxG.width * 0.9, FlxG.height * 0.9).loadGraphic(Paths.image('weeb/pixelUI/hand_textbox'));
		add(handSelect);
		
		pressZ = new FlxText(10, 670, Std.int(FlxG.width * 0.9), "", 32);
		pressZ.font = 'Arial 11 Bold';
		pressZ.color = FlxColor.BLACK;
		pressZ.text = 'Press Z to skip dialogue';
		add(pressZ);


		if (!talkingRight)
		{
			// box.flipX = true;
		}

		dropText = new FlxText(242, 502, Std.int(FlxG.width * 0.6), "", 32);
		dropText.font = 'Pixel Arial 11 Bold';
		dropText.color = 0xFFD89494;
		add(dropText);

		swagDialogue = new FlxTypeText(240, 500, Std.int(FlxG.width * 0.6), "", 32);
		swagDialogue.font = 'Pixel Arial 11 Bold';
		swagDialogue.color = 0xFF3F2021;
		swagDialogue.sounds = [FlxG.sound.load(Paths.sound('pixelText'), 0.6)];
		add(swagDialogue);

		dialogue = new Alphabet(0, 80, "", false, true);
		// dialogue.x = 90;
		// add(dialogue);
	}

	var dialogueOpened:Bool = false;
	var dialogueStarted:Bool = false;

	override function update(elapsed:Float)
	{
		// HARD CODING CUZ IM STUPDI
		//if (PlayState.SONG.song.toLowerCase() == 'roses')
			//portraitLeft.visible = false;
		//if (PlayState.SONG.song.toLowerCase() == 'thorns')
		//{
			//portraitLeft.color = FlxColor.BLACK;
			//swagDialogue.color = FlxColor.WHITE;
			//dropText.color = FlxColor.BLACK;
		//}

		dropText.text = swagDialogue.text;

		if (box.animation.curAnim != null)
		{
			if (box.animation.curAnim.name == 'normalOpen' && box.animation.curAnim.finished)
			{
				box.animation.play('normal');
				dialogueOpened = true;
			}
		}

		if (dialogueOpened && !dialogueStarted)
		{
			startDialogue();
			dialogueStarted = true;
		}

		if (FlxG.keys.justPressed.ANY  && dialogueStarted == true)
		{
			remove(dialogue);
				
			FlxG.sound.play(Paths.sound('clickText'), 0.8);

			if (dialogueList[1] == null && dialogueList[0] != null || FlxG.keys.justPressed.Z)
			{
				if (!isEnding)
				{
					isEnding = true;

					if (PlayState.SONG.song.toLowerCase() == 'senpai' || PlayState.SONG.song.toLowerCase() == 'thorns')
						FlxG.sound.music.fadeOut(2.2, 0);

					new FlxTimer().start(0.2, function(tmr:FlxTimer)
					{
						box.alpha -= 1 / 5;
						bgFade.alpha -= 1 / 5 * 0.7;
						//portraitLeft.visible = false;
						//portraitRight.visible = false;
						bfNormal.visible = false;
						dialogPolo.visible = false;
						swagDialogue.alpha -= 1 / 5;
						dropText.alpha = swagDialogue.alpha;
					}, 5);

					new FlxTimer().start(1.2, function(tmr:FlxTimer)
					{
						finishThing();
						kill();
					});
				}
			}
			else
			{
				dialogueList.remove(dialogueList[0]);
				startDialogue();
			}
		}
		
		super.update(elapsed);
	}

	var isEnding:Bool = false;

	function startDialogue():Void
	{
		cleanDialog();
		// var theDialog:Alphabet = new Alphabet(0, 70, dialogueList[0], false, true);
		// dialogue = theDialog;
		// add(theDialog);

		// swagDialogue.text = ;
		swagDialogue.resetText(dialogueList[0]);
		swagDialogue.start(0.04, true);

		switch (curCharacter)
		{
			case 'dad':
				portraitRight.visible = false;
				if (!portraitLeft.visible)
				{
					portraitLeft.visible = true;
					portraitLeft.animation.play('enter');
				}
			case 'bf':
				portraitLeft.visible = false;
				if (!portraitRight.visible)
				{
					portraitRight.visible = true;
					portraitRight.animation.play('enter');
				}
			case 'bfNormal':
				dialogPolo.alpha = 0;
				bfNormal.alpha = 100;
				bfNormal.animation.play('normal');

			case 'bfShit':
				dialogPolo.alpha = 0;
				bfNormal.alpha = 100;
				bfNormal.animation.play('shit');

			case 'gf':
				dialogPolo.alpha = 0;
				bfNormal.alpha = 100;
				bfNormal.animation.play('gf');


			case 'PoloNormal':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('normal');

			case 'PoloAssustado':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('assustado');
				
			case 'PoloAtento':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('atento');
				
			case 'PoloDeboche':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('deboche');
				
			case 'PoloDuvida':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('duvida');
				
			case 'PoloFeliz':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('feliz');
				
			case 'PoloTedio':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('tedio');
				
			case 'v2feliz':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v2feliz');
				
			case 'v2finalraiva':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v2final1');
				
			case 'v2final':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v2final2');
				
			case 'v2normal':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v2normal');
				
			case 'v3':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v3');
				
			case 'v4feliz':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v4feliz');
				
			case 'v4normal':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v4normal');
				
			case 'v4preocupado':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v4preocupado');
				
			case 'v5assustado':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v5assustado');
				
			case 'v5feliz':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v5feliz');
				
			case 'v5normal':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v5normal');
				
			case 'v6':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v6');
				
			case 'v7feliz':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v7feliz');
				
			case 'v7normal':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v7normal');
				
			case 'v8assustado':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v8assustado');
				
			case 'v8feliz':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v8feliz');
				
			case 'v8normal':
				bfNormal.alpha = 0;
				dialogPolo.alpha = 100;
				dialogPolo.animation.play('v8normal');
				
		}
	}

	function cleanDialog():Void
	{
		var splitName:Array<String> = dialogueList[0].split(":");
		curCharacter = splitName[1];
		dialogueList[0] = dialogueList[0].substr(splitName[1].length + 2).trim();
	}
}
