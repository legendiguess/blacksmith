extends StaticBody2D

onready var inventory = get_node("/root/Main/Game/Character/Inventory")
var item_in_hand = null

signal player_asked_to_mine()

func mine(ore_id, food_id):
	$Timer.wait_time = ItemTable.food_stats[food_id].time
	$Timer.start()
	yield($Timer, "timeout")
	$DiggedOre.texture = ItemTable.sprite[ore_id]
	item_in_hand = ore_id

func ask_to_mine():
	emit_signal("player_asked_to_mine")

func give_item_to_player():
	inventory.current_item = ItemFactory.new_item(item_in_hand)
	inventory.update()
	item_in_hand = null
	$DiggedOre.texture = null
