extends Node2D
#вызывать при открытии
func _open():
	print("AbstractMinigame open")
	set_process(true)
	set_process_input(true)
#вызывать в _ready
func _ready():
	set_process(false)
	set_process_input(false)
	pass
#вызывать при закрытии 
func _stop():
	set_process(false)
	set_process_input(false)
	pass
