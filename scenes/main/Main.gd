extends Node

func _ready():
	$Game/Chest.connect("opened", $GUI/ChestMenu, "open")
	$Game/Grindstone.connect("opened", $G)
	$GUI/ChestMenu.connect("item_selected", $Game/Chest, "take_item_to_character")
	
	init(1, load("res://scenes/events/test_event.gd").new())
	
	$GUI.show()

func init(number, event):
	$"Game/Сashier".set_event(event)
	$"Game/Сashier".generate_day()
