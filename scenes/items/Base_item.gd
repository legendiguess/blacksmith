extends Node

#Load sector

#Declare Variables
var item_name = ""

#Code sector
func _ready():
	pass 

func log_out():
	if item_name == "":
		push_error("Base_item is an abstract class and cannot be used.")
		return "base_item"
	return item_name
