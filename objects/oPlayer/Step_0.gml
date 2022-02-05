/// @description Insert description here
// You can write your code in this editor

if(state == playerStates.walking){
	sprite_index = global.WalkingSprtie[dir];
	hspd = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * walkspd;
	vspd = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * walkspd;

	StopMovement(oWater);
	StopMovement(oSolid);
	StopMovement(oRock);

	x += hspd;
	y += vspd;

	if(hspd != 0 || vspd != 0){
		image_speed = 1;	
	}
	else{
		state = playerStates.idle;
	}
}

if(state == playerStates.startFishing){
	sprite_index = global.FishSprtie[dir];
	image_speed = 1;	
	state = playerStates.fishing;
}

if(state == playerStates.fishing){
	if(image_index == 5){
		image_speed = 0;	
	}
}

if(state == playerStates.idle){
	sprite_index = global.WalkingSprtie[dir];
	image_index = 0;
	image_speed = 0;	
}