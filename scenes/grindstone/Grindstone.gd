extends StaticBody2D
# Ложим лезвие - получаем наточенное лезвие
var item = load("res://scenes/items/Base_item.gd")
onready var inventory = get_node("/root/Main/Game/Character/Inventory")
onready var item_factory = get_node("/root/ItemFactory")
onready var storage = $Storage

signal opened(opened_chest)

func _ready():
	storage.number_of_slots = 1
	pass

func open():
	emit_signal("opened", self)

func take_item_to_character(item_id):
	var item_index = 0
	for item in storage.items:
		if item.id == item_id:
			storage.take(item_index)
			break
		item_index += 1

func put_item_to_grindstone():
	if inventory.current_item && $"/root/ItemTable".weapon_ids.has(inventory.current_item.id) && inventory.current_item.weapon_state == inventory.current_item.Weapon_states.BLADE:
		$Storage.put()
		#Миниигра
		$Storage.items[0].sharpen()
		$Storage.take(0)
		
