package com.ezeql.calc.views.mediators;

import com.ezeql.calc.CalcFacade;
import com.ezeql.calc.views.gui.Display;
import primevc.mvc.Mediator;
/**
 * ...
 * @author EzeQL
 */

class DisplayMediator extends Mediator<CalcFacade,Display>
{

	override function startListening()
	{
		 if (isListening())
            return;
		
        super.startListening();
		
		f.model.calcProxy.vo.change.observe(this, handleDisplayChange);
		
	
	}
	
	private function handleDisplayChange() 
	{
		gui.tf.text = f.model.calcProxy.vo.value.display;
	}
}