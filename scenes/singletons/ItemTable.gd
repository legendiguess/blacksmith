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
	
#Лезвие
	COPPER_BATTLE_AXE_BLADE,
	IRON_BATTLE_AXE_BLADE,
	SILVER_BATTLE_AXE_BLADE,
	GOLDEN_BATTLE_AXE_BLADE,
	FANTASIUM_BATTLE_AXE_BLADE,
	
#Рукоять
	BATTLE_AXE_HANDLE

#Кинжал
	COPPER_DAGGER,
	IRON_DAGGER,
	SILVER_DAGGER,
	GOLDEN_DAGGER,
	FANTASIUM_DAGGER,
	
#Лезвие
	COPPER_DAGGER_BLADE,
	IRON_DAGGER_BLADE,
	SILVER_DAGGER_BLADE,
	GOLDEN_DAGGER_BLADE,
	FANTASIUM_DAGGER_BLADE,

#Рукоять
	DAGGER_HANDLE,

#Больстер
	COPPER_DAGGER_BOLSTER,
	IRON_DAGGER_BOLSTER,
	SILVER_DAGGER_BOLSTER,
	GOLDEN_DAGGER_BOLSTER,
	FANTASIUM_DAGGER_BOLSTER,

#Гарда
	COPPER_DAGGER_GUARD,
	IRON_DAGGER_GUARD,
	SILVER_DAGGER_GUARD,
	GOLDEN_DAGGER_GUARD,
	FANTASIUM_DAGGER_GUARD,

#Алебарда
	COPPER_HALBERD,
	IRON_HALBERD,
	SILVER_HALBERD,
	GOLDEN_HALBERD,
	FANTASIUM_HALBERD,

#Лезвие
	COPPER_HALBERD_BLADE,
	IRON_HALBERD_BLADE,
	SILVER_HALBERD_BLADE,
	GOLDEN_HALBERD_BLADE,
	FANTASIUM_HALBERD_BLADE,

#Рукоять
	HALBERD_HANDLE,

#Больстер
	COPPER_HALBERD_BOLSTER,
	IRON_HALBERD_BOLSTER,
	SILVER_HALBERD_BOLSTER,
	GOLDEN_HALBERD_BOLSTER,
	FANTASIUM_HALBERD_BOLSTER,

#Полутораручный меч
	COPPER_LONGSWORD,
	IRON_LONGSWORD,
	SILVER_LONGSWORD,
	GOLDEN_LONGSWORD,
	FANTASIUM_LONGSWORD,

#Лезвие
	COPPER_LONGSWORD_BLADE,
	IRON_LONGSWORD_BLADE,
	SILVER_LONGSWORD_BLADE,
	GOLDEN_LONGSWORD_BLADE,
	FANTASIUM_LONGSWORD_BLADE,

#Рукоять
	LONGSWORD_HANDLE

#Больстер
	COPPER_LONGSWORD_BOLSTER,
	IRON_LONGSWORD_BOLSTER,
	SILVER_LONGSWORD_BOLSTER,
	GOLDEN_LONGSWORD_BOLSTER,
	FANTASIUM_LONGSWORD_BOLSTER,
	
#Гарда
	COPPER_LONGSWORD_GUARD,
	IRON_LONGSWORD_GUARD,
	SILVER_LONGSWORD_GUARD,
	GOLDEN_LONGSWORD_GUARD,
	FANTASIUM_LONGSWORD_GUARD,

#Рапира
	COPPER_RAPIER,
	IRON_RAPIER,
	SILVER_RAPIER,
	GOLDEN_RAPIER,
	FANTASIUM_RAPIER,
	
#Лезвие
	COPPER_RAPIER_BLADE,
	IRON_RAPIER_BLADE,
	SILVER_RAPIER_BLADE,
	GOLDEN_RAPIER_BLADE,
	FANTASIUM_RAPIER_BLADE,
	
#Рукоять
	COPPER_RAPIER_HANDLE,
	IRON_RAPIER_HANDLE,
	SILVER_RAPIER_HANDLE,
	GOLDEN_RAPIER_HANDLE,
	FANTASIUM_RAPIER_HANDLE,
	
