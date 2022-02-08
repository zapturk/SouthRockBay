/// @description Insert description here
// You can write your code in this editor

if(oPlayer.state == playerStates.fishing){
	sprite_index = global.ToolSprite[oPlayer.state][oPlayer.dir];
	x = oPlayer.x;
	y = oPlayer.y;
	
	visible = true;
	image_speed = 1;
	if(image_index == 5){
		image_speed = 0;	
	}
}
else if(oPlayer.state == playerStates.chopping){
	sprite_index = global.ToolSprite[oPlayer.state][oPlayer.dir];
	x = oPlayer.x;
	y = oPlayer.y;
	
	visible = true;
	image_speed = 1;
}
else if(oPlayer.state == playerStates.tilling){
	sprite_index = global.ToolSprite[oPlayer.state][oPlayer.dir];
	x = oPlayer.x;
	y = oPlayer.y;
	
	visible = true;
	image_speed = 1;
}
else{
	image_index = 0;
	image_speed = 0;
	visible = false;
}