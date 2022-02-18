/// @description Insert description here
// You can write your code in this editor

// sets the Scle of the UI
activeScaleX = 3;
activeScaleY = 3;

inactiveScaleX = 2;
inactiveScaleY = 2;

xDiff = round(oCamera.displayWidth / 2);
yDiff = round(oCamera.displayHeight / 2);

itemBarX = xDiff;
itemBarY = yDiff + 480;

itemOffestX = 66;
rowOffestY = 32;

inv1Row1x = itemBarX - (itemOffestX * 4);
inv1Row1y = itemBarY;

inv2Row1x = itemBarX - (itemOffestX * 3);
inv2Row1y = itemBarY;

inv3Row1x = itemBarX - (itemOffestX * 2);
inv3Row1y = itemBarY;

inv4Row1x = itemBarX - itemOffestX;
inv4Row1y = itemBarY;

inv5Row1x = itemBarX;
inv5Row1y = itemBarY;

inv6Row1x = itemBarX + itemOffestX;
inv6Row1y = itemBarY;

inv7Row1x = itemBarX + (itemOffestX * 2);
inv7Row1y = itemBarY;

inv8Row1x = itemBarX + (itemOffestX * 3);
inv8Row1y = itemBarY;

inv9Row1x = itemBarX + (itemOffestX * 4);
inv9Row1y = itemBarY;

itemSelectedX = inv1Row1x;
itemSelectedY = inv1Row1y;