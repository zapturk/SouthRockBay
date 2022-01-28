/// @description Insert description here
// You can write your code in this editor
hspd = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * walkspd;
vspd = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * walkspd;

StopMovement(oWater);

x += hspd;
y += vspd;