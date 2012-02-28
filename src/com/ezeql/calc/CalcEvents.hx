package com.ezeql.calc;
import com.ezeql.calc.ops.IOperation;
import primevc.core.dispatcher.Signal1;
import primevc.core.dispatcher.Signals;

/**
 * ...
 * @author EzeQL
 */

class CalcEvents extends Signals
{
	public var requestOperation:Signal1<IOperation>;

	public function new() 
	{
		super();
		requestOperation = new Signal1();
	}
	
}