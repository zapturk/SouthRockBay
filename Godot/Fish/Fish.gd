extends Node2D


onready var dir = "Up"
onready var timer = get_node("Timer")
enum{
	IDLE,
	WONDER,
	CHASE
}

var state = CHASE

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	timer.set_wait_time(2)
	timer.start()
	$AnimationPlayer.play("Up")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	match state:
		IDLE:
			pass
		WONDER:
			pass
		CHASE:
			pass
	
	$AnimationPlayer.play(dir)

func _on_Timer_timeout():
	var i = randi() % 4
	
	match i:
		0:
			dir = "Up"
		1: 
			dir = "Right"
		2:
			dir = "Down"
		3:
			dir = "Left"
