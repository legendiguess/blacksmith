extends Node2D

var order # id оружия
var sprites = []#Разные типы спрайтов
var phrase = "" 
func init(id):
	order = id

func say():
	return (phrase)
	 
func _ready():
	pass
