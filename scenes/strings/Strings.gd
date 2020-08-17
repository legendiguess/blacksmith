extends Node
# Массив строк зависит от языка
onready var item_table = get_node("/root/ItemTable")
onready var names = {
		item_table.Ids.COPPER_ORE : "Copper ore",
		item_table.Ids.GOLDEN_ORE : "Golden ore",
		item_table.Ids.IRON_ORE : "Iron ore",
		item_table.Ids.FANTASIUM_ORE : "Fantasium ore",
		item_table.Ids.COPPER_INGOT : "Copper ingot"
	}
func _ready():
	
	pass


