/// @description Insert description here
// You can write your code in this editor

view_width = 1920/7.5;
view_height = 1080/7.5;

window_scale = 4;
window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);