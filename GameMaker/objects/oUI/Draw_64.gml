/// @description Insert description here
// You can write your code in this editor

//Draws invemtory
draw_sprite_ext(sItemsBar, 1, xDiff, yDiff + 480, activeScaleX, activeScaleY, 0, c_white, 1);

//Draw inventory selection
draw_sprite_ext(sSelectedItem, 0, itemSelectedX, itemSelectedY, activeScaleX, activeScaleY, 0, c_white, 1);

//Draw inventory selection
draw_sprite_ext(sFish, 0, inv2Row1x, inv2Row1y, activeScaleX, activeScaleY, 0, c_white, 1);