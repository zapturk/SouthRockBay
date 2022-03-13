extends Node2D

onready var water = get_parent().get_parent().get_parent().get_node("Water")
onready var player = get_parent()
onready var direction = ""
onready var t = Timer.new()

func ready():
	t.set_wait_time(1)
	t.set_one_shot(true)
	self.add_child(t)
	resetObj()

func run_tween(dir):
	direction = dir
	$Path2DRight.hide()
	$Path2DLeft.hide()
	
	match direction:
		"right":
			$Path2DRight.show()
			$Path2DRight/PathFollow2D/Bobber/Tween.interpolate_property(
				$Path2DRight/PathFollow2D, "unit_offset",
				0.0, 1.0, 0.3)
			$Path2DRight/PathFollow2D/Bobber/Tween.start()
			$Path2DRight/PathFollow2D/AnimationPlayer.play("BobberInWater")
		"left":
			$Path2DLeft.show()
			$Path2DLeft/PathFollow2D/Bobber/Tween.interpolate_property(
				$Path2DLeft/PathFollow2D, "unit_offset",
				0.0, 1.0, 0.3)
			$Path2DLeft/PathFollow2D/Bobber/Tween.start()
			$Path2DLeft/PathFollow2D/AnimationPlayer.play("BobberInWater")


func resetObj():
	$Path2DRight/PathFollow2D.offset = 0
	$Path2DLeft/PathFollow2D.offset = 0


func _on_Tween_tween_completed(object, key):
	var body = $Path2DLeft/PathFollow2D/Bobber/Area2D.get_overlapping_bodies()
	if body.size() > 0:
		if body[0] == water:
			print("Works")
		else:
			pass
	else:
		t.start()
		yield(t, "timeout")
		t.queue_free()
		player.bobberObj.hide()
		resetObj()
		player.state = player.MOVE
