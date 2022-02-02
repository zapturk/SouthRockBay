/// @description Insert description here
// You can write your code in this editor

// move this
randomize();

state = playerStates.idle;

walkspd = 1;

dir = directions.down;

image_speed = 0;

sprite[directions.up] = sBaseUp;
sprite[directions.right] = sBaseRight;
sprite[directions.down] = sBaseDown;
sprite[directions.left] = sBaseLeft;