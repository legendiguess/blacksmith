extends StaticBody2D
onready var inventory = get_node("../Character/Inventory")

signal opened(workbench)

func _ready():
	pass
func use():
	var use_item = inventory.current_item
	if use_item != null and $"/root/ItemTable".weapon_ids.has(use_item.id) and (
	use_item.weapon_state == use_item.WeaponStates.SHARPENED):
		emit_signal("opened")
		pass
