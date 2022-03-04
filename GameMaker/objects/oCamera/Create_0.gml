/// @description Insert description here
// You can write your code in this editor

displayWidth = 1920;
displayHeight = 1080;

view_width = displayWidth/4;
view_height = displayHeight/4;

window_scale = 4;
window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);