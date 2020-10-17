extends "res://scenes/items/Base_item.gd"

enum Weapon_states{
	BLADE,
	SHARPENED,
	HAFTEN
}

var weapon_state = Weapon_states.BLADE

func _ready():
	pass

func sharpen():
	weapon_state = Weapon_states.SHARPENED

func haften():
	weapon_state = Weapon_states.HAFTEN


