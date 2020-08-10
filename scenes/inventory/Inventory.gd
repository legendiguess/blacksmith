extends Node2D

#Load sector
var Item = load("res://scenes/items/Base_item.gd")

#Declare Variables
var N:int = 1  # Number of slots
var items = [] # Array of items

#Code sector
func _ready():
	
	log_out()
	pass 

func log_out():
	var st = "Inventory: \n"
	for i in items:
		st+=(i.log_out() +"\n")
	$LogText.text = st
