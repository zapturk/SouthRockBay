// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ColorVector(r, g, b) constructor{
	red = toShaderValue(r);
	green = toShaderValue(g);
	blue = toShaderValue(b);
	
	static toShaderValue = function(value){
			return value / 255;
	}
}