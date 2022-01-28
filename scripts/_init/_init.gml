// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _init(){
	gml_pragma("global", "_init()");
	
	// Enums
	enum playerStates {
		idle,
		walking,
		fishing,
		mining,
		chopping
	}
	
	enum directions{
		up,
		right,
		down,
		left
	}


}