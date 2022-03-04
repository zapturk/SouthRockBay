/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y + yOffset;

if(oPlayer.carryingItem){
	sprite_index = sFish;
	image_xscale = .75;
	image_yscale = .75;
	visible = true;
}
else{
	visible = false;	
}