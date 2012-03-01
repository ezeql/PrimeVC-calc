package com.ezeql.calc.views.gui;
import flash.display.Sprite;
import primevc.gui.core.UIWindow;
import primevc.gui.display.Window;

/**
 * ...
 * @author EzeQL
 */

class Calc extends UIWindow 
//class Calc extends Sprite
{
	public var pad:ButtonPad;
	public var display:Display;
	
	override private function createChildren () 
	{
		pad = new ButtonPad();
		display = new Display();
	
		attach(display);
		attach(pad);


	
	}
	
}