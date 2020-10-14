extends "res://scenes/items/Base_item.gd"

enum Weapon_states{
	DEFAULT,
	SHARPENED
}

var weapon_state = Weapon_states.DEFAULT

func _ready():
	pass

func sharpen():
	weapon_state = Weapon_states.SHARPENED
	
