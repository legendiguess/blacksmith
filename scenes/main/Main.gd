extends Node

var current_event

func _ready():
	randomize()
	$Game/Chest.connect("opened", $GUI/ChestMenu, "open")
	
	$GUI/ChestMenu.connect("item_selected", $Game/Chest, "take_item_to_character")
	
	$Game/Grindstone.connect("opened", $GrindstoneMinigame, "open")
	$GrindstoneMinigame.connect("finish", $Game/Grindstone, "finish")
	$GrindstoneMinigame.connect("stoppage", $Game/Grindstone, "stoppage")
	$Game/Cashier.connect("new_buyer_come", $OrderQueue, "new_buyer_come")
	$Game/Cashier.connect("buyer_left", $OrderQueue, "buyer_left")

	# Setup day event
	current_event = load("res://scenes/events/TestEvent.gd").new()
	$Game/Cashier.setup(current_event)
	
	$BackgroundMusicPlayer.load_music_list(current_event.music_names_to_play)
	$BackgroundMusicPlayer.play()
	
	var Settings = $"/root/Settings"
	AudioServer.set_bus_volume_db(0, Settings.master_volume)
	AudioServer.set_bus_volume_db(1, Settings.sfx_volume)
	AudioServer.set_bus_volume_db(2, Settings.music_volume)
	
	$DayTimer.connect("timeout", self, "day_timer_timeout")

func day_timer_timeout():
	Progress.next_day += 1
	Progress.save_to_file()
	get_tree().change_scene("res://scenes/menus/main_menu/MainMenu.tscn")
