/// @description Insert description here
// You can write your code in this editor

sprite_index = global.PlayerSprtie[state][dir];

if(state == playerStates.walking || state == playerStates.walkingCarry){
	hspd = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * walkspd;
	vspd = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * walkspd;

	StopMovement(oSolid);
	StopMovement(oRock);
	StopMovement(oWood);
	StopMovementLayer("Water");

	x += hspd;
	y += vspd;

	if(hspd != 0 || vspd != 0){
		image_speed = 1;	
	}
	else{
		if(carryingItem){
			state = playerStates.idleCarry;
		}
		else{
			state = playerStates.idle;
		}
	}
}

if(state == playerStates.chopping){
	image_speed = 1;
	if(image_index == 5){
		state = playerStates.idle;
		DestroyObj(oWood);
	}
}

if(state == playerStates.tilling){
	image_speed = 1;
	if(image_index == 5){
		state = playerStates.idle;
	}
}

if(state == playerStates.fishing){
	image_speed = 1;
	if(image_index == 5){
		image_speed = 0;
	}
}

if(state == playerStates.idle || state == playerStates.idleCarry){
	image_index = 0;
	image_speed = 0;	
}