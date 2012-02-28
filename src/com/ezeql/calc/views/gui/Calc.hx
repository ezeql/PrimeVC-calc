package com.ezeql.calc.views.gui;
import flash.display.Sprite;

/**
 * ...
 * @author EzeQL
 */

class Calc extends Sprite
{
	public var pad:ButtonPad;
	public var display:Display;

	public function new() 
	{
		super();
		
		pad = new ButtonPad();
		display = new Display();
		
		addChild(pad);
		addChild(display);
	}
}