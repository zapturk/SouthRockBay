/// @description Insert description here
// You can write your code in this editor

if(oPlayer.state == playerStates.walking){
	xOffset = 0;
	yOffset = 0;
	
	switch(oPlayer.dir){
		case directions.up:
			yOffset = -4;
			break;
		case directions.right:
			xOffset = 12;
			yOffset = 4;
			break;
		case directions.down:
			yOffset = 16;
			break;
		case directions.left:
			xOffset = -12;
			yOffset = 4;
			break;
	}
	
	x = oPlayer.x + xOffset;
	y = oPlayer.y + yOffset;
}