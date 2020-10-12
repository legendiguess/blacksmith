extends Node2D

var order # id оружия
var sprites = []#Разные типы спрайтов
var phrase = "" 
func init(id, _phrase):
	order = id
	phrase = _phrase

func say():
	return (phrase)
	 
func _ready():
	pass
