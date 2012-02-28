package com.ezeql.calc;

import com.ezeql.calc.views.CalcProxy;
import primevc.mvc.IMVCCore;
import primevc.mvc.MVCNotifier;




/**
 * ...
 * @author EzeQL
 */

class CalcModel  extends MVCNotifier, implements IMVCCore
{
	public var calcProxy(default, null):CalcProxy;

	public function new() 
	{
		super();
	}
	
	public function init(events)
	{
		calcProxy = new CalcProxy(events);
	}
	
}