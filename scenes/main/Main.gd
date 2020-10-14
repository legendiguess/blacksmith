extends Node

func _ready():
	$Game/Chest.connect("opened", $GUI/ChestMenu, "open")
	$GUI/ChestMenu.connect("item_selected", $Game/Chest, "take_item_to_character")
	
	init(1, load("res://scenes/events/test_event.gd").new())
	
	$GUI.show()
	
	AudioServer.set_bus_volume_db(0, Settings.master_volume)
	AudioServer.set_bus_volume_db(1, Settings.sfx_volume)
	AudioServer.set_bus_volume_db(2, Settings.music_volume)

func init(number, event):
	$"Game/Сashier".set_event(event)
	$"Game/Сashier".generate_day()
