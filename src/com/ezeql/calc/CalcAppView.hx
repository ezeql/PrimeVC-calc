package com.ezeql.calc;

import com.ezeql.calc.views.gui.ButtonPad;
import com.ezeql.calc.views.gui.Calc;
import com.ezeql.calc.views.gui.Display;
import com.ezeql.calc.views.mediators.ButtonPadMediator;
import com.ezeql.calc.views.mediators.DisplayMediator;
import flash.display.Stage;
import flash.Lib;
import primevc.mvc.MVCActor;
import primevc.mvc.IMVCCoreActor;
/**
 * ...
 * @author EzeQL
 */

class CalcAppView extends MVCActor<CalcFacade>, implements IMVCCoreActor
{
	private var stage:Stage;
	
	public var calc:Calc;
	public var buttonPadMediator:ButtonPadMediator;
	public var displayMediator:DisplayMediator;
	
	public function new(facade:CalcFacade, enabled = true) 
	{
		super(facade);
		stage = Lib.current.stage;
		
		calc = new Calc();
		stage.addChild(calc);
		
		buttonPadMediator = new ButtonPadMediator(facade, true, calc.pad);
		displayMediator = new DisplayMediator(facade, true, calc.display);
		
	}
	
}