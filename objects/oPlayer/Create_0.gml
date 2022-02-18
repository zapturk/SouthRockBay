/// @description Insert description here
// You can write your code in this editor

// move this
randomize();

state = playerStates.idle;

fishing = fishingState.notFishing;

walkspd = 1;

dir = directions.down;
//skinColor = skinColors.char1;

image_speed = 0;

carryingItem = false;


// Spawn the eyes
//instance_create_depth(x, y, -1, oHair);

// Spawn Shirt
//instance_create_depth(x, y, -2, oHair);

// Spawn Pants
//instance_create_depth(x, y, -3, oHair);

// Spawn Shoes
//instance_create_depth(x, y, -4, oHair);

// Spawns hair
//instance_create_depth(x, y, -5, oHair);

// Spawn tools
instance_create_depth(x, y, -6, oTool);

// create box
//instance_create_depth(x, y, -7, oBox);

// carry an item
instance_create_depth(x, y, -8, oItemCarrying);

// emoticons over the head
instance_create_depth(x, y, -9, oEmoticons);

// bobber
instance_create_depth(x, y, -10, oBobber)