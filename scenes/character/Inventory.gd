extends Node

#Declare Variables
var current_item # Array of items

#Code sector
func _ready():
	update()

func update():
	if current_item == null:
		get_node("../ItemInHandsSprite").texture = null
	else:
		get_node("../ItemInHandsSprite").texture = current_item.sprites

func put():
	current_item = null
	update()
