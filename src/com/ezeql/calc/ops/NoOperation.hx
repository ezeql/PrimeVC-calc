package com.ezeql.calc.ops;
import com.ezeql.calc.core.CalcEngine;

/**
 * ...
 * @author EzeQL
 */

class NoOperation implements IOperation
{

	public function new() 
	{
		
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	
	public function compute(engine:CalcEngine):Bool 
	{
		return false;
	}
	
}