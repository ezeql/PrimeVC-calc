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
		f.model.calcProxy.handleOp(operation);
		
	}

	
	
	
}