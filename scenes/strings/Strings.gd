extends Node
# Массив строк зависит от языка
onready var item_table = get_node("../ItemTable")
var names
func _ready():
	names = {
		item_table.Ids.COPPER_ORE : "Copper ore"
	}
	pass
	
