extends Node2D
var opened = false
#вызывать при открытии
func _open():
	opened = true
	set_process(true)
	set_process_input(true)
#вызывать в _ready
func _ready():
	opened = false
	set_process(false)
	set_process_input(false)
	pass
#вызывать при закрытии 
func _stop():
	opened = false
	set_process(false)
	set_process_input(false)
	pass
