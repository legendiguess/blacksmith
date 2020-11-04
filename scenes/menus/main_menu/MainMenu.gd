extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$"VBoxContainer/PanelContainer2/HBoxContainer/Button3".connect("pressed", self, "button_to_settings_pressed")
	var play_button = $"VBoxContainer/PanelContainer2/HBoxContainer/Button2"
	if Progress.next_day == 0:
		play_button.text = "NEW_GAME"
	else:
		play_button.text = tr(play_button.text) % Progress.next_day
	play_button.connect("pressed", self, "play_button_pressed")

func play_button_pressed():
	get_tree().change_scene("res://scenes/main/Main.tscn")

func button_to_settings_pressed():
	get_tree().change_scene("res://scenes/menus/settings_menu/SettingsMenu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
