extends Node
# Массив строк зависит от языка
onready var item_table = get_node("/root/ItemTable")
onready var names = {
		item_table.Ids.COPPER_ORE : tr("COPPER_ORE"),
		item_table.Ids.IRON_ORE : tr("IRON_ORE"),
		item_table.Ids.SILVER_ORE : tr("SILVER_ORE"),
		item_table.Ids.GOLDEN_ORE : tr("GOLDEN_ORE"),
		item_table.Ids.FANTASIUM_ORE : tr("FANTASIUM_ORE"),
		item_table.Ids.COPPER_INGOT : tr("COPPER_INGOT"),
		item_table.Ids.IRON_INGOT : tr("IRON_INGOT"),
		item_table.Ids.SILVER_INGOT : tr("SILVER_INGOT"),
		item_table.Ids.GOLDEN_INGOT: tr("GOLDEN_INGOT"),
		item_table.Ids.FANTASIUM_INGOT: tr("FANTASIUM_INGOT"),
	}

func _ready():
	pass
