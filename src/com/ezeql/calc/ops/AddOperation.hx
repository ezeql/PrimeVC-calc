package com.ezeql.calc.ops;
import com.ezeql.calc.core.CalcEngine;

/**
 * ...
 * @author EzeQL
 */

class AddOperation implements IOperation
{

	public function new() 
	{
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	
	public function compute(engine:CalcEngine):Bool 
	{

				engine.mem +=  engine.operand;
				engine.operand = 0;
		return true;
	}
	
}