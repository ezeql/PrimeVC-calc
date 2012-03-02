package com.ezeql.calc.views.gui;

import flash.display.Sprite;
import flash.events.MouseEvent;

import primevc.gui.components.Panel;

using Std;
/**
 * ...
 * @author EzeQL
 */

class ButtonPad extends Panel
{
	public var multiplyBtn:CalcButton;
	public var minusSign:CalcButton;
	public var divButton:CalcButton;
	public var computeBtn:CalcButton;
	public var clearBtn:CalcButton;
	public var plusSignBtn:CalcButton;
	
	public var numberButtons:Array<CalcButton>;


	override private function createChildren()
	{
		
		plusSignBtn = new CalcButton("btnPlus","+");
		minusSign = new CalcButton("btnMinus","-");
		divButton = new CalcButton("btnDiv","/");
		multiplyBtn = new CalcButton("btnMultiply", "*");
		computeBtn = new CalcButton("computeBtn","=");
		clearBtn = new CalcButton("clearBtn", "AC");
		

		
		
		numberButtons = new Array();
		for (i in 0...10) 
		{
			var nr = (9 - i).string();
			var btn = new CalcButton("btn" + nr, nr);
			attach(btn);
			numberButtons.push(btn);
		}
		
		attach(plusSignBtn);
		attach(minusSign);
		attach(divButton);
		attach(multiplyBtn);
		attach(computeBtn);
		attach(clearBtn);
	}
}