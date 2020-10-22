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
	storage.items.append(item_factory.new_item(ItemTable.Ids.IRON_INGOT))
	storage.items.append(item_factory.new_item(ItemTable.Ids.FANTASIUM_INGOT))
	storage.items.append(item_factory.new_item(ItemTable.Ids.IRON_LONGSWORD))
	storage.items.append(item_factory.new_item(ItemTable.Ids.IRON_LONGSWORD))
	storage.items.append(item_factory.new_item(ItemTable.Ids.IRON_LONGSWORD))
	storage.items.append(item_factory.new_item(ItemTable.Ids.IRON_LONGSWORD))

func take_item_to_character(selected_item_index):
	storage.take(selected_item_index)

func put_item_to_chest():
	$Storage.put()
	$PuttingItemInChest.play()

func open():
	emit_signal("opened", self)
