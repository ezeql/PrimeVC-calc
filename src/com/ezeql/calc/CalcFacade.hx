package com.ezeql.calc;


import primevc.core.traits.IDisposable;
import primevc.mvc.Facade;
/**
 * ...
 * @author EzeQL
 */

 //class Facade<EventsType:Signals, ModelType:IMVCCore, StatesType:IDisposable, ControllerType:IMVCCoreActor, ViewType:IMVCCoreActor> implements IDisposable
 class CalcFacade extends Facade < CalcEvents, CalcModel, IDisposable, CalcController, CalcAppView >
{

	public function new() 
	{
		super();
	}
	
	override private function setupModel ()			{ model			= new CalcModel(); } 
    override private function setupEvents ()		{ events		= new CalcEvents(); } 
    override private function setupView ()			{ view			= new CalcAppView(this); }
    override private function setupController ()	{ controller	= new CalcController(this); }

	
}