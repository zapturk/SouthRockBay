// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StopMovementLayer(layerName){
	
	if(TileMeetingPrecise(oPlayer.x + oPlayer.hspd, oPlayer.y, layerName)){
		//while(!TileMeetingPrecise(oPlayer.x + oPlayer.hspd, oPlayer.y, layerName)){
		//	oPlayer.x += sign(oPlayer.hspd);
		//}
		oPlayer.hspd = 0;
	}

	if(TileMeetingPrecise( oPlayer.x, oPlayer.y + oPlayer.vspd, layerName)){
		//while(!TileMeetingPrecise(oPlayer.x, oPlayer.y + oPlayer.vspd, layerName)){
		//	oPlayer.y += sign(oPlayer.vspd);
		//}
		oPlayer.vspd = 0;
	}
}