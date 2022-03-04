// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initToolSptites(){
	global.ToolSprite[playerStates.chopping][directions.up] = sToolAxeUp;
	global.ToolSprite[playerStates.chopping][directions.right] = sToolAxeRight;
	global.ToolSprite[playerStates.chopping][directions.down] = sToolAxeDown;
	global.ToolSprite[playerStates.chopping][directions.left] = sToolAxeLeft;
	
	global.ToolSprite[playerStates.fishing][directions.up] = sToolFishUp;
	global.ToolSprite[playerStates.fishing][directions.right] = sToolFishRight;
	global.ToolSprite[playerStates.fishing][directions.down] = sToolFishDown;
	global.ToolSprite[playerStates.fishing][directions.left] = sToolFishLeft;

	global.ToolSprite[playerStates.tilling][directions.up] = sToolHoeUp;
	global.ToolSprite[playerStates.tilling][directions.right] = sToolHoeRight;
	global.ToolSprite[playerStates.tilling][directions.down] = sToolHoeDown;
	global.ToolSprite[playerStates.tilling][directions.left] = sToolHoeLeft;
}