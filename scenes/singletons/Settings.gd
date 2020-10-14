extends Node

enum ControlType {
	ByTap,
	VisualButtons
}

# Defautl settings
var master_volume = 0
var sfx_volume = 0
var music_volume = 0
var control_type = ControlType.ByTap

var settings_save_file_path = "user://settings.save"

func save_settings_to_file():
	var settings_save_file = File.new()
	settings_save_file.open(settings_save_file_path, File.WRITE)
	
	settings_save_file.store_line(to_json(
		{
			"master_volume": Settings.master_volume,
			"sfx_volume": Settings.sfx_volume,
			"music_volume": Settings.music_volume,
			"control_type": Settings.control_type
		}
	))
	
	settings_save_file.close()

func load_settings_from_file():
	var settings_save_file = File.new()
	if not settings_save_file.file_exists(settings_save_file_path):
		save_settings_to_file()
	else:
		settings_save_file.open(settings_save_file_path, File.READ)
		var loaded_save_file = parse_json(settings_save_file.get_line())
		
		Settings.master_volume = loaded_save_file.master_volume
		Settings.sfx_volume = loaded_save_file.sfx_volume
		Settings.music_volume = loaded_save_file.music_volume
		Settings.control_type = loaded_save_file.control_type

# Called when the node enters the scene tree for the first time.
func _ready():
	load_settings_from_file()
