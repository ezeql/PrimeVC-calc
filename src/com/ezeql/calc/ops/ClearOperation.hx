package com.ezeql.calc.ops;
import com.ezeql.calc.core.CalcEngine;

/**
 * ...
 * @author EzeQL
 */

class ClearOperation implements IOperation
{

	public function new() 
	{
		
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	
	public function compute(engine:CalcEngine):Bool 
	{
		engine.clearAll();
		return true;
	}
	
}