/// @description Insert description here
// You can write your code in this editor
if(state == playerStates.fishing || state == playerStates.startFishing){
	 state = playerStates.idle;
}
else{
	state = playerStates.startFishing;
}