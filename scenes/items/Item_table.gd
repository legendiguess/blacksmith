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
var weapon_ids = [Ids.COPPER_INGOT, Ids.FANTASIUM_ORE]

#Каждому id предмета соответсвует массив спрайтов для предмета(спрайт предмета на полу, в руках и в инвентаре), 
var sprite = {
	#руды
	Ids.COPPER_ORE: preload("res://sprites/ore/Copper.png"),
	Ids.IRON_ORE: preload("res://sprites/ore/Iron.png"),
	Ids.SILVER_ORE: preload("res://sprites/ore/Silver.png"),
	Ids.GOLDEN_ORE: preload("res://sprites/ore/Gold.png"),
	Ids.FANTASIUM_ORE : preload("res://sprites/ore/Fantasium.png"),
	#Слитки
	Ids.COPPER_INGOT: preload("res://sprites/ingots/Copper.png"),
	Ids.IRON_INGOT: preload("res://sprites/ingots/Iron.png"),
	Ids.SILVER_INGOT: preload("res://sprites/ingots/Silver.png"),
	Ids.GOLDEN_INGOT: preload("res://sprites/ingots/Gold.png"),
	Ids.FANTASIUM_INGOT: preload("res://sprites/ingots/Fantasium.png")
}


#(Возможно нужно перенести в скрипт наковальни)Каждому предмету, который крафтиться на наковальне соответсвует массив вещей для рецептов
var incus_recipes = {
	
}

func correct_test():
	#Проверка что для каждого предмета из ids есть спрайт, выведение ошибки(если присутсвует)
	pass
