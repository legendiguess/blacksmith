extends Node

#Load sector
var Item = load("res://scenes/items/Base_item.gd")

#Declare Variables
var current_item # Array of items

#Code sector
func _ready():
	update()

func update():
	log_out()
	
func log_out():
	var st = "Inventory: \n"
	if current_item !=null:
		st+=(current_item.log_out() +"\n")
	$LogText.text = st

func put():
	current_item = null
	log_out()
