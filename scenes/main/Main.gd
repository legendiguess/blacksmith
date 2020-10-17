extends Node

var current_event

func _ready():
	$Game/Chest.connect("opened", $GUI/ChestMenu, "open")
	#$Game/Grindstone.connect("opened", $G)
	$GUI/ChestMenu.connect("item_selected", $Game/Chest, "take_item_to_character")
	
	# Setup day event
	current_event = load("res://scenes/events/TestEvent.gd").new()
	$"Game/Сashier".set_event(current_event)
	$"Game/Сashier".generate_day()
	$BackgroundMusicPlayer.load_music_list(current_event.music_names_to_play)
	$BackgroundMusicPlayer.play()
	
	$GUI.show()
	var Settings = $"/root/Settings"
	AudioServer.set_bus_volume_db(0, Settings.master_volume)
	AudioServer.set_bus_volume_db(1, Settings.sfx_volume)
	AudioServer.set_bus_volume_db(2, Settings.music_volume)
