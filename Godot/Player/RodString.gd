extends Node2D


export (float) var ropeLength = 20
export (float) var constrain = 1	# distance between points
export (Vector2) var gravity = Vector2(0,9.8)
export (float) var dampening = 0.9
export (bool) var startPin = true
export (bool) var endPin = true

onready var line2D: = $Line2D
onready var bobberPos = Vector2.ZERO
onready var leftAnim = get_parent().get_node("Path2DLeft")
onready var rightAnim = get_parent().get_node("Path2DRight")
onready var downAnim = get_parent().get_node("Path2DDown")
onready var upAnim = get_parent().get_node("Path2DUp")

onready var animNode = downAnim

var pos: PoolVector2Array
var posPrev: PoolVector2Array
var pointCount: int

func _ready()->void:
	pointCount = get_pointCount(ropeLength)
	resize_arrays()
	init_position()
	set_start(animNode.get_node("Position2D1").position)

func get_pointCount(distance: float)->int:
	return int(ceil(distance / constrain))

func resize_arrays():
	pos.resize(pointCount)
	posPrev.resize(pointCount)

func init_position()->void:
	for i in range(pointCount):
		pos[i] = position + Vector2(constrain *i, 0)
		posPrev[i] = position + Vector2(constrain *i, 0)
	position = Vector2.ZERO

func _process(delta)->void:
	update_points(delta)
	update_constrain()
	
	bobberPos = animNode.get_node("PathFollow2D").position
	
	if animNode == rightAnim:
		bobberPos.x = -bobberPos.x
	
	set_last(bobberPos)
	
	# Send positions to Line2D for drawing
	line2D.points = pos
	
func setDir(dir):
	match dir:
		"up":
			animNode = upAnim
			pass
		"right":
			animNode = rightAnim
			pass
		"down":
			animNode = downAnim
			pass
		"left":
			animNode = leftAnim
			pass
	
func setStartWithNode(animPos:int):
	var rodPos = null
	
	match animPos:
		1:
			rodPos = animNode.get_node("Position2D1").position
		2:
			rodPos = animNode.get_node("Position2D2").position
		3:
			rodPos = animNode.get_node("Position2D3").position
		
	if animNode == rightAnim:
		rodPos.x = -rodPos.x
		
	set_start(rodPos)

func set_start(p:Vector2)->void:
	pos[0] = p
	posPrev[0] = p

func set_last(p:Vector2)->void:
	pos[pointCount-1] = p
	posPrev[pointCount-1] = p

func update_points(delta)->void:
	for i in range (pointCount):
		# not first and last || first if not pinned || last if not pinned
		if (i!=0 && i!=pointCount-1) || (i==0 && !startPin) || (i==pointCount-1 && !endPin):
			var velocity = (pos[i] -posPrev[i]) * dampening
			posPrev[i] = pos[i]
			pos[i] += velocity + (gravity * delta)

func update_constrain()->void:
	for i in range(pointCount):
		if i == pointCount-1:
			return
		var distance = pos[i].distance_to(pos[i+1])
		var difference = constrain - distance
		var percent = difference / distance
		var vec2 = pos[i+1] - pos[i]
		
		# if first point
		if i == 0:
			if startPin:
				pos[i+1] += vec2 * percent
			else:
				pos[i] -= vec2 * (percent/2)
				pos[i+1] += vec2 * (percent/2)
		# if last point, skip because no more points after it
		elif i == pointCount-1:
			pass
		# all the rest
		else:
			if i+1 == pointCount-1 && endPin:
				pos[i] -= vec2 * percent
			else:
				pos[i] -= vec2 * (percent/2)
				pos[i+1] += vec2 * (percent/2)
