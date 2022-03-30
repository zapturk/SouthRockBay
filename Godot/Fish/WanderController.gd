extends Node2D

export(int) var wonderRange = 32

onready var starPos = global_position
onready var targetPos = global_position

onready var timer = $NewPosTimer

func updateTargetPostion():
	var targetVector = Vector2(rand_range(-wonderRange, wonderRange), rand_range(-wonderRange, wonderRange))
	starPos = global_position
	
	if randi()%2 == 0:
		targetVector.x = 0
	else:
		targetVector.y = 0
	
	targetPos = starPos + targetVector

func getTimeLeft():
	return timer.time_left
	
func setWanderTimer(duration):
	timer.start(duration)

func _on_NewPosTimer_timeout():
	updateTargetPostion()
