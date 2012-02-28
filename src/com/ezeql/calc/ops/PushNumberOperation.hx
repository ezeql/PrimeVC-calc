package com.ezeql.calc.ops;
import com.ezeql.calc.core.CalcEngine;

/**
 * ...
 * @author EzeQL
 */

class PushNumberOperation implements IOperation
{
	private var value:Int;
	public function new(val:Int) 
	{
		value = val;
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	
	public function compute(engine:CalcEngine):Bool 
	{
		engine.operand	= engine.operand * 10 + value;
		return true;
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	

	
}