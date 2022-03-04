//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float range;

uniform vec4 gray1;
uniform vec4 gray2;
uniform vec4 gray3;
uniform vec4 gray4;
uniform vec4 gray5;
uniform vec4 gray6;

uniform vec4 color1;
uniform vec4 color2;
uniform vec4 color3;
uniform vec4 color4;
uniform vec4 color5;
uniform vec4 color6;


void main()
{
    vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float newRange = range / 255.0;

	if(abs(pixelColor.r - gray1.r) <= newRange){
		if(abs(pixelColor.g - gray1.g) <= newRange){
			if(abs(pixelColor.b - gray1.b) <= newRange){
				pixelColor.rgb = color1.rgb;
			}
		}
	}
	
	if(abs(pixelColor.r - gray2.r) <= newRange){
		if(abs(pixelColor.g - gray2.g) <= newRange){
			if(abs(pixelColor.b - gray2.b) <= newRange){
				pixelColor.rgb = color2.rgb;
			}
		}
	}
	
	if(abs(pixelColor.r - gray3.r) <= newRange){
		if(abs(pixelColor.g - gray3.g) <= newRange){
			if(abs(pixelColor.b - gray3.b) <= newRange){
				pixelColor.rgb = color3.rgb;
			}
		}
	}
	
	if(abs(pixelColor.r - gray4.r) <= newRange){
		if(abs(pixelColor.g - gray4.g) <= newRange){
			if(abs(pixelColor.b - gray4.b) <= newRange){
				pixelColor.rgb = color4.rgb;
			}
		}
	}
	
	if(abs(pixelColor.r - gray5.r) <= newRange){
		if(abs(pixelColor.g - gray5.g) <= newRange){
			if(abs(pixelColor.b - gray5.b) <= newRange){
				pixelColor.rgb = color5.rgb;
			}
		}
	}
	
	if(abs(pixelColor.r - gray6.r) <= newRange){
		if(abs(pixelColor.g - gray6.g) <= newRange){
			if(abs(pixelColor.b - gray6.b) <= newRange){
				pixelColor.rgb = color6.rgb;
			}
		}
	}
	
	gl_FragColor = pixelColor;
}
