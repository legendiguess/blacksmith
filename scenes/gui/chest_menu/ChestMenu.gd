extends Control

signal item_selected(weapon_id)

func _ready():
	$Menu.connect("item_selected", self, "item_selected")
	self.show()

func open(chest):
	for item_button in $Menu/VBoxContainer/VBoxContainer.get_children():
		item_button.queue_free()
	
	for item in chest.storage.items:
		$Menu.add_item_button(item.id, ItemTable.sprite[item.id], null)
	
	$Menu.show()
	$ChestClosing.stop()
	$ChestOpening.play()

func item_selected(item_dictionary):
	emit_signal("item_selected", item_dictionary.id)
	$ChestOpening.stop()
	$ChestClosing.play()
