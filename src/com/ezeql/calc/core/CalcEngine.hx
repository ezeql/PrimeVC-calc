package com.ezeql.calc.core;
import com.ezeql.calc.ops.IOperation;
import haxe.Int32;
import haxe.Int64;
using Std;
/**
 * ...
 * @author EzeQL
 */


typedef CalcValue = Float;
class CalcEngine 
{

	public var display(getDiplay, null):String;

	public var mem:CalcValue;
	
	public var operand:CalcValue;
	
	public var pendingOperation:IOperation;
	
	
	public function new() 
	{
		mem = operand = 0;
	}

	public function clearAll():Void
	{
		mem = operand = 0;
		pendingOperation = null;
	}
	
	private function getDiplay():String
	{
		return operand.string();
		
	}
}