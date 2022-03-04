extends KinematicBody2D

const ACCELERATION = 1200
const MAX_SPEED = 80
const FRICTION = 1200

enum{
	MOVE,
	ATTACK
}

var state = MOVE
var velocity = Vector2.ZERO

onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animaitonState = animationTree.get("parameters/playback")

#set up my sprite states
onready var attackSprite = $AttackSprite
onready var walkSprite = $WalkSprite
onready var idleSprite = $IdleSprite

func _ready():
	animationTree.active = true

func _process(delta):
	match state:
		MOVE:
			moveState(delta)
		ATTACK:
			attackState()
	
func moveState(delta):
	setActiveSprite(walkSprite)
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()

	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationTree.set("parameters/Attack/blend_position", input_vector)
		animaitonState.travel("Run")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		animaitonState.travel("Idle")
		setActiveSprite(idleSprite)
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	velocity = move_and_slide(velocity)
	
	if Input.is_action_just_pressed("attack"):
		state = ATTACK
	
func attackState():
	setActiveSprite(attackSprite)
	velocity = Vector2.ZERO
	animaitonState.travel("Attack")

func attackAnimationFinish():
	state = MOVE

func setActiveSprite(sprite):
	attackSprite.hide()
	walkSprite.hide()
	idleSprite.hide()
	
	match sprite:
		attackSprite:
			attackSprite.show()
		walkSprite:
			walkSprite.show()
		idleSprite:
			idleSprite.show()
		
	
