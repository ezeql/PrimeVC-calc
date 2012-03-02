package com.ezeql.calc;
import com.ezeql.calc.ops.IOperation;
import primevc.mvc.IMVCCoreActor;
import primevc.mvc.MVCActor;

/**
 * ...
 * @author EzeQL
 */

class CalcController  extends MVCActor<CalcFacade>, implements IMVCCoreActor
{

	public function new(facade:CalcFacade) 
	{
		super(facade);
		f.model.init(f.events);
		f.events.requestOperation.bind(this, handleReqOperation);
		
	}
	
	private function handleReqOperation(operation:IOperation)
	{
		var engine = f.model.calcProxy.vo.value;
		
		var oldOp = engine.pendingOperation;
		if (oldOp != null)
		{
			//trace(1);
			//oldOp.compute(engine);
			f.model.calcProxy.handleOp(operation);
			engine.pendingOperation = operation;
		}
		else
		{
			//trace(2);
			engine.pendingOperation = operation;
			engine.mem = engine.operand;
			engine.operand = 0;
		}
		
		
		
	}

	
	
	
}