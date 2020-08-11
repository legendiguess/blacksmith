extends Node

var bs_item = load("res://scenes/items/Base_item.gd")
onready var item_table = get_node("../ItemTable")
onready var strings = get_node("../Strings")



func _ready():
	pass

func new_item(id):
	var item  = bs_item.new()
	item.id = id
	item.sprites = item_table.sprite[id]
	item.item_name = strings.names[id]
	return item

