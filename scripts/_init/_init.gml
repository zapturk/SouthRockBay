// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _init(){
	gml_pragma("global", "_init()");
	
	// Enums
	enum playerStates {
		idle,
		walking,
		startFishing,
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
	
	enum skinColors {
		char1,
		char2,
		char3,
		char4,
		char5,
		char6,
		char7,
		char8
	}
	
	enum hair {
		braids,
		buzzcut,
		curly,
		emo,
		extraLong,
		frenchCurl,
		gentleman,
		midiwave,
		spaceBuns,
		wavy
	}
	
	enum hairColors {
		black,
		blonde,
		brown,
		lightBrown,
		copper,
		emerald,
		green,
		gray,
		lilac,
		navy,
		pink,
		purple,
		red,
		turquoise
	}

	initCharSprites();
	initHairSprites();
	initToolSptites();

}