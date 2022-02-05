/// @description Insert description here
// You can write your code in this editor

if(oPlayer.state == playerStates.fishing){
	x = oPlayer.x;
	y = oPlayer.y;
	visible = true;
	image_speed = 1;
	if(image_index == 5){
		image_speed = 0;	
	}
}
else{

//if(oPlayer.state == playerStates.idle){
	//sprite_index = global.WalkingHairSprtie[hairStyle][oPlayer.dir]
	image_index = 0;
	image_speed = 0;
	visible = false;
}