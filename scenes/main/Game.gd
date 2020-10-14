extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$CashierWindowEntranceZone.connect("character_pass_to_left", $Camera2D, "character_pass_to_left")
	$CashierWindowEntranceZone.connect("character_pass_to_right", $Camera2D, "character_pass_to_right")