#Больстер
	COPPER_RAPIER_BOLSTER,
	IRON_RAPIER_BOLSTER,
	SILVER_RAPIER_BOLSTER,
	GOLDEN_RAPIER_BOLSTER,
	FANTASIUM_RAPIER_BOLSTER,
	
#Гарда
	COPPER_RAPIER_GUARD,
	IRON_RAPIER_GUARD,
	SILVER_RAPIER_GUARD,
	GOLDEN_RAPIER_GUARD,
	FANTASIUM_RAPIER_GUARD,
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

	#Лезвие
	Ids.COPPER_BATTLE_AXE_BLADE: preload("res://sprites/weapons/battle_axe/blade/Copper.png"),
	Ids.IRON_BATTLE_AXE_BLADE: preload("res://sprites/weapons/battle_axe/blade/Iron.png"),
	Ids.SILVER_BATTLE_AXE_BLADE: preload("res://sprites/weapons/battle_axe/blade/Silver.png"),
	Ids.GOLDEN_BATTLE_AXE_BLADE: preload("res://sprites/weapons/battle_axe/blade/Gold.png"),
	Ids.FANTASIUM_BATTLE_AXE_BLADE: preload("res://sprites/weapons/battle_axe/blade/Fantasium.png"),
	
	#Рукоять
	Ids.BATTLE_AXE_HANDLE: preload("res://sprites/weapons/battle_axe/handle/Handle.png"),

	#Кинжал
	Ids.COPPER_DAGGER: preload("res://sprites/weapons/dagger/Copper.png"),
	Ids.IRON_DAGGER: preload("res://sprites/weapons/dagger/Iron.png"),
	Ids.SILVER_DAGGER: preload("res://sprites/weapons/dagger/Silver.png"),
	Ids.GOLDEN_DAGGER: preload("res://sprites/weapons/dagger/Gold.png"),
	Ids.FANTASIUM_DAGGER: preload("res://sprites/weapons/dagger/Fantasium.png"),

	#Лезвие
	Ids.COPPER_DAGGER_BLADE: preload("res://sprites/weapons/dagger/blade/Copper.png"),
	Ids.IRON_DAGGER_BLADE: preload("res://sprites/weapons/dagger/blade/Iron.png"),
	Ids.SILVER_DAGGER_BLADE: preload("res://sprites/weapons/dagger/blade/Silver.png"),
	Ids.GOLDEN_DAGGER_BLADE: preload("res://sprites/weapons/dagger/blade/Gold.png"),
	Ids.FANTASIUM_DAGGER_BLADE: preload("res://sprites/weapons/dagger/blade/Fantasium.png"),

	#Рукоять
	Ids.DAGGER_HANDLE: preload("res://sprites/weapons/dagger/handle/Handle.png"),

	#Больстер
	Ids.COPPER_DAGGER_BOLSTER: preload("res://sprites/weapons/dagger/bolster/Copper.png"),
	Ids.IRON_DAGGER_BOLSTER: preload("res://sprites/weapons/dagger/bolster/Iron.png"),
	Ids.SILVER_DAGGER_BOLSTER: preload("res://sprites/weapons/dagger/bolster/Silver.png"),
	Ids.GOLDEN_DAGGER_BOLSTER: preload("res://sprites/weapons/dagger/bolster/Gold.png"),
	Ids.FANTASIUM_DAGGER_BOLSTER: preload("res://sprites/weapons/dagger/bolster/Fantasium.png"),

	#Гарда
	Ids.COPPER_DAGGER_GUARD: preload("res://sprites/weapons/dagger/guard/Copper.png"),
	Ids.IRON_DAGGER_GUARD: preload("res://sprites/weapons/dagger/guard/Iron.png"),
	Ids.SILVER_DAGGER_GUARD: preload("res://sprites/weapons/dagger/guard/Silver.png"),
	Ids.GOLDEN_DAGGER_GUARD: preload("res://sprites/weapons/dagger/guard/Gold.png"),
	Ids.FANTASIUM_DAGGER_GUARD: preload("res://sprites/weapons/dagger/guard/Fantasium.png"),

	#Алебарда
	Ids.COPPER_HALBERD: preload("res://sprites/weapons/halberd/Copper.png"),
	Ids.IRON_HALBERD: preload("res://sprites/weapons/halberd/Iron.png"),
	Ids.SILVER_HALBERD: preload("res://sprites/weapons/halberd/Silver.png"),
	Ids.GOLDEN_HALBERD: preload("res://sprites/weapons/halberd/Gold.png"),
	Ids.FANTASIUM_HALBERD: preload("res://sprites/weapons/halberd/Fantasium.png"),

	#Лезвие
	Ids.COPPER_HALBERD_BLADE: preload("res://sprites/weapons/halberd/blade/Copper.png"),
	Ids.IRON_HALBERD_BLADE: preload("res://sprites/weapons/halberd/blade/Iron.png"),
	Ids.SILVER_HALBERD_BLADE: preload("res://sprites/weapons/halberd/blade/Silver.png"),
	Ids.GOLDEN_HALBERD_BLADE: preload("res://sprites/weapons/halberd/blade/Gold.png"),
	Ids.FANTASIUM_HALBERD_BLADE: preload("res://sprites/weapons/halberd/blade/Fantasium.png"),

	#Рукоять
	Ids.HALBERD_HANDLE: preload("res://sprites/weapons/halberd/handle/Handle.png"),

	#Больстер
	Ids.COPPER_HALBERD_BOLSTER: preload("res://sprites/weapons/halberd/bolster/Copper.png"),
	Ids.IRON_HALBERD_BOLSTER: preload("res://sprites/weapons/halberd/bolster/Iron.png"),
	Ids.SILVER_HALBERD_BOLSTER: preload("res://sprites/weapons/halberd/bolster/Silver.png"),
	Ids.GOLDEN_HALBERD_BOLSTER: preload("res://sprites/weapons/halberd/bolster/Gold.png"),
	Ids.FANTASIUM_HALBERD_BOLSTER: preload("res://sprites/weapons/halberd/bolster/Fantasium.png"),

	#Полутораручный меч
	Ids.COPPER_LONGSWORD: preload("res://sprites/weapons/longsword/Copper.png"),
	Ids.IRON_LONGSWORD: preload("res://sprites/weapons/longsword/Iron.png"),
	Ids.SILVER_LONGSWORD: preload("res://sprites/weapons/longsword/Silver.png"),
	Ids.GOLDEN_LONGSWORD: preload("res://sprites/weapons/longsword/Gold.png"),
	Ids.FANTASIUM_LONGSWORD: preload("res://sprites/weapons/longsword/Fantasium.png"),

	#Лезвие
	Ids.COPPER_LONGSWORD_BLADE: preload("res://sprites/weapons/longsword/blade/Copper.png"),
	Ids.IRON_LONGSWORD_BLADE: preload("res://sprites/weapons/longsword/blade/Iron.png"),
	Ids.SILVER_LONGSWORD_BLADE: preload("res://sprites/weapons/longsword/blade/Silver.png"),
	Ids.GOLDEN_LONGSWORD_BLADE: preload("res://sprites/weapons/longsword/blade/Gold.png"),
	Ids.FANTASIUM_LONGSWORD_BLADE: preload("res://sprites/weapons/longsword/blade/Fantasium.png"),

	#Рукоять
	Ids.LONGSWORD_HANDLE: preload("res://sprites/weapons/longsword/handle/Handle.png"),

	#Больстер
	Ids.COPPER_LONGSWORD_BOLSTER: preload("res://sprites/weapons/longsword/bolster/Copper.png"),
	Ids.IRON_LONGSWORD_BOLSTER: preload("res://sprites/weapons/longsword/bolster/Iron.png"),
	Ids.SILVER_LONGSWORD_BOLSTER: preload("res://sprites/weapons/longsword/bolster/Silver.png"),
	Ids.GOLDEN_LONGSWORD_BOLSTER: preload("res://sprites/weapons/longsword/bolster/Gold.png"),
	Ids.FANTASIUM_LONGSWORD_BOLSTER: preload("res://sprites/weapons/longsword/bolster/Fantasium.png"),
	
	#Гарда
	Ids.COPPER_LONGSWORD_GUARD: preload("res://sprites/weapons/longsword/guard/Copper.png"),
	Ids.IRON_LONGSWORD_GUARD: preload("res://sprites/weapons/longsword/guard/Iron.png"),
	Ids.SILVER_LONGSWORD_GUARD: preload("res://sprites/weapons/longsword/guard/Silver.png"),
	Ids.GOLDEN_LONGSWORD_GUARD: preload("res://sprites/weapons/longsword/guard/Gold.png"),
	Ids.FANTASIUM_LONGSWORD_GUARD: preload("res://sprites/weapons/longsword/guard/Fantasium.png"),

	#Рапира
	Ids.COPPER_RAPIER: preload("res://sprites/weapons/rapier/Copper.png"),
	Ids.IRON_RAPIER: preload("res://sprites/weapons/rapier/Iron.png"),
	Ids.SILVER_RAPIER: preload("res://sprites/weapons/rapier/Silver.png"),
	Ids.GOLDEN_RAPIER: preload("res://sprites/weapons/rapier/Gold.png"),
	Ids.FANTASIUM_RAPIER: preload("res://sprites/weapons/rapier/Fantasium.png"),

	#Лезвие
	Ids.COPPER_RAPIER_BLADE: preload("res://sprites/weapons/rapier/blade/Copper.png"),
	Ids.IRON_RAPIER_BLADE: preload("res://sprites/weapons/rapier/blade/Iron.png"),
	Ids.SILVER_RAPIER_BLADE: preload("res://sprites/weapons/rapier/blade/Silver.png"),
	Ids.GOLDEN_RAPIER_BLADE: preload("res://sprites/weapons/rapier/blade/Gold.png"),
	Ids.FANTASIUM_RAPIER_BLADE: preload("res://sprites/weapons/rapier/blade/Fantasium.png"),
	
	#Рукоять
	Ids.COPPER_RAPIER_HANDLE: preload("res://sprites/weapons/rapier/handle/Copper.png"),
	Ids.IRON_RAPIER_HANDLE: preload("res://sprites/weapons/rapier/handle/Iron.png"),
	Ids.SILVER_RAPIER_HANDLE: preload("res://sprites/weapons/rapier/handle/Silver.png"),
	Ids.GOLDEN_RAPIER_HANDLE: preload("res://sprites/weapons/rapier/handle/Gold.png"),
	Ids.FANTASIUM_RAPIER_HANDLE: preload("res://sprites/weapons/rapier/handle/Fantasium.png"),
	
	#Больстер
	Ids.COPPER_RAPIER_BOLSTER: preload("res://sprites/weapons/rapier/bolster/Copper.png"),
	Ids.IRON_RAPIER_BOLSTER: preload("res://sprites/weapons/rapier/bolster/Iron.png"),
	Ids.SILVER_RAPIER_BOLSTER: preload("res://sprites/weapons/rapier/bolster/Silver.png"),
	Ids.GOLDEN_RAPIER_BOLSTER: preload("res://sprites/weapons/rapier/bolster/Gold.png"),
	Ids.FANTASIUM_RAPIER_BOLSTER: preload("res://sprites/weapons/rapier/bolster/Fantasium.png"),
	
	#Гарда
	Ids.COPPER_RAPIER_GUARD: preload("res://sprites/weapons/rapier/guard/Copper.png"),
	Ids.IRON_RAPIER_GUARD: preload("res://sprites/weapons/rapier/guard/Iron.png"),
	Ids.SILVER_RAPIER_GUARD: preload("res://sprites/weapons/rapier/guard/Silver.png"),
	Ids.GOLDEN_RAPIER_GUARD: preload("res://sprites/weapons/rapier/guard/Gold.png"),
	Ids.FANTASIUM_RAPIER_GUARD: preload("res://sprites/weapons/rapier/guard/Fantasium.png"),
}

func correct_test():
	#Проверка что для каждого предмета из ids есть спрайт, выведение ошибки(если присутсвует)
	pass
