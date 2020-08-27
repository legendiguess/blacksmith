extends Node

onready var inventory = get_node("/root/Node2D/Character/Inventory")
var number_of_slots:int  # Number of slots
var items = [] # Array of items
var items_button = [] # Array of buttons

onready var slots = 1
onready var visibility  = true

func put():
	var it = inventory.current_item
	if it != null and items.size() < number_of_slots:
		items.append(it)
		inventory.put()
		update()
		
func item_gui(container):
	for i in items_button:
		i.queue_free()
	items_button.clear()
	for i in items:
		if i == null: continue
		var btn = Button.new()
		container.add_child(btn)
		btn.connect("button_up", self, "_on_click_item_button", [btn])
		btn.text = i.log_out()
		items_button.append(btn)


func _on_click_item_button(btn):
	take(items_button.find(btn))
	
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
