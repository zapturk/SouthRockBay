extends Node2D

onready var water = $Water

# Called when the node enters the scene tree for the first time.
func _ready():
	for bridge in get_tree().get_nodes_in_group("Bridges"):
		bridge.connect("TrunOffWaterCollide", self, "TrunOffWaterCollide")
		bridge.connect("TrunOnWaterCollide", self, "TrunOnWaterCollide")

func TrunOffWaterCollide():
	water.set_collision_layer_bit(0, false)
	water.set_collision_mask_bit(0, false)
	
	
func TrunOnWaterCollide():
	water.set_collision_layer_bit(0, true)
	water.set_collision_mask_bit(0, true)
