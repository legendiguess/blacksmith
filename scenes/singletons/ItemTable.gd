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
	
#Еда
	APPLE,
	CHEESE,
	CHICKEN_LEG,
	CHICKEN
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
	Ids.COPPER_BATTLE_AXE: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/battle_axe/blade/Copper.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/battle_axe/blade/Copper.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/battle_axe/Copper.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Coppper.png")
		}
	},
	Ids.IRON_BATTLE_AXE: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/battle_axe/blade/Iron.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/battle_axe/blade/Iron.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/battle_axe/Iron.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Iron.png")
		}
	},
	Ids.SILVER_BATTLE_AXE: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/battle_axe/blade/Silver.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/battle_axe/blade/Silver.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/battle_axe/Silver.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Silver.png")
		}
	},
	Ids.GOLDEN_BATTLE_AXE: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/battle_axe/blade/Gold.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/battle_axe/blade/Gold.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/battle_axe/Gold.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Gold.png")
		}
	},
	Ids.FANTASIUM_BATTLE_AXE: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/battle_axe/blade/Fantasium.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/battle_axe/blade/Fantasium.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/battle_axe/Fantasium.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Fantasium.png")
		}
	},
	#Кинжал
	Ids.COPPER_DAGGER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/dagger/blade/Copper.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/dagger/blade/Copper.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/dagger/Copper.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/dagger/Copper.png")
			}
	},
	Ids.IRON_DAGGER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/dagger/blade/Iron.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/dagger/blade/Iron.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/dagger/Iron.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/dagger/Iron.png")
			}
	},
	Ids.SILVER_DAGGER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/dagger/blade/Silver.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/dagger/blade/Silver.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/dagger/Silver.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/dagger/Silver.png")
			}
	},
	Ids.GOLDEN_DAGGER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/dagger/blade/Gold.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/dagger/blade/Gold.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/dagger/Gold.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/dagger/Gold.png")
		}
	},
	Ids.FANTASIUM_DAGGER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/dagger/blade/Fantasium.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/dagger/blade/Fantasium.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/dagger/Fantasium.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/dagger/Fantasium.png")
			}
	},
	
	#Алебарда
	Ids.COPPER_HALBERD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/halberd/blade/Copper.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/halberd/blade/Copper.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/halberd/Copper.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/halberd/Copper.png")
			}
	},
	Ids.IRON_HALBERD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/halberd/blade/Iron.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/halberd/blade/Iron.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/halberd/Iron.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/halberd/Iron.png")
			}
	},
	Ids.SILVER_HALBERD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/halberd/blade/Silver.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/halberd/blade/Silver.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/halberd/Silver.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/halberd/Silver.png")
			}
	},
	Ids.GOLDEN_HALBERD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/halberd/blade/Gold.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/halberd/blade/Gold.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/halberd/Gold.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/halberd/Gold.png")
			}
	},
	Ids.FANTASIUM_HALBERD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/halberd/blade/Fantasium.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/halberd/blade/Fantasium.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/halberd/Fantasium.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/halberd/Fantasium.png")
			}
	},

	#Полутораручный меч
	Ids.COPPER_LONGSWORD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/longsword/blade/Copper.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/longsword/blade/Copper.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/longsword/Copper.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/longsword/Copper.png")
			}
	},
	Ids.IRON_LONGSWORD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/longsword/blade/Iron.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/longsword/blade/Iron.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/longsword/Iron.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/longsword/Iron.png")
			}
	},
	Ids.SILVER_LONGSWORD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/longsword/blade/Silver.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/longsword/blade/Silver.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/longsword/Silver.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/longsword/Silver.png")
			}
	},
	Ids.GOLDEN_LONGSWORD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/longsword/blade/Gold.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/longsword/blade/Gold.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/longsword/Gold.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/longsword/Gold.png")
			}
	},
	Ids.FANTASIUM_LONGSWORD: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/longsword/blade/Fantasium.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/longsword/blade/Fantasium.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/longsword/Fantasium.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/longsword/Fantasium.png")
			}
	},

	#Рапира
	Ids.COPPER_RAPIER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/rapier/blade/Copper.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/rapier/blade/Copper.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/rapier/Copper.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/rapier/Copper.png")
			}
	},
	Ids.IRON_RAPIER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/rapier/blade/Iron.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/rapier/blade/Iron.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/rapier/Iron.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/rapier/Iron.png")
			}
	},
	Ids.SILVER_RAPIER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/rapier/blade/Silver.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/rapier/blade/Silver.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/rapier/Silver.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/rapier/Silver.png")
			}
	},
	Ids.GOLDEN_RAPIER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/rapier/blade/Gold.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/rapier/blade/Gold.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/rapier/Gold.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/rapier/Gold.png")
			}
	},
	Ids.FANTASIUM_RAPIER: {
		"blade":{
			"closeup":preload("res://sprites/weapons/closeup/rapier/blade/Fantasium.png"),
			"long_shot":preload("res://sprites/weapons/long_shot/rapier/blade/Fantasium.png")
		},
		"full":{
			"closeup": preload("res://sprites/weapons/closeup/rapier/Fantasium.png"),
			"long_shot": preload("res://sprites/weapons/long_shot/rapier/Fantasium.png")
			}
	},
	Ids.APPLE: preload("res://sprites/food/Apple.png"),
	Ids.CHEESE: preload("res://sprites/food/Cheese.png"),
	Ids.CHICKEN_LEG: preload("res://sprites/food/ChickenLeg.png"),
	Ids.CHICKEN: preload("res://sprites/food/Chicken.png")
	}

var food_stats = {
	Ids.CHICKEN: {
		"cost": 70,
		"time": 8,
	},
	Ids.CHICKEN_LEG: {
		"cost": 50,
		"time": 20,
	},
	Ids.CHEESE: {
		"cost": 10,
		"time": 35,
	},
	Ids.APPLE: {
		"cost": 0,
		"time": 45,
	},
}
	
func correct_test():
	#Проверка что для каждого предмета из ids есть спрайт, выведение ошибки(если присутсвует)
	pass
