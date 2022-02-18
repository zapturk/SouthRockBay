/// @description Insert description here
// You can write your code in this editor

if(oPlayer.state == playerStates.walking){
	sprite_index = global.WalkingHairSprtie[hairStyle][oPlayer.dir];
	
	x = oPlayer.x;
	y = oPlayer.y;

	if(oPlayer.hspd != 0 || oPlayer.vspd != 0){
		image_speed = 1;	
	}
}

if(oPlayer.state == playerStates.idle){
	sprite_index = global.WalkingHairSprtie[hairStyle][oPlayer.dir]
	image_index = 0;
	image_speed = 0;	
}