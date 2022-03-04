// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetShaderUniform(color){
	
	// Default gray scal
	gray1 = new ColorVector(173, 173, 173);
	gray2 = new ColorVector(153, 153, 153);
	gray3 = new ColorVector(134, 134, 134);
	gray4 = new ColorVector(115, 115, 115);
	gray5 = new ColorVector(104, 104, 104);
	gray6 = new ColorVector(87, 87, 87);

	// color you want to change it to
	color1 = global.HairColorValue[color][0];
	color2 = global.HairColorValue[color][1];
	color3 = global.HairColorValue[color][2];
	color4 = global.HairColorValue[color][3];
	color5 = global.HairColorValue[color][4];
	color6 = global.HairColorValue[color][5];

	shHandleRange = shader_get_uniform(shHairReplaceColor, "range");

	shHandleGray1 = shader_get_uniform(shHairReplaceColor, "gray1");
	shHandleGray2 = shader_get_uniform(shHairReplaceColor, "gray2");
	shHandleGray3 = shader_get_uniform(shHairReplaceColor, "gray3");
	shHandleGray4 = shader_get_uniform(shHairReplaceColor, "gray4");
	shHandleGray5 = shader_get_uniform(shHairReplaceColor, "gray5");
	shHandleGray6 = shader_get_uniform(shHairReplaceColor, "gray6");

	shHandleColor1 = shader_get_uniform(shHairReplaceColor, "color1");
	shHandleColor2 = shader_get_uniform(shHairReplaceColor, "color2");
	shHandleColor3 = shader_get_uniform(shHairReplaceColor, "color3");
	shHandleColor4 = shader_get_uniform(shHairReplaceColor, "color4");
	shHandleColor5 = shader_get_uniform(shHairReplaceColor, "color5");
	shHandleColor6 = shader_get_uniform(shHairReplaceColor, "color6");
	
	shader_set_uniform_f(shHandleRange, 1);

	shader_set_uniform_f(shHandleGray1, 
		gray1.red,
		gray1.green,
		gray1.blue
	);

	shader_set_uniform_f(shHandleGray2, 
		gray2.red,
		gray2.green,
		gray2.blue
	);

	shader_set_uniform_f(shHandleGray3, 
		gray3.red,
		gray3.green,
		gray3.blue
	);

	shader_set_uniform_f(shHandleGray4, 
		gray4.red,
		gray4.green,
		gray4.blue
	);

	shader_set_uniform_f(shHandleGray5, 
		gray5.red,
		gray5.green,
		gray5.blue
	);

	shader_set_uniform_f(shHandleGray6, 
		gray6.red,
		gray6.green,
		gray6.blue
	);


	shader_set_uniform_f(shHandleColor1, 
		color1.red,
		color1.green,
		color1.blue
	);

	shader_set_uniform_f(shHandleColor2, 
		color2.red,
		color2.green,
		color2.blue
	);

	shader_set_uniform_f(shHandleColor3, 
		color3.red,
		color3.green,
		color3.blue
	);

	shader_set_uniform_f(shHandleColor4, 
		color4.red,
		color4.green,
		color4.blue
	);

	shader_set_uniform_f(shHandleColor5, 
		color5.red,
		color5.green,
		color5.blue
	);

	shader_set_uniform_f(shHandleColor6, 
		color6.red,
		color6.green,
		color6.blue
	);

}