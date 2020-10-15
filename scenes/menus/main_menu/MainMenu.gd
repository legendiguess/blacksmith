extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"VBoxContainer/PanelContainer2/HBoxContainer/Button3".connect("pressed", self, "button_to_settings_pressed")

func button_to_settings_pressed():
	get_tree().change_scene("res://scenes/menus/settings_menu/SettingsMenu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
