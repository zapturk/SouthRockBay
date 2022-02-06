// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initCharSprites(){
	// Skin colors
	global.SkinColorValue[skinColors.char1][0] = new ColorVector(94, 76, 65);
	global.SkinColorValue[skinColors.char1][1] = new ColorVector(80, 62, 57);
	global.SkinColorValue[skinColors.char1][2] = new ColorVector(70, 53, 51);
	global.SkinColorValue[skinColors.char1][3] = new ColorVector(61, 46, 46);
	global.SkinColorValue[skinColors.char1][4] = new ColorVector(54, 41, 42);
	global.SkinColorValue[skinColors.char1][5] = new ColorVector(49, 38, 39);
	
	// set all walking 
	global.WalkingSprtie[directions.up] = sWalkUp;
	global.WalkingSprtie[directions.right] = sWalkRight; 
	global.WalkingSprtie[directions.down] = sWalkDown;
	global.WalkingSprtie[directions.left] = sWalkLeft; 
	
	// set all Axe 
	global.AxeSprtie[directions.up] = sAxeUp;
	global.AxeSprtie[directions.right] = sAxeRight; 
	global.AxeSprtie[directions.down] = sAxeDown;
	global.AxeSprtie[directions.left] = sAxeLeft; 

	//// set all Axe 
	//global.WalkingSprtie[directions.up] = sAxeUp;
	//global.WalkingSprtie[directions.right] = sAxeRight; 
	//global.WalkingSprtie[directions.down] = sAxeDown;
	//global.WalkingSprtie[directions.left] = sAxeLeft; 

	// set up fishing
	global.FishSprtie[directions.up] = sFishUp;
	global.FishSprtie[directions.right] = sFishRight; 
	global.FishSprtie[directions.down] = sFishDown;
	global.FishSprtie[directions.left] = sFishLeft; 
}