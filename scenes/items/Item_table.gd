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
#Оружие
#Боевой топор
	COPPER_BATTLE_AXE,
	IRON_BATTLE_AXE,
	SILVER_BATTLE_AXE,
	GOLDEN_BATTLE_AXE,
	FANTASIUM_BATTLE_AXE,
#Кинжал
	COPPER_DAGGER,
	IRON_DAGGER,
	SILVER_DAGGER,
	GOLDEN_DAGGER,
	FANTASIUM_DAGGER,
#Алебарда
	COPPER_HALBERD,
	IRON_HALBERD,
	SILVER_HALBERD,
	GOLDEN_HALBERD,
	FANTASIUM_HALBERD,
#Полутораручный меч
	COPPER_LONGSWORD,
	IRON_LONGSWORD,
	SILVER_LONGSWORD,
	GOLDEN_LONGSWORD,
	FANTASIUM_LONGSWORD,
#Рапира
	COPPER_RAPIER,
	IRON_RAPIER,
	SILVER_RAPIER,
	GOLDEN_RAPIER,
	FANTASIUM_RAPIER,
}

#Ид всех пушек добавлять сюда
var weapon_ids = [Ids.COPPER_BATTLE_AXE,Ids.IRON_BATTLE_AXE,Ids.SILVER_BATTLE_AXE,Ids.GOLDEN_BATTLE_AXE,Ids.FANTASIUM_BATTLE_AXE,
Ids.COPPER_DAGGER, Ids.IRON_DAGGER,Ids.SILVER_DAGGER,Ids.GOLDEN_DAGGER,Ids.FANTASIUM_DAGGER,
Ids.COPPER_HALBERD,Ids.IRON_HALBERD,Ids.SILVER_HALBERD,Ids.GOLDEN_HALBERD,Ids.FANTASIUM_HALBERD,
Ids.COPPER_LONGSWORD,Ids.IRON_LONGSWORD,Ids.SILVER_LONGSWORD,Ids.GOLDEN_LONGSWORD,Ids.FANTASIUM_LONGSWORD,
Ids.COPPER_RAPIER, Ids.IRON_RAPIER,Ids.SILVER_RAPIER,Ids.GOLDEN_RAPIER,Ids.FANTASIUM_RAPIER

]

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
	Ids.FANTASIUM_INGOT: preload("res://sprites/ingots/Fantasium.png"),
	#Оружие
	#Боевой топор
	Ids.COPPER_BATTLE_AXE: preload("res://sprites/weapons/battle_axe/Coppper.png"),
	Ids.IRON_BATTLE_AXE: preload("res://sprites/weapons/battle_axe/Iron.png"),
	Ids.SILVER_BATTLE_AXE: preload("res://sprites/weapons/battle_axe/Silver.png"),
	Ids.GOLDEN_BATTLE_AXE: preload("res://sprites/weapons/battle_axe/Gold.png"),
	Ids.FANTASIUM_BATTLE_AXE: preload("res://sprites/weapons/battle_axe/Fantasium.png"),
	#Кинжал
	Ids.COPPER_DAGGER: preload("res://sprites/weapons/dagger/Copper.png"),
	Ids.IRON_DAGGER: preload("res://sprites/weapons/dagger/Iron.png"),
	Ids.SILVER_DAGGER: preload("res://sprites/weapons/dagger/Silver.png"),
	Ids.GOLDEN_DAGGER: preload("res://sprites/weapons/dagger/Gold.png"),
	Ids.FANTASIUM_DAGGER: preload("res://sprites/weapons/dagger/Fantasium.png"),
	#Алебарда
	Ids.COPPER_HALBERD: preload("res://sprites/weapons/halberd/Copper.png"),
	Ids.IRON_HALBERD: preload("res://sprites/weapons/halberd/Iron.png"),
	Ids.SILVER_HALBERD: preload("res://sprites/weapons/halberd/Silver.png"),
	Ids.GOLDEN_HALBERD: preload("res://sprites/weapons/halberd/Gold.png"),
	Ids.FANTASIUM_HALBERD: preload("res://sprites/weapons/halberd/Fantasium.png"),
	#Полутораручный меч
	Ids.COPPER_LONGSWORD: preload("res://sprites/weapons/longsword/Copper.png"),
	Ids.IRON_LONGSWORD: preload("res://sprites/weapons/longsword/Iron.png"),
	Ids.SILVER_LONGSWORD: preload("res://sprites/weapons/longsword/Silver.png"),
	Ids.GOLDEN_LONGSWORD: preload("res://sprites/weapons/longsword/Gold.png"),
	Ids.FANTASIUM_LONGSWORD: preload("res://sprites/weapons/longsword/Fantasium.png"),
	#Рапира
	Ids.COPPER_RAPIER: preload("res://sprites/weapons/rapier/Copper.png"),
	Ids.IRON_RAPIER: preload("res://sprites/weapons/rapier/Iron.png"),
	Ids.SILVER_RAPIER: preload("res://sprites/weapons/rapier/Silver.png"),
	Ids.GOLDEN_RAPIER: preload("res://sprites/weapons/rapier/Gold.png"),
	Ids.FANTASIUM_RAPIER: preload("res://sprites/weapons/rapier/Fantasium.png"),
}


#(Возможно нужно перенести в скрипт наковальни)Каждому предмету, который крафтиться на наковальне соответсвует массив вещей для рецептов
var incus_recipes = { 
	
}

func correct_test():
	#Проверка что для каждого предмета из ids есть спрайт, выведение ошибки(если присутсвует)
	pass
