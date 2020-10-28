extends Control

signal item_selected(index)

func _ready():
	$Menu.connect("item_selected", self, "item_selected")
	self.show()

func open(chest):
	$Menu.remove_all_items_buttons()
	
	for item in chest.storage.items:
		$Menu.add_item_button(item, ItemTable.sprite[item.id], null)
	
	$Menu.show()
	$ChestClosing.stop()
	$ChestOpening.play()

func item_selected(item_dictionary):
	var counter = 0
	for item_button in $Menu.item_buttons_container.get_children():
		if item_button == item_dictionary.button:
			emit_signal("item_selected", counter)
			$ChestOpening.stop()
			$ChestClosing.play()
			return
		counter += 1
