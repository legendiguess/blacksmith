extends Node2D
#Load sector
var item = load("res://scenes/items/Base_item.gd")
onready var item_factory = get_node("/root/ItemFactory")
onready var item_table = get_node("/root/ItemTable")
onready var inventory = get_node("../Inventory")

#Declare Variables
var N:int = 5  # Number of slots
var items = [] # Array of items
var items_button = [] # Array of buttons

#Code sector
func _ready():
	items.append(item_factory.new_item(item_table.Ids.COPPER_ORE))
	items.append(item_factory.new_item(item_table.Ids.COPPER_ORE))
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

func put(item) -> bool:
	if items.size() < N:
		items.append(item)
		update()
		return true
	else: return false
	
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
		
	
func _on_click_item_button(btn):
	take(items_button.find(btn))

func _on_Button_button_up():
	var item = inventory.current_item
	if item != null && put(item):
		 inventory.put()
	pass # Replace with function body.

func update():
	log_out()
