package com.ezeql.calc.views.gui;

import flash.text.TextField;
import flash.display.Sprite;
import flash.text.TextFieldAutoSize;
//import primevc.gui.core.UITextField;

/**
 * ...
 * @author EzeQL
 */

class Display extends Sprite
{
	public var tf:TextField;
	//public var tf:UITextField;
	
	public function new() 
	{
		super();
		draw();
	}
	
	private function draw() 
	{
		graphics.beginFill(0x607760, 1);
		graphics.drawRect(0, 0, 200, 40);
		graphics.endFill();
		
		//tf = new UITextField();
		tf = new TextField();
		tf.width = width;
		tf.height = height;
		tf.selectable = false;
		
		tf.autoSize = TextFieldAutoSize.RIGHT;
		var textFormat = tf.defaultTextFormat;
		textFormat.size = 30;
		tf.defaultTextFormat = textFormat;
		
	
		addChild(tf);
	}
	
}