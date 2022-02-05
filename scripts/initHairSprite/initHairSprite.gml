// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initHairSprite(){
	// set hair colors
	global.HairColorValue[hairColors.black][0] = new ColorVector(94, 76, 65);
	global.HairColorValue[hairColors.black][1] = new ColorVector(80, 62, 57);
	global.HairColorValue[hairColors.black][2] = new ColorVector(70, 53, 51);
	global.HairColorValue[hairColors.black][3] = new ColorVector(61, 46, 46);
	global.HairColorValue[hairColors.black][4] = new ColorVector(54, 41, 42);
	global.HairColorValue[hairColors.black][5] = new ColorVector(49, 38, 39);
	
	global.HairColorValue[hairColors.blonde][0] = new ColorVector(212, 166, 106);
	global.HairColorValue[hairColors.blonde][1] = new ColorVector(196, 147, 98);
	global.HairColorValue[hairColors.blonde][2] = new ColorVector(176, 129, 90);
	global.HairColorValue[hairColors.blonde][3] = new ColorVector(148, 105, 80);
	global.HairColorValue[hairColors.blonde][4] = new ColorVector(125, 87, 69);
	global.HairColorValue[hairColors.blonde][5] = new ColorVector(107, 73, 61);
	
	global.HairColorValue[hairColors.brown][0] = new ColorVector(130, 96, 79);
	global.HairColorValue[hairColors.brown][1] = new ColorVector(113, 81, 72);
	global.HairColorValue[hairColors.brown][2] = new ColorVector(99, 68, 64);
	global.HairColorValue[hairColors.brown][3] = new ColorVector(85, 58, 58);
	global.HairColorValue[hairColors.brown][4] = new ColorVector(71, 50, 50);
	global.HairColorValue[hairColors.brown][5] = new ColorVector(64, 46, 48);
	
	global.HairColorValue[hairColors.lightBrown][0] = new ColorVector(181, 120, 105);
	global.HairColorValue[hairColors.lightBrown][1] = new ColorVector(158, 103, 93);
	global.HairColorValue[hairColors.lightBrown][2] = new ColorVector(138, 90, 85);
	global.HairColorValue[hairColors.lightBrown][3] = new ColorVector(117, 77, 75);
	global.HairColorValue[hairColors.lightBrown][4] = new ColorVector(94, 63, 63);
	global.HairColorValue[hairColors.lightBrown][5] = new ColorVector(84, 58, 58);
	
	global.HairColorValue[hairColors.copper][0] = new ColorVector(201, 133, 93);
	global.HairColorValue[hairColors.copper][1] = new ColorVector(179, 115, 85);
	global.HairColorValue[hairColors.copper][2] = new ColorVector(161, 98, 79);
	global.HairColorValue[hairColors.copper][3] = new ColorVector(135, 84, 72);
	global.HairColorValue[hairColors.copper][4] = new ColorVector(110, 68, 60);
	global.HairColorValue[hairColors.copper][5] = new ColorVector(92, 59, 54);

	global.HairColorValue[hairColors.emerald][0] = new ColorVector(59, 135, 96);
	global.HairColorValue[hairColors.emerald][1] = new ColorVector(48, 110, 85);
	global.HairColorValue[hairColors.emerald][2] = new ColorVector(42, 92, 78);
	global.HairColorValue[hairColors.emerald][3] = new ColorVector(39, 79, 73);
	global.HairColorValue[hairColors.emerald][4] = new ColorVector(33, 64, 59);
	global.HairColorValue[hairColors.emerald][5] = new ColorVector(32, 58, 59);
	
	global.HairColorValue[hairColors.green][0] = new ColorVector(102, 156, 86);
	global.HairColorValue[hairColors.green][1] = new ColorVector(85, 138, 77);
	global.HairColorValue[hairColors.green][2] = new ColorVector(69, 122, 69);
	global.HairColorValue[hairColors.green][3] = new ColorVector(60, 99, 66);
	global.HairColorValue[hairColors.green][4] = new ColorVector(49, 79, 56);
	global.HairColorValue[hairColors.green][5] = new ColorVector(46, 71, 57);
	
	global.HairColorValue[hairColors.gray][0] = new ColorVector(164, 150, 142);
	global.HairColorValue[hairColors.gray][1] = new ColorVector(135, 126, 121);
	global.HairColorValue[hairColors.gray][2] = new ColorVector(115, 106, 103);
	global.HairColorValue[hairColors.gray][3] = new ColorVector(98, 90, 88);
	global.HairColorValue[hairColors.gray][4] = new ColorVector(83, 77, 77);
	global.HairColorValue[hairColors.gray][5] = new ColorVector(74, 67, 69);
	
	global.HairColorValue[hairColors.lilac][0] = new ColorVector(173, 127, 181);
	global.HairColorValue[hairColors.lilac][1] = new ColorVector(146, 114, 158);
	global.HairColorValue[hairColors.lilac][2] = new ColorVector(126, 99, 143);
	global.HairColorValue[hairColors.lilac][3] = new ColorVector(100, 84, 115);
	global.HairColorValue[hairColors.lilac][4] = new ColorVector(84, 73, 97);
	global.HairColorValue[hairColors.lilac][5] = new ColorVector(68, 62, 79);
	
	global.HairColorValue[hairColors.navy][0] = new ColorVector(98, 108, 158);
	global.HairColorValue[hairColors.navy][1] = new ColorVector(83, 87, 130);
	global.HairColorValue[hairColors.navy][2] = new ColorVector(73, 72, 110);
	global.HairColorValue[hairColors.navy][3] = new ColorVector(67, 62, 92);
	global.HairColorValue[hairColors.navy][4] = new ColorVector(60, 53, 77);
	global.HairColorValue[hairColors.navy][5] = new ColorVector(54, 48, 69);
	
	global.HairColorValue[hairColors.pink][0] = new ColorVector(255, 133, 139);
	global.HairColorValue[hairColors.pink][1] = new ColorVector(217, 121, 129);
	global.HairColorValue[hairColors.pink][2] = new ColorVector(191, 107, 117);
	global.HairColorValue[hairColors.pink][3] = new ColorVector(163, 93, 107);
	global.HairColorValue[hairColors.pink][4] = new ColorVector(138, 81, 98);
	global.HairColorValue[hairColors.pink][5] = new ColorVector(107, 65, 76);
	
	global.HairColorValue[hairColors.purple][0] = new ColorVector(126, 95, 158);
	global.HairColorValue[hairColors.purple][1] = new ColorVector(103, 82, 135);
	global.HairColorValue[hairColors.purple][2] = new ColorVector(86, 71, 120);
	global.HairColorValue[hairColors.purple][3] = new ColorVector(70, 63, 102);
	global.HairColorValue[hairColors.purple][4] = new ColorVector(58, 56, 89);
	global.HairColorValue[hairColors.purple][5] = new ColorVector(54, 50, 71);
	
	global.HairColorValue[hairColors.red][0] = new ColorVector(181, 99, 85);
	global.HairColorValue[hairColors.red][1] = new ColorVector(163, 82, 77);
	global.HairColorValue[hairColors.red][2] = new ColorVector(145, 70, 70);
	global.HairColorValue[hairColors.red][3] = new ColorVector(120, 62, 69);
	global.HairColorValue[hairColors.red][4] = new ColorVector(105, 56, 66);
	global.HairColorValue[hairColors.red][5] = new ColorVector(97, 53, 61);
	
	global.HairColorValue[hairColors.turquoise][0] = new ColorVector(89, 153, 151);
	global.HairColorValue[hairColors.turquoise][1] = new ColorVector(81, 133, 135);
	global.HairColorValue[hairColors.turquoise][2] = new ColorVector(74, 115, 120);
	global.HairColorValue[hairColors.turquoise][3] = new ColorVector(67, 96, 105);
	global.HairColorValue[hairColors.turquoise][4] = new ColorVector(60, 82, 92);
	global.HairColorValue[hairColors.turquoise][5] = new ColorVector(55, 70, 79);
	
	// set all walking 
	global.WalkingHairSprtie[hair.emo][directions.up] = sWalkUpEmo;
	global.WalkingHairSprtie[hair.emo][directions.right] = sWalkRightEmo; 
	global.WalkingHairSprtie[hair.emo][directions.down] = sWalkDownEmo;
	global.WalkingHairSprtie[hair.emo][directions.left] = sWalkLeftEmo; 

	// set up fishing
	global.FishHairSprtie[hair.emo][directions.up] = sWalkUpEmo;
	global.FishHairSprtie[hair.emo][directions.right] = sWalkRightEmo; 
	global.FishHairSprtie[hair.emo][directions.down] = sWalkDownEmo;
	global.FishHairSprtie[hair.emo][directions.left] = sWalkLeftEmo; 
}