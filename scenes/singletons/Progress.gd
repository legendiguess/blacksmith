extends Node

var progress_save_file_path = "user://progress.save"

var next_day = 0
var gold = 0

func save_to_file():
	var progress_save_file = File.new()
	progress_save_file.open(progress_save_file_path, File.WRITE)
	
	progress_save_file.store_line(to_json(
		{
			"next_day": self.next_day,
			"gold": self.gold,
		}
	))
	
	progress_save_file.close()

func load_from_file():
	var progress_save_file = File.new()
	if not progress_save_file.file_exists(progress_save_file_path):
		save_to_file()
	else:
		progress_save_file.open(progress_save_file_path, File.READ)
		var loaded_save_file = parse_json(progress_save_file.get_line())
		
		self.next_day = loaded_save_file.next_day
		self.gold = loaded_save_file.gold

# Called when the node enters the scene tree for the first time.
func _ready():
	load_from_file()
