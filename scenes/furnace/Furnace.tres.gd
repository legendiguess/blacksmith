extends Node2D

onready var temperature_bar = $HBoxContainer/Temperature
onready var melting_progress_bar = $HBoxContainer/MeltingProgress

var temperature = 10

func temperature_change(amount):
	temperature_bar.value += amount


func _on_Button_pressed():
	temperature_change(10)
