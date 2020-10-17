extends PanelContainer

onready var preload_item_button = preload("res://scenes/gui/item_menu/ItemButton.tscn")

signal item_selected(item_dictionary)

export var use_quantity: bool
export var menu_name: String
export var menu_description: String

func add_item_button(item_id, quantity, additional):
	var new_item_button = preload_item_button.instance()
	new_item_button.setup(item_id, additional)
	if use_quantity:
		new_item_button.set_quantity(quantity)
	else:
		new_item_button.get_node("Quantity").queue_free()
	$VBoxContainer/VBoxContainer.add_child(new_item_button)
	new_item_button.connect("item_button_pressed", self, "item_button_pressed")

func remove_item_button_by_item_name(item_name):
	for item_button in $VBoxContainer/VBoxContainer.get_children():
		if item_button.text == item_name:
			item_button.queue_free()
			break

func remove_item_button_by_index(index):
	var counter = 0
	for item_button in $VBoxContainer/VBoxContainer.get_children():
		if counter == index:
			item_button.queue_free()
			break
		counter += 1

func _ready():
	hide()
	if !menu_name.empty():
		$VBoxContainer/Label.text = menu_name
	else:
		$VBoxContainer/Label.queue_free()
	if !menu_description.empty():
		$VBoxContainer/Label2.text = menu_description
	else:
		$VBoxContainer/Label2.queue_free()

func item_button_pressed(item_button):
	emit_signal("item_selected", {
		"id": item_button.item_id,
		"additional": item_button.additional
	})
	hide()
