/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y + yOffset;


switch(oPlayer.fishing){
	case fishingState.fishHooked:
		image_index = 16;
		visible = true;
		oPlayer.fishing = fishingState.notFishing;
		break;
	case fishingState.fishMissed:
		image_index = 0;
		visible = true;
		oPlayer.state = playerStates.idle;
		break;
	default:
		visible = false;
		break;
}

