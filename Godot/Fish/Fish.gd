extends KinematicBody2D

export var ACCELERATION = 100
export var MAX_SPEED = 25
export var FRICTION = 200
export var WANDER_TARGET_RANGE = 4.0

onready var dir = "Up"
onready var timer = get_node("Timer")

enum{
	IDLE,
	WONDER,
	CHASE
}

var velocity = Vector2.ZERO
var state = IDLE

onready var wanderController = $WanderController

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
			velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
			pickNextState()
		WONDER:
			pickNextState()
			var dirctrion = global_position.direction_to(wanderController.targetPos)
			setFishSpriteDir(dirctrion)
			velocity = velocity.move_toward(dirctrion * MAX_SPEED, ACCELERATION * delta)
			
			if global_position.distance_to(wanderController.targetPos) <= WANDER_TARGET_RANGE:
				state = pickRandomState([IDLE, WONDER])
		CHASE:
			pass

	$AnimationPlayer.play(dir)
	velocity = move_and_slide(velocity)
	
func setFishSpriteDir(dirctrionVec):
	if dirctrionVec.x != 0:
		if dirctrionVec.x < 0:
			dir = "Left"
		else:
			dir = "Right"
	else:
		if dirctrionVec.y > 0:
			dir = "Down"
		else:
			dir = "Up"


func pickNextState():
	if wanderController.getTimeLeft() == 0:
		state = pickRandomState([IDLE, WONDER])
		wanderController.setWanderTimer(rand_range(1,3))

func pickRandomState(stateList):
	stateList.shuffle()
	return stateList.pop_front()

func _on_Timer_timeout():
#	var i = randi() % 4
#
#	match i:
#		0:
#			dir = "Up"
#		1: 
#			dir = "Right"
#		2:
#			dir = "Down"
#		3:
#			dir = "Left"
	pass
