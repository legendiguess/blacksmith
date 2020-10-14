extends PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	settings_to_gui()
	$"VBoxContainer/HBoxContainer/Button2".connect("pressed", self, "settings_from_gui")

func settings_to_gui():
	$"VBoxContainer/VBoxContainer/HSlider".value = Settings.master_volume 
	$"VBoxContainer/VBoxContainer/HSlider2".value = Settings.sfx_volume
	$"VBoxContainer/VBoxContainer/HSlider3".value = Settings.music_volume
	
	if Settings.control_type == Settings.ControlType.ByTap:
		$"VBoxContainer/VBoxContainer/HBoxContainer/Button1".disabled = true
		$"VBoxContainer/VBoxContainer/HBoxContainer/Button2".disabled = false
	elif Settings.control_type == Settings.ControlType.VisualButtons:
		$"VBoxContainer/VBoxContainer/HBoxContainer/Button1".disabled = false
		$"VBoxContainer/VBoxContainer/HBoxContainer/Button2".disabled = true

func settings_from_gui():
	Settings.master_volume = $"VBoxContainer/VBoxContainer/HSlider".value
	Settings.sfx_volume = $"VBoxContainer/VBoxContainer/HSlider2".value
	Settings.music_volume = $"VBoxContainer/VBoxContainer/HSlider3".value
	
	if $"VBoxContainer/VBoxContainer/HBoxContainer/Button1".disabled:
		Settings.control_type = Settings.ControlType.ByTap
	else:
		Settings.control_type = Settings.ControlType.VisualButtons
	
	Settings.save_settings_to_file()
