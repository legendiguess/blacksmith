extends Node

var order # id оружия
var sprites = [] #Разные типы спрайтов
var phrase = "" 

signal left(buyer)

func init(id, _phrase, time_to_leave):
	order = id
	phrase = _phrase
	var timer = $Timer
	timer.wait_time = time_to_leave
	timer.connect("timeout", self, "timer_timeout")

func say():
	return (phrase)

func timer_timeout():
	emit_signal("left", self)
