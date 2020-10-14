extends Node
onready var character_inventory = get_node("../Character/Inventory")
onready var weapon_menu = get_node("../GUI/WeaponMenu")
onready var anvil_scene = get_node("../GUI/AnvilMinigame")
onready var anvil_sprite = get_node("Area2D/Sprite")

var anvil_ingot_sprite_table = {
	ItemTable.Ids.COPPER_INGOT: preload("res://sprites/minigames/anvil_minigame/CopperFirstPerson.png"),
	ItemTable.Ids.IRON_INGOT: preload("res://sprites/minigames/anvil_minigame/IronFirstPerson.png"),
	ItemTable.Ids.SILVER_INGOT: preload("res://sprites/minigames/anvil_minigame/SilverFirstPerson.png"),
	ItemTable.Ids.GOLDEN_INGOT: preload("res://sprites/minigames/anvil_minigame/GoldFirstPerson.png"),
	ItemTable.Ids.FANTASIUM_INGOT: preload("res://sprites/minigames/anvil_minigame/FantasiumFirstPerson.png"),
}
func check_if_player_item_is_ingot():
	var current_item = character_inventory.current_item
	if current_item.id == ItemTable.Ids.COPPER_INGOT:
		return true
	elif current_item.id == ItemTable.Ids.IRON_INGOT:
		return true
	elif current_item.id == ItemTable.Ids.SILVER_INGOT:
		return true
	elif current_item.id == ItemTable.Ids.GOLDEN_INGOT:
		return true
	elif current_item.id == ItemTable.Ids.FANTASIUM_INGOT:
		return true
	else:
		return false

func _on_anvil_input_event(viewport, event, shape_idx):
	if event is InputEventMouse and Input.is_action_just_pressed("left_mouse_button"):
		if character_inventory.current_item != null and check_if_player_item_is_ingot():
			weapon_menu.open(character_inventory.current_item.id)
		else:
			print("You need ingot to start work")

func what_weapon_is_selected(weapon_id):
	anvil_scene.show()
	anvil_sprite.visible = false
	anvil_scene.weapon_id = weapon_id
	anvil_scene.forge_weapon(weapon_id)
	anvil_scene.first_person_ingot_sprite.texture = anvil_ingot_sprite_table[character_inventory.current_item.id]
