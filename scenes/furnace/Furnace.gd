extends StaticBody2D

onready var temperature_bar = $HBoxContainer/Temperature
onready var melting_progress_bar = $HBoxContainer/MeltingProgress
onready var temperature_decrease_timer = $TemperatureTimer
onready var progress_timer = $ProgressTimer
onready var furnace_storage = $Storage
onready var furnace_node = get_node(".")
onready var character_inventory = get_node("../Character/Inventory")
onready var item_factory = get_node("/root/ItemFactory")
onready var melted_metal_sprite = get_node("MetalSprite")

var ore_list = {
	ItemTable.Ids.COPPER_ORE: ItemTable.Ids.COPPER_INGOT,
	ItemTable.Ids.IRON_ORE: ItemTable.Ids.IRON_INGOT,
	ItemTable.Ids.SILVER_ORE: ItemTable.Ids.SILVER_INGOT,
	ItemTable.Ids.GOLDEN_ORE: ItemTable.Ids.GOLDEN_INGOT,
	ItemTable.Ids.FANTASIUM_ORE: ItemTable.Ids.FANTASIUM_INGOT
	}

var ore_time = {
	ItemTable.Ids.COPPER_ORE: 4,
	ItemTable.Ids.IRON_ORE: 6,
	ItemTable.Ids.SILVER_ORE: 8,
	ItemTable.Ids.GOLDEN_ORE: 10,
	ItemTable.Ids.FANTASIUM_ORE: 12
	}

var ore_temperature = {
	ItemTable.Ids.COPPER_ORE: 250,
	ItemTable.Ids.IRON_ORE: 400,
	ItemTable.Ids.SILVER_ORE: 550,
	ItemTable.Ids.GOLDEN_ORE: 600,
	ItemTable.Ids.FANTASIUM_ORE: 750
	}
	
var current_ore_in_furnace = null

func ore_melting(ore_id):
	
	melting_progress_bar.max_value = ore_time[ore_id]
	temperature_bar.visible = true
	melting_progress_bar.visible = true
	melted_metal_sprite.texture = ItemTable.sprite[current_ore_in_furnace.id]
	melted_metal_sprite.visible = true
	progress_timer.set_wait_time(1) 
	progress_timer.start()
	
func temperature_increase(amount):
	temperature_bar.value += amount

func use_furs():
	temperature_increase(75)
	temperature_decrease_timer.set_wait_time(0.2)
	temperature_decrease_timer.start()

func temperature_decrease_timer():
	temperature_bar.value -= 10

func melting_progress_timer():
	if melting_progress_bar.value >= ore_time[current_ore_in_furnace.id]:
		progress_timer.stop()
		melting_progress_bar.value = 0
		finish_melting()
	elif temperature_bar.value >= ore_temperature[current_ore_in_furnace.id]:
		melting_progress_bar.value += 1
	else:
		melting_progress_bar.value -= 1

func finish_melting():
	melting_progress_bar.visible = false
	furnace_storage.items.clear()
	furnace_storage.items.append(item_factory.new_item(ore_list[current_ore_in_furnace.id]))
	melted_metal_sprite.texture = ItemTable.sprite[ore_list[current_ore_in_furnace.id]]
	melted_metal_sprite.visible = true
	
func check_if_character_is_item_ore():
	var current_item = character_inventory.current_item
	
	if current_item.id == ItemTable.Ids.COPPER_ORE:
		return true
	elif current_item.id == ItemTable.Ids.IRON_ORE:
		return true
	elif current_item.id == ItemTable.Ids.SILVER_ORE:
		return true
	elif current_item.id == ItemTable.Ids.GOLDEN_ORE:
		return true
	elif current_item.id == ItemTable.Ids.FANTASIUM_ORE:
		return true
	else:
		return false
	
func check_if_item_in_furnace_is_ingot():
	var furnace_item_id = furnace_storage.items.front().id
	
	if furnace_item_id == ItemTable.Ids.COPPER_INGOT:
		return true
	elif furnace_item_id == ItemTable.Ids.IRON_INGOT:
		return true
	elif furnace_item_id == ItemTable.Ids.SILVER_INGOT:
		return true
	elif furnace_item_id == ItemTable.Ids.GOLDEN_INGOT:
		return true
	elif furnace_item_id == ItemTable.Ids.FANTASIUM_INGOT:
		return true
	else:
		return false

func use():
	if character_inventory.current_item != null and furnace_storage.items.empty() and check_if_character_is_item_ore() == true:
		current_ore_in_furnace = character_inventory.current_item
		furnace_storage.items.append(current_ore_in_furnace)
		character_inventory.put()
		ore_melting(current_ore_in_furnace.id)
	elif !furnace_storage.items.empty():
		if check_if_item_in_furnace_is_ingot() == true:
			if character_inventory.current_item == null:
				furnace_storage.take(0)
				melted_metal_sprite.visible = false
			elif check_if_character_is_item_ore() == true:
				current_ore_in_furnace = character_inventory.current_item
				furnace_storage.take(0)
				furnace_storage.items.append(current_ore_in_furnace)
				ore_melting(current_ore_in_furnace.id)
		else:
			use_furs()
