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

	public function new(stage) 
	{
		super(stage);
		
		pad = new ButtonPad();
		display = new Display();
		//
		//addChild(pad);
		//addChild(display);
	}
	
	
	override private function createChildren () 
	{
		//attach(pad);
		//attach(pad);
		
	
	}
	
}