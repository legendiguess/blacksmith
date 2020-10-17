extends StaticBody2D
#Load sector
var item = load("res://scenes/items/Base_item.gd")
onready var item_factory = get_node("/root/ItemFactory")

onready var storage = $Storage

signal opened(opened_chest)

#Code sector
func _ready():
	#test
	storage.number_of_slots = 6
	storage.items.append(item_factory.new_item(ItemTable.Ids.COPPER_ORE))
	storage.items.append(item_factory.new_item(ItemTable.Ids.FANTASIUM_ORE))
	storage.items.append(item_factory.new_item(ItemTable.Ids.FANTASIUM_ORE))
	storage.items.append(item_factory.new_item(ItemTable.Ids.COPPER_INGOT))
	storage.items.append(item_factory.new_item(ItemTable.Ids.COPPER_DAGGER))
	#

func take_item_to_character(item_id):
	var item_index = 0
	for item in storage.items:
		if item.id == item_id:
			storage.take(item_index)
			break
		item_index += 1

func put_item_to_chest():
	$Storage.put()

func open():
	emit_signal("opened", self)
