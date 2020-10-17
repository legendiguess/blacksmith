extends AudioStreamPlayer

var loaded_music_list = []
var current_music_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("finished", self, "music_finished_playing")

func load_music_list(music_names_list):
	for music_name in music_names_list:
		loaded_music_list.append(load(Music.files_paths[music_name]))
	if !loaded_music_list.empty():
		self.stream = loaded_music_list[0]

func music_finished_playing():
	current_music_index += 1
	if current_music_index == loaded_music_list.size():
		current_music_index = 0
	stream = loaded_music_list[current_music_index]
	play()
