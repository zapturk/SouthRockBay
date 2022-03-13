extends Control

#for moving the indicator for the currently equipped item
onready var Indicator = get_node("Equipped Item Indicator")

#the item slot the indicator is currently over, starting with the first slot
var IndicatorSlot = 1

#the initial position of the equipped item
const IndicatorBasePosition = Vector2(0,0)

#the number of pixels the indicator must offset between each item
const HotbarItemSeparation = 22

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = true
	pass # Replace with function body.

func _input(event):
	if visible and Input.is_action_pressed("scroll_down"):
		if IndicatorSlot == 9:
			IndicatorSlot = 1
		else:
			IndicatorSlot += 1
		_move_indicator()
	elif visible and Input.is_action_pressed("scroll_up"):
		if IndicatorSlot == 1:
			IndicatorSlot = 9
		else:
			IndicatorSlot -= 1
		_move_indicator()

func _Button_pressed(number):
	IndicatorSlot = number
	_move_indicator()
	
#moves the equipped item indicator to the IndicatorSlot
#the position is a multiple of the pixel distance between items on the hotbar
func _move_indicator():
	Indicator.rect_position = Vector2(IndicatorBasePosition.x + ((IndicatorSlot-1) * HotbarItemSeparation), IndicatorBasePosition.y)
