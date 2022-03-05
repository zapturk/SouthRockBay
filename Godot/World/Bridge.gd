extends StaticBody2D

onready var player = get_parent().get_node("YSort/Player")

signal TrunOffWaterCollide
signal TrunOnWaterCollide

func _on_Area2D_body_entered(body):
	if not body == player:
		pass
	else:
		emit_signal("TrunOffWaterCollide")


func _on_Area2D_body_exited(body):
	if not body == player:
		pass
	else:
		emit_signal("TrunOnWaterCollide")
