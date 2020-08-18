extends "res://scenes/abstract_storage/Abstract_storage.gd"
#Load sector
var item = load("res://scenes/items/Base_item.gd")
onready var item_factory = get_node("/root/ItemFactory")
onready var item_table = get_node("/root/ItemTable")

#Code sector
func _ready():
	number_of_slots = 5
	items.append(item_factory.new_item(item_table.Ids.COPPER_ORE))
	items.append(item_factory.new_item(item_table.Ids.FANTASIUM_ORE))
	items.append(item_factory.new_item(item_table.Ids.FANTASIUM_ORE))
	items.append(item_factory.new_item(item_table.Ids.COPPER_INGOT))
	items.append(item_factory.new_item(item_table.Ids.COPPER_INGOT))
	log_out()
	pass 

func log_out():
	for i in items_button:
		i.queue_free()
	items_button.clear()
	for i in items:
		if i == null: continue
		var btn = Button.new()
		$VBoxContainer.add_child(btn)
		btn.connect("button_down", self, "_on_click_item_button", [btn])
		btn.text = i.log_out()
		items_button.append(btn)

	
func _on_click_item_button(btn):
	take(items_button.find(btn))

func _on_Button_button_up():
	put()
	pass # Replace with function body.

func update():
	log_out()
