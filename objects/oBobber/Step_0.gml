/// @description Insert description here
// You can write your code in this editor

if(oPlayer.state == playerStates.fishing && oTool.image_index == 5){
	switch(oPlayer.dir){
		case directions.up:
			x = oPlayer.x;
			y = oPlayer.y - 16;
			break;
		case directions.right:
			x = oPlayer.x + 20; 
			y = oPlayer.y + 16;
			break;
		case directions.down:
			x = oPlayer.x; 
			y = oPlayer.y + 28;
			break;
		case directions.left:
			x = oPlayer.x - 20;
			y = oPlayer.y + 16;
			break;
	}
	visible = true;
	image_speed = 1;
}
else{
	visible = false;
	image_index = 1;
	image_speed = 0;
}