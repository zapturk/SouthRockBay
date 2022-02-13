// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DestroyObj(object){
	switch(oPlayer.dir){
		case directions.up:
			inst = instance_position(oPlayer.x, oPlayer.y - 4, object);
			if(inst != noone){
				instance_destroy(inst.id);
			}
			break;
		case directions.right:
			inst = instance_position(oPlayer.x + 12, oPlayer.y + 4, object);
			if(inst != noone){
				instance_destroy(inst.id);
			}
			break;
		case directions.down:
			inst = instance_position(oPlayer.x, oPlayer.y + 16, object);
			if(inst != noone){
				instance_destroy(inst.id);
			};
		case directions.left:
			inst = instance_position(oPlayer.x - 12, oPlayer.y + 4, object);
			if(inst != noone){
				instance_destroy(inst.id);
			}
			break;
	}
}