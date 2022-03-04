/// @description Insert description here
// You can write your code in this editor

if(doAction){
	doAction = false;
	if(action == 0 || action == 1){
		rotation = irandom_range(20, 90);
		doRotation = true;
		rotationCount = 0;
	}
	else if(action == 2 || action == 3){
		distance = irandom_range(6, 12);
		doMove = true;
		moveCount = 0;
	}
}

if(doRotation){
	if(rotationCount < rotation){
		if(action == 0){
			// rotate right
			image_angle -= 1;
		}
		else if(action == 1){
			// rotate right
			image_angle += 1;
		}
		++rotationCount;
	}
	else{
		doRotation = false;
	}
}

if(doMove){
	if(moveCount < distance){
		direction = image_angle + 90;
		//x += 1;
		//y += 1;
		speed = 1;
		++moveCount;
	}
	else{
		speed = 0;
		doMove = false;
	}
}