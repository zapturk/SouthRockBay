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
	
	// set all idle 
	global.PlayerSprtie[playerStates.idle][directions.up] = sWalkUp;
	global.PlayerSprtie[playerStates.idle][directions.right] = sWalkRight; 
	global.PlayerSprtie[playerStates.idle][directions.down] = sWalkDown;
	global.PlayerSprtie[playerStates.idle][directions.left] = sWalkLeft;
	
	// set all walking 
	global.PlayerSprtie[playerStates.walking][directions.up] = sWalkUp;
	global.PlayerSprtie[playerStates.walking][directions.right] = sWalkRight; 
	global.PlayerSprtie[playerStates.walking][directions.down] = sWalkDown;
	global.PlayerSprtie[playerStates.walking][directions.left] = sWalkLeft; 
	
 	// set all Carry idle 
	global.PlayerSprtie[playerStates.idleCarry][directions.up] = sCarryUp;
	global.PlayerSprtie[playerStates.idleCarry][directions.right] = sCarryRight; 
	global.PlayerSprtie[playerStates.idleCarry][directions.down] = sCarryDown;
	global.PlayerSprtie[playerStates.idleCarry][directions.left] = sCarryLeft;
	
	// set all Carry walking 
	global.PlayerSprtie[playerStates.walkingCarry][directions.up] = sCarryUp;
	global.PlayerSprtie[playerStates.walkingCarry][directions.right] = sCarryRight; 
	global.PlayerSprtie[playerStates.walkingCarry][directions.down] = sCarryDown;
	global.PlayerSprtie[playerStates.walkingCarry][directions.left] = sCarryLeft; 
	
	// set all Axe 
	global.PlayerSprtie[playerStates.chopping][directions.up] = sAxeUp;
	global.PlayerSprtie[playerStates.chopping][directions.right] = sAxeRight; 
	global.PlayerSprtie[playerStates.chopping][directions.down] = sAxeDown;
	global.PlayerSprtie[playerStates.chopping][directions.left] = sAxeLeft; 

	// set all Hoe 
	global.PlayerSprtie[playerStates.tilling][directions.up] = sHoeUp;
	global.PlayerSprtie[playerStates.tilling][directions.right] = sHoeRight; 
	global.PlayerSprtie[playerStates.tilling][directions.down] = sHoeDown;
	global.PlayerSprtie[playerStates.tilling][directions.left] = sHoeLeft; 

	// set up fishing
	global.PlayerSprtie[playerStates.fishing][directions.up] = sFishUp;
	global.PlayerSprtie[playerStates.fishing][directions.right] = sFishRight; 
	global.PlayerSprtie[playerStates.fishing][directions.down] = sFishDown;
	global.PlayerSprtie[playerStates.fishing][directions.left] = sFishLeft; 
}