extends Node

onready var inventory = get_node("../Inventory")
var number_of_slots:int  # Number of slots
var items = [] # Array of items
var items_button = [] # Array of buttons

func put():
	var it = inventory.current_item
	if it != null and items.size() < number_of_slots:
		items.append(it)
		inventory.put()
		update()

	
func take(item_index):
	if inventory.current_item != null:
		var item_hand = inventory.current_item
		inventory.current_item = items[item_index]
		items[item_index] = item_hand
	else:
		inventory.current_item = items[item_index]
		items.remove(item_index)
		
	inventory.update()
	update()
		
func update():
	pass
		
func _ready():
	pass
