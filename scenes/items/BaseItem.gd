extends Node

#Load sector

#Declare Variables
var item_name = ""
var id = 0
var sprites = []

#Code sector
func _ready():
	pass 

func log_out():
	if id == 0:
		push_error("Base_item is an abstract class and cannot be used.")
		return "base_item"
	return item_name