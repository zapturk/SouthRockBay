// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StopMovement(object){
	if(place_meeting(oPlayer.x + oPlayer.hspd, y, object)){
		while(!place_meeting(oPlayer.x + sign(oPlayer.hspd), oPlayer.y, object)){
			oPlayer.x += sign(oPlayer.hspd);
		}
		oPlayer.hspd = 0;
	}

	if(place_meeting(oPlayer.x, oPlayer.y + oPlayer.vspd, object)){
		while(!place_meeting(oPlayer.x, oPlayer.y + sign(oPlayer.vspd), object)){
			oPlayer.y += sign(oPlayer.vspd);
		}
		oPlayer.vspd = 0;
	}
}