package ;

import com.ezeql.calc.CalcFacade;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.Lib;

/**
 * ...
 * @author EzeQL
 */

class Main 
{
	
	static function main() 
	{
		var stage = Lib.current.stage;
		stage.scaleMode = StageScaleMode.NO_SCALE;
		stage.align = StageAlign.TOP_LEFT;
		// entry point
		
		var f = new CalcFacade();
		f.start();

		
		
	}
	
}