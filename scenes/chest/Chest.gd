extends "res://scenes/abstract_storage/AbstractStorage.gd"
#Load sector
var item = load("res://scenes/items/Base_item.gd")
onready var item_factory = get_node("/root/ItemFactory")
onready var item_table = get_node("/root/ItemTable")

#Code sector
func _ready():
	number_of_slots = 6
	items.append(item_factory.new_item(item_table.Ids.COPPER_ORE))
	items.append(item_factory.new_item(item_table.Ids.FANTASIUM_ORE))
	items.append(item_factory.new_item(item_table.Ids.FANTASIUM_ORE))
	items.append(item_factory.new_item(item_table.Ids.COPPER_INGOT))
	items.append(item_factory.new_item(item_table.Ids.COPPER_INGOT))
	update()
	pass 


func _on_Button_button_up():
	put()
	pass # Replace with function body.

func update():
	item_gui($VBoxContainer)
