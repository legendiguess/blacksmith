extends "res://scenes/events/BaseEvent.gd"

func _init():
	weapon_pull = [
		ItemTable.Ids.COPPER_INGOT,
	]
	phrases = [
		"Сегодня тестовый день, сделайте - ",
		"Сегодня замечательный день чтобы сделать"
	]
	event_name = "Тестовый день"
	music_names_to_play = [Music.Names.LOOP_MINSTREL_DANCE]
