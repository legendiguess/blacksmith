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
	items.resize(N)
#	for i in range (N):
#		items[i] = Item.new()
	items[0] = item_factory.new_item(item_table.ids.copper_ore)
	log_out()
	pass 

func log_out():
	for i in items:
		if i == null: continue
		var btn = Button.new()
		$VBoxContainer.add_child(btn)
		btn.text = i.log_out()
		btn.connect("button_down", self, "_on_click_item_button", [btn])
		items_button.append(btn)

func _on_click_item_button(btn):
	var i = items_button.find(btn)
	print(i)
	
