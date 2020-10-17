extends "res://scenes/abstractions/Event.gd"

func _init():
	weapon_pull = [
		ItemTable.Ids.COPPER_BATTLE_AXE,
		ItemTable.Ids.IRON_BATTLE_AXE,
		ItemTable.Ids.SILVER_BATTLE_AXE,
		ItemTable.Ids.GOLDEN_BATTLE_AXE,
		ItemTable.Ids.FANTASIUM_BATTLE_AXE,
	]
	phrases = [
		"Сегодня тестовый день, сделайте - ",
		"Сегодня замечательный день чтобы сделать"
	]
	event_name = "Тестовый день"
	music_names_to_play = [Music.Names.LOOP_MINSTREL_DANCE]
