extends Node2D

onready var temperature_bar = $HBoxContainer/Temperature
onready var melting_progress_bar = $HBoxContainer/MeltingProgress
onready var temperature_decrease_timer = $TemperatureTimer
onready var progress_timer = $ProgressTimer
onready var furnace_node = get_node(".")

func _ready():
	pass

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
	
var current_ore_in_furnace = ItemTable.Ids.COPPER_ORE

func ore_melting(ore_id):
	melting_progress_bar.max_value = ore_time[ore_id]
	current_ore_in_furnace = ore_id
	temperature_bar.visible = true
	melting_progress_bar.visible = true
	timers(0.2, 1)

func timers(temp, progress):
	temperature_decrease_timer.set_wait_time(temp)
	temperature_decrease_timer.start()
	progress_timer.set_wait_time(progress) 
	progress_timer.start()
	
func temperature_increase(amount):
	temperature_bar.value += amount

func _on_Button_pressed():
	temperature_increase(75)

func temperature_decrease_timer():
	temperature_bar.value -= 10

func melting_progress_timer():
	if melting_progress_bar.value >= ore_time[current_ore_in_furnace]:
		progress_timer.stop()
		melting_progress_bar.value = 0
		var ore_sprite = Sprite.new()
		ore_sprite.texture = ItemTable.sprite[ore_list[current_ore_in_furnace]]
		furnace_node.add_child(ore_sprite)
		
	elif temperature_bar.value >= ore_temperature[current_ore_in_furnace]:
		melting_progress_bar.value += 1
	else:
		melting_progress_bar.value -= 1
		
func start_pressed():
	ore_melting(ItemTable.Ids.FANTASIUM_ORE)
