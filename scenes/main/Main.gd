extends Node2D

func _ready():
	init(1, load("res://scenes/events/test_event.gd").new())
	pass
func init(number, event):
	$"Сashier".set_event(event)
	$"Сashier".generate_day()
	pass
	
