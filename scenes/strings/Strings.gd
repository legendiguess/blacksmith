extends Node
# Массив строк зависит от языка
onready var item_table = get_node("/root/ItemTable")
var names
func _ready():
	names = {
		item_table.Ids.COPPER_ORE : "Copper ore",
		item_table.Ids.FANTASIUM_ORE : "Fantasium ore",
		item_table.Ids.COPPER_INGOT : "Copper ingot"
	}
	pass
	
