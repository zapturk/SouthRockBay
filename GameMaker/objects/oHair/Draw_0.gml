/// @description Insert description here
// You can write your code in this editor

shader_set(shHairReplaceColor);

SetShaderUniform(hairColor);

draw_self();

shader_reset();