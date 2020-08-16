extends Node

#Добавлять все предметы(руды/оружие/т.д.)
enum Ids{
	BASE_ITEM,
	COPPER_ORE,
	IRON_ORE,
	SILVER_ORE,
	GOLDEN_ORE,
	FANTASIUM_ORE,
#Слитки
	COPPER_INGOT,
	IRON_INGOT,
	SILVER_INGOT,
	GOLDEN_INGOT,
	FANTASIUM_INGOT,
}
#Ид всех пушек добавлять сюда
var weapon_ids = []

#Каждому id предмета соответсвует массив спрайтов для предмета(спрайт предмета на полу, в руках и в инвентаре), 
var sprite = {
	#руды
	Ids.COPPER_ORE : 1,
	#Слитки
	Ids.COPPER_INGOT: preload("res://sprites/ingots/Copper.png"),
	Ids.IRON_INGOT: preload("res://sprites/ingots/Iron.png"),
	Ids.SILVER_INGOT: preload("res://sprites/ingots/Silver.png"),
	Ids.GOLDEN_INGOT: preload("res://sprites/ingots/Gold.png"),
	Ids.FANTASIUM_INGOT: preload("res://sprites/ingots/Fantasium.png")
}

func correct_test():
	#Проверка что для каждого предмета из ids есть спрайт, выведение ошибки(если присутсвует)
	pass
