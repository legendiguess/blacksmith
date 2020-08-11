extends Node
# Массив строк зависит от языка
onready var item_table = get_node("../ItemTable")
var names
func _ready():
	names = {
		item_table.ids.copper_ore : "Copper ore"
	}
	pass
	
