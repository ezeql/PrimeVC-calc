package com.ezeql.calc.views.gui;

import flash.text.TextField;
import flash.display.Sprite;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;
import primevc.gui.components.Panel;
import primevc.gui.core.UITextField;
//import primevc.gui.core.UITextField;

/**
 * ...
 * @author EzeQL
 */

class Display extends Panel
{
	//public var tf:TextField;
	public var tf:UITextField;
	
	public function new() 
	{
		super();
	}
	
	override private function createChildren() 
	{
		tf = new UITextField("display");
		attach(tf);
		tf.text = "0";
	}
}