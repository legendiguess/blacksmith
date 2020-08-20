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
	log_out()

func log_out():
	var st = "Inventory: \n"
	if current_item !=null:
		st+=(current_item.log_out() +"\n")
	$LogText.text = st

func put():
	current_item = null
	update()
