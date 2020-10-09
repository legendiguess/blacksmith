extends PanelContainer


onready var preload_item_button = preload("res://scenes/gui/menu/ItemButton.tscn")

signal item_menu_picked(item_button)

export var use_quantity: bool

func add_item_button(icon, item_name, item_quantity):
	var new_item_button = preload_item_button.instance()
	new_item_button.icon = icon
	new_item_button.text = item_name
	if use_quantity:
		new_item_button.get_node("Quantity").text = str(item_quantity)
	else:
		new_item_button.get_node("Quantity").queue_free()
	$VBoxContainer.add_child(new_item_button)

func remove_item_button_by_item_name(item_name):
	for item_button in $VBoxContainer.get_children():
		if item_button.text == item_name:
			item_button.queue_free()
			break

func remove_item_button_by_index(index):
	var counter = 0
	for item_button in $VBoxContainer.get_children():
		if counter == index:
			item_button.queue_free()
			break
		counter += 1

func _ready():
	hide()

func item_menu_picked(item_button):
	emit_signal("item_menu_picked", item_button)
	hide()
