package com.ezeql.calc.views;

import com.ezeql.calc.CalcEvents;
import com.ezeql.calc.core.CalcEngine;
import com.ezeql.calc.ops.IOperation;
import primevc.core.Bindable;
import primevc.mvc.Proxy;
/**
 * ...
 * @author EzeQL
 */

class CalcProxy extends Proxy < Bindable<CalcEngine>, CalcEvents > 
{

	public function new(events) 
	{
		super(events);
		vo = new Bindable<CalcEngine>(new CalcEngine());
	}
	
	public function handleOp(op:IOperation):Void
	{
		
		var aux = vo.clone();
		op.compute(vo.value);
		
		vo.change.send(vo.value, aux.value);
		
		trace("mem: " + vo.value.mem);
		trace("value: " + vo.value.operand);
		
	}

	
}