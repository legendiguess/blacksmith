extends "res://scenes/items/BaseItem.gd"

enum WeaponStates{
	BLADE,
	SHARPENED,
	HAFTEN
}

var weapon_state = WeaponStates.BLADE

func _ready():
	pass

func sharpen():
	weapon_state = WeaponStates.SHARPENED

func haften():
	weapon_state = WeaponStates.HAFTEN

func get_sprite():
	if weapon_state == WeaponStates.HAFTEN:
		return sprites.full
	else:
		return sprites.blade

func get_closeup_sprite():
	return get_sprite().closeup

func get_long_shot_sprite():
	return get_sprite().long_shot
