extends Node

var bs_item = load("res://scenes/items/BaseItem.gd")
var bs_weapon = load("res://scenes/items/Weapon.gd")

func _ready():
	pass

func new_item(id):
	var item
	if ItemTable.weapon_ids.has(id):
		item = bs_weapon.new()
		item.id = id
		item.sprites = ItemTable.sprite[id].long_shot
		item.item_name = Strings.names[id]
		pass
	else:
		item = bs_item.new()
		item.id = id
		item.sprites = ItemTable.sprite[id]
		item.item_name = Strings.names[id]
	return item
