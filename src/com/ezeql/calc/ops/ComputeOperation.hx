package com.ezeql.calc.ops;
import com.ezeql.calc.core.CalcEngine;

/**
 * ...
 * @author EzeQL
 */

class ComputeOperation implements IOperation
{

	public function new() 
	{
		
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	
	public function compute(engine:CalcEngine):Bool
	{
		if (engine.pendingOperation != null)
		{
			engine.pendingOperation.compute(engine);
			engine.pendingOperation = null;			
			engine.operand = engine.mem;
			//engine.status = CalcEngine.status_result_shown;
			
		}
		return false;
		
	}
	
}