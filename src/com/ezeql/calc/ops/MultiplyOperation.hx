package com.ezeql.calc.ops;
import com.ezeql.calc.core.CalcEngine;

/**
 * ...
 * @author EzeQL
 */

class MultiplyOperation implements IOperation
{

	public function new() 
	{
		
	}
	
	/* INTERFACE com.ezeql.calc.ops.IOperation */
	
	public function compute(engine:CalcEngine):Bool 
	{
		if (engine.pendingOperation != null)
		{
			if ( Std.is(engine.pendingOperation , MultiplyOperation) )
			{
				engine.mem *=  engine.operand;
				engine.operand = 0;

			}
			else
			{
				engine.pendingOperation.compute(engine);
				engine.pendingOperation = this;
			}
		}
		else
		{
			engine.pendingOperation = this;
			engine.mem = engine.operand;
			engine.operand = 0;
		}
		return true;
	}
	
	
	
}