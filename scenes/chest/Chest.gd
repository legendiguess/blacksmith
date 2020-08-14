extends Node2D
#Load sector
var item = load("res://scenes/items/Base_item.gd")
onready var item_factory = get_node("../ItemFactory")
onready var item_table = get_node("../ItemTable")

#Declare Variables
var N:int = 5  # Number of slots
var items = [] # Array of items
var items_button = [] # Array of buttons

#Code sector
func _ready():
	items.append(item_factory.new_item(item_table.ids.copper_ore))
	items.append(item_factory.new_item(item_table.ids.copper_ore))
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
	if $"/root/Inventory".current_item != null:
		var item_hand = $"/root/Inventory".current_item
		$"/root/Inventory".current_item = items[item_index]
		items[item_index] = item_hand
	else:
		$"/root/Inventory".current_item = items[item_index]
		items.remove(item_index)
		
	$"/root/Inventory".update()
	update()
		
	
func _on_click_item_button(btn):
	take(items_button.find(btn))

func _on_Button_button_up():
	var item = $"/root/Inventory".current_item
	if item != null && put(item):
		 $"/root/Inventory".put()
	pass # Replace with function body.

func update():
	log_out()
