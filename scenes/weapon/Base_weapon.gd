extends "res://scenes/items/Base_item.gd"

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


