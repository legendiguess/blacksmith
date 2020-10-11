extends "res://scenes/events/abstract_event.gd"
onready var It = get_node("/root/ItemTable")

func _ready():
	weapon_pull = [It.Ids.COPPER_BATTLE_AXE,
	It.Ids.IRON_BATTLE_AXE,
	It.Ids.SILVER_BATTLE_AXE,
	It.Ids.GOLDEN_BATTLE_AXE,
	It.Ids.FANTASIUM_BATTLE_AXE,]
	phrases = ["Сегодня тестовый день, сделайте - "]
	event_name = "Тестовый день"

	pass
