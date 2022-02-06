// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StopMovementLayer(layerName){
	
	//if(TileMeetingPrecise(oPlayer.x + oPlayer.hspd, oPlayer.y, layerName)){
	//	//while(!TileMeetingPrecise(oPlayer.x + oPlayer.hspd, oPlayer.y, layerName)){
	//	//	oPlayer.x += sign(oPlayer.hspd);
	//	//}
	//	oPlayer.hspd = 0;
	//}

	//if(TileMeetingPrecise( oPlayer.x, oPlayer.y + oPlayer.vspd, layerName)){
	//	//while(!TileMeetingPrecise(oPlayer.x, oPlayer.y + oPlayer.vspd, layerName)){
	//	//	oPlayer.y += sign(oPlayer.vspd);
	//	//}
	//	oPlayer.vspd = 0;
	//}
	
	layerID = layer_get_id(layerName);
	tileID = layer_tilemap_get_id(layerID);
	
	if(oPlayer.hspd > 0){
		if(tilemap_get_at_pixel(tileID, oPlayer.bbox_right + oPlayer.hspd, oPlayer.bbox_bottom)){
			while(!tilemap_get_at_pixel(tileID, oPlayer.bbox_right + oPlayer.hspd, oPlayer.bbox_bottom)){
				oPlayer.x += sign(oPlayer.hspd);
			}
			oPlayer.hspd = 0;
		}
	}
	
	if(oPlayer.hspd < 0){
		if(tilemap_get_at_pixel(tileID, oPlayer.bbox_left + oPlayer.hspd, oPlayer.bbox_bottom)){
			while(!tilemap_get_at_pixel(tileID, oPlayer.bbox_left + oPlayer.hspd, oPlayer.bbox_bottom)){
				oPlayer.x += sign(oPlayer.hspd);
			}
			oPlayer.hspd = 0;
		}
	}

	if(tilemap_get_at_pixel(tileID, oPlayer.bbox_left, oPlayer.bbox_top + oPlayer.vspd)){
		while(!tilemap_get_at_pixel(tileID, oPlayer.bbox_left, oPlayer.bbox_top + oPlayer.vspd)){
			oPlayer.y += sign(oPlayer.vspd);
		}
		oPlayer.vspd = 0;
	}
}