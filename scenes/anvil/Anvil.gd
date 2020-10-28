extends Control

onready var first_person_ingot_sprite = $IngotSprite
onready var forged_blade_sprite = $BladeSprite
onready var slider_sprite = get_node("SliderBar/Slider")
onready var slider_green_part = get_node("SliderBar/GreenSlider")
onready var character_inventory = get_node("../Game/Character/Inventory")
onready var item_factory = get_node("/root/ItemFactory")
onready var hitting_ingot_sound = $Ingot/Sparks/HittingIngot

var left_side_border = 0
var right_side_border = 0

var moving_right_state = 1
var is_weapon_forged_state = 0
var slider_speed = 250

var weapon_id = null
var finish_weapon

var halberd_pattern = [[0, 1, 0], [0, 1, 0], [1, 1, 0], [1, 1, 1]]
var battle_axe_pattern = [[1, 0, 0], [1, 1, 1], [1, 1, 0], [1, 0, 0]]
var dagger_pattern = [[0, 0, 0], [0, 0, 0], [0, 1, 0], [0, 1, 0]]
var longsword_pattern = [[0, 1, 0], [0, 1, 0], [0, 1, 0], [0, 1, 0]]
var rapier_pattern = [[0, 0, 0], [0, 1, 0], [0, 1, 0], [0, 1, 0]]
var pressed_map_array = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]]

var weapon_craft = {
	
	ItemTable.Ids.COPPER_BATTLE_AXE: battle_axe_pattern,
	ItemTable.Ids.IRON_BATTLE_AXE: battle_axe_pattern,
	ItemTable.Ids.SILVER_BATTLE_AXE: battle_axe_pattern,
	ItemTable.Ids.GOLDEN_BATTLE_AXE: battle_axe_pattern,
	ItemTable.Ids.FANTASIUM_BATTLE_AXE: battle_axe_pattern,
	
	ItemTable.Ids.COPPER_DAGGER: dagger_pattern,
	ItemTable.Ids.IRON_DAGGER: dagger_pattern,
	ItemTable.Ids.SILVER_DAGGER: dagger_pattern,
	ItemTable.Ids.GOLDEN_DAGGER: dagger_pattern,
	ItemTable.Ids.FANTASIUM_DAGGER: dagger_pattern,
	
	ItemTable.Ids.COPPER_HALBERD: halberd_pattern,
	ItemTable.Ids.IRON_HALBERD: halberd_pattern,
	ItemTable.Ids.SILVER_HALBERD: halberd_pattern,
	ItemTable.Ids.GOLDEN_HALBERD: halberd_pattern,
	ItemTable.Ids.FANTASIUM_HALBERD: halberd_pattern,
	
	ItemTable.Ids.COPPER_LONGSWORD: longsword_pattern,
	ItemTable.Ids.IRON_LONGSWORD: longsword_pattern,
	ItemTable.Ids.SILVER_LONGSWORD: longsword_pattern,
	ItemTable.Ids.GOLDEN_LONGSWORD: longsword_pattern,
	ItemTable.Ids.FANTASIUM_LONGSWORD: longsword_pattern,
	
	ItemTable.Ids.COPPER_RAPIER: rapier_pattern,
	ItemTable.Ids.IRON_RAPIER: rapier_pattern,
	ItemTable.Ids.SILVER_RAPIER: rapier_pattern,
	ItemTable.Ids.GOLDEN_RAPIER: rapier_pattern,
	ItemTable.Ids.FANTASIUM_RAPIER: rapier_pattern
}

var slider_green_zone_lenth = {
	
	ItemTable.Ids.COPPER_INGOT: 124,
	ItemTable.Ids.IRON_INGOT: 102,
	ItemTable.Ids.SILVER_INGOT: 80,
	ItemTable.Ids.GOLDEN_INGOT: 58,
	ItemTable.Ids.FANTASIUM_INGOT: 36
}

var scale_of_green_zone = {
	
	ItemTable.Ids.COPPER_INGOT: 1.454,
	ItemTable.Ids.IRON_INGOT: 1.215,
	ItemTable.Ids.SILVER_INGOT: 0.97,
	ItemTable.Ids.GOLDEN_INGOT: 0.725,
	ItemTable.Ids.FANTASIUM_INGOT: 0.49
}

func _process(delta):
	if moving_right_state == 1 and is_weapon_forged_state == 0:
		slider_sprite.position.x += slider_speed*delta
		if slider_sprite.position.x >=540:
			moving_right_state = 0
			
	elif moving_right_state == 0 and is_weapon_forged_state == 0:
		slider_sprite.position.x -= slider_speed*delta
		if slider_sprite.position.x <=142:
			moving_right_state = 1
	
	elif is_weapon_forged_state == 1 and self.visible == true:
		if Input.is_mouse_button_pressed(1):
			character_inventory.put()
			character_inventory.current_item = finish_weapon
			character_inventory.update()
			forged_blade_sprite.visible = false
			$SliderBar.visible = true
			is_weapon_forged_state = 0
			self.hide()

func _ready():
	for zone in $Ingot/GridContainer.get_children():
		zone.connect("ingot_zone_pressed", self, "zone_pressed" )
		
func zone_pressed(zone):
	if check_if_slider_in_zone() == true:
		var rng = RandomNumberGenerator.new()
		var sparks_particle = get_node("Ingot/Sparks")
		rng.randomize()
		var random_number = rng.randf_range(3, 8)
		sparks_particle.amount = random_number
		sparks_particle.position = Vector2(get_viewport().get_mouse_position())
		sparks_particle.emitting = true
		hitting_ingot_sound.play()
		var row = int(int(zone.name)/3)
		var column = int(zone.name)-int(int(zone.name)/3)*3
		pressed_map_array[row][column] = 1
		zone.disabled = true
		zone.spark.hide()
		slider_speed += slider_speed/20
		print(zone)
		generate_new_slider_pos()
	else:
		print("Dont hit")
	if weapon_craft[weapon_id] == pressed_map_array:
		finish_weapon = item_factory.new_item(weapon_id)
		forged_blade_sprite.texture = finish_weapon.get_closeup_sprite()
		is_weapon_forged_state = 1
		$SliderBar.visible = false
		first_person_ingot_sprite.visible = false
		forged_blade_sprite.visible = true

func forge_weapon(weapon):
	generate_new_slider_pos()
	pressed_map_array = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]]
	slider_speed = 250
	slider_green_part.scale = Vector2(scale_of_green_zone[character_inventory.current_item.id], 4.383)
	first_person_ingot_sprite.visible = true
	for row in range(0,4):
		for column in range(0,3):
			if (weapon_craft[weapon])[row][column] == 1:
				var zone = row*3+column
				zone = get_node("Ingot/GridContainer/" + str(zone))
				zone.disabled = false
				zone.spark.show()

func generate_new_slider_pos():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var random_number = rng.randf_range(142, 544)
	var left_slider_side_check = random_number - 142
	var right_slider_side_check = 544 - random_number

	if left_slider_side_check > right_slider_side_check:
		left_side_border = random_number-slider_green_zone_lenth[character_inventory.current_item.id]
		right_side_border = random_number
	else:
		left_side_border = random_number
		right_side_border = random_number+slider_green_zone_lenth[character_inventory.current_item.id]
		
	slider_green_part.position.x = (left_side_border + (slider_green_zone_lenth[character_inventory.current_item.id])/2)
	
func check_if_slider_in_zone():
	
	if slider_sprite.position.x < right_side_border and slider_sprite.position.x > left_side_border:
		return true
	else:
		return false
