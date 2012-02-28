package com.ezeql.calc.views.mediators;

import com.ezeql.calc.CalcFacade;
import com.ezeql.calc.ops.AddOperation;
import com.ezeql.calc.ops.ClearOperation;
import com.ezeql.calc.ops.ComputeOperation;
import com.ezeql.calc.ops.DiffOperation;
import com.ezeql.calc.ops.DivOperation;
import com.ezeql.calc.ops.IOperation;
import com.ezeql.calc.ops.MultiplyOperation;
import com.ezeql.calc.ops.PushNumberOperation;
import com.ezeql.calc.views.gui.Button;
import com.ezeql.calc.views.gui.ButtonPad;
import primevc.avm2.events.MouseSignal;
import primevc.gui.events.KeyboardEvents;
import primevc.gui.events.MouseEvents;
import primevc.mvc.Mediator;

using Std;
/**
 * ...
 * @author EzeQL
 */

class ButtonPadMediator extends Mediator<CalcFacade,ButtonPad>
{
	private var opsHash:Hash<IOperation>;
    override public function startListening ()
    {
        if (isListening())
            return;
		
        super.startListening();
		
		var aux = gui.numberButtons.copy().concat([gui.clearBtn, gui.computeBtn, gui.plusSignBtn, gui.minusSign,gui.multiplyBtn,gui.divButton]);
		Lambda.map(aux, function(btn) new MouseEvents(btn).click.bind(btn, buttonHumberClickHandler) );
		
		opsHash = new Hash<IOperation>();
		opsHash.set("+", new AddOperation());
		opsHash.set("-", new DiffOperation());
		opsHash.set("=", new ComputeOperation());
		opsHash.set("*", new MultiplyOperation());
		opsHash.set("/", new DivOperation());
		opsHash.set("AC", new ClearOperation());
		for ( i in 0...10) 
		{
			opsHash.set(i.string(), new PushNumberOperation(i));		
		}
			
	
		
    }

	
	private function buttonHumberClickHandler(e) 
	{
		var value = opsHash.get( cast(e.target, Button).text ) ;
		f.events.requestOperation.send( value );
		
		
		
		
	}
	

	
}