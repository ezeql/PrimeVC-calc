package com.ezeql.calc.views.gui;


//import com.ezeql.calc.events.CalcButtonEvent;
//import hsl.haxe.data.mouse.MouseCondition;
//import hsl.haxe.Signaler;
import flash.display.Sprite;
//import com.ezeql.calc.gui.Button;
import flash.events.MouseEvent;



using Std;
//using hsl.avm2.plugins.MouseShortcuts;
/**
 * ...
 * @author EzeQL
 */

class ButtonPad extends Sprite
{
	public var multiplyBtn:Button;
	public var minusSign:Button;
	public var divButton:Button;
	public var computeBtn:Button;
	public var clearBtn:Button;
	public var plusSignBtn:Button;
	
	public var numberButtons:Array<Button>;
	static public inline var VERTICAL_SEP:Int = 5;
	static public inline var HORIZONTAL_SEP:Int = 5;
	static public inline var ITEMS_PER_LINE:Int = 3;

	//public var buttonPressedSignal(getButtonPressedSignal, null):hsl.haxe.si
	//public var operationPressedSignal(default, null):Signaler<String>;
	//public var digitPressedSignal(default, null):Signaler<String>;
	
	public function new() 
	{
		super();
		//operationPressedSignal = new hsl.haxe.DirectSignaler(this);
		//digitPressedSignal = new hsl.haxe.DirectSignaler(this);
		this.name = "buttonPad";
		numberButtons = new Array();
		for (i in 0...10) 
		{
			var btn = new Button();
			addChild(btn);
			btn.name = "btn" + (9 - i).string();
			btn.text = (9 - i).string();
			btn.x = (ITEMS_PER_LINE-1) * (btn.width + HORIZONTAL_SEP) - (btn.width + HORIZONTAL_SEP) * (i % ITEMS_PER_LINE);
			btn.y = 50 + (btn.width + VERTICAL_SEP) * (i / ITEMS_PER_LINE).int();
			if (i == 9) btn.x = 0;
			numberButtons.push(btn);
		}
		
		plusSignBtn = new Button();
		addChild(plusSignBtn);
		plusSignBtn.name = "btnPlus";
		plusSignBtn.text = "+";
		plusSignBtn.x = 200;
		plusSignBtn.y = 50;
		
		
		minusSign = new Button();
		addChild(minusSign);
		minusSign.name = "btnMinus";
		minusSign.text = "-";
		minusSign.x = 250;
		minusSign.y = 50;
		
		divButton = new Button();
		addChild(divButton);
		divButton.name = "btnDiv";
		divButton.text = "/";
		divButton.x = 250;
		divButton.y = 100;
		
		multiplyBtn = new Button();
		addChild(multiplyBtn);
		multiplyBtn.name = "btnMultiply";
		multiplyBtn.text = "*";
		multiplyBtn.x = 200;
		multiplyBtn.y = 100;
		
		computeBtn = new Button();
		addChild(computeBtn);
		computeBtn.name = "computeBtn";
		computeBtn.text = "=";
		computeBtn.x = 250;
		computeBtn.y = 200;
	
		clearBtn = new Button();
		addChild(clearBtn);
		clearBtn.name = "clearBtn";
		clearBtn.text = "AC";
		clearBtn.x = 200;
		clearBtn.y = 200;
	}


	
}