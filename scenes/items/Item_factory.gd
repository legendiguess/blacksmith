extends Node

var bs_item = load("res://scenes/items/Base_item.gd")
var bs_weapon = load("res://scenes/weapon/Base_weapon.gd")
onready var item_table = get_node("/root/ItemTable")
onready var strings = get_node("/root/Strings")



func _ready():
	pass

func new_item(id):
	var item
	if item_table.weapon_ids.has(id):
		item = bs_weapon.new()
		item.id = id
		item.sprites = item_table.sprite[id]
		item.item_name = strings.names[id]
		pass
	else:
		item = bs_item.new()
		item.id = id
		item.sprites = item_table.sprite[id]
		item.item_name = strings.names[id]
	return item

	

