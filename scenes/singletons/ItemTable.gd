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
	Ids.COPPER_BATTLE_AXE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Coppper.png"),
	},
	Ids.IRON_BATTLE_AXE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Iron.png"),
	},
	Ids.SILVER_BATTLE_AXE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Silver.png"),
	},
	Ids.GOLDEN_BATTLE_AXE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Gold.png"),
	},
	Ids.FANTASIUM_BATTLE_AXE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/Fantasium.png"),
	},

	#Лезвие
	Ids.COPPER_BATTLE_AXE_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/blade/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/blade/Copper.png"),
	},
	Ids.IRON_BATTLE_AXE_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/blade/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/blade/Iron.png"),
	},
	Ids.SILVER_BATTLE_AXE_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/blade/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/blade/Silver.png"),
	},
	Ids.GOLDEN_BATTLE_AXE_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/blade/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/blade/Gold.png"),
	},
	Ids.FANTASIUM_BATTLE_AXE_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/blade/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/blade/Fantasium.png"),
	},
	
	#Рукоять
	Ids.BATTLE_AXE_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/battle_axe/handle/Handle.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/battle_axe/handle/Handle.png"),
	},

	#Кинжал
	Ids.COPPER_DAGGER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/Copper.png"),
	},
	Ids.IRON_DAGGER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/Iron.png"),
	},
	Ids.SILVER_DAGGER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/Silver.png"),
	},
	Ids.GOLDEN_DAGGER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/Gold.png"),
	},
	Ids.FANTASIUM_DAGGER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/Fantasium.png"),
	},

	#Лезвие
	Ids.COPPER_DAGGER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/blade/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/blade/Copper.png"),
	},
	Ids.IRON_DAGGER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/blade/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/blade/Iron.png"),
	},
	Ids.SILVER_DAGGER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/blade/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/blade/Silver.png"),
	},
	Ids.GOLDEN_DAGGER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/blade/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/blade/Gold.png"),
	},
	Ids.FANTASIUM_DAGGER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/blade/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/blade/Fantasium.png"),
	},

	#Рукоять
	Ids.DAGGER_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/handle/Handle.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/handle/Handle.png"),
	},

	#Больстер
	Ids.COPPER_DAGGER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/bolster/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/bolster/Copper.png"),
	},
	Ids.IRON_DAGGER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/bolster/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/bolster/Iron.png"),
	},
	Ids.SILVER_DAGGER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/bolster/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/bolster/Silver.png"),
	},
	Ids.GOLDEN_DAGGER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/bolster/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/bolster/Gold.png"),
	},
	Ids.FANTASIUM_DAGGER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/bolster/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/bolster/Fantasium.png"),
	},

	#Гарда
	Ids.COPPER_DAGGER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/guard/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/guard/Copper.png"),
	},
	Ids.IRON_DAGGER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/guard/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/guard/Iron.png"),
	},
	Ids.SILVER_DAGGER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/guard/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/guard/Silver.png"),
	},
	Ids.GOLDEN_DAGGER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/guard/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/guard/Gold.png"),
	},
	Ids.FANTASIUM_DAGGER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/dagger/guard/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/dagger/guard/Fantasium.png"),
	},

	#Алебарда
	Ids.COPPER_HALBERD: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/Copper.png"),
	},
	Ids.IRON_HALBERD: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/Iron.png"),
	},
	Ids.SILVER_HALBERD: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/Silver.png"),
	},
	Ids.GOLDEN_HALBERD: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/Gold.png"),
	},
	Ids.FANTASIUM_HALBERD: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/Fantasium.png"),
	},

	#Лезвие
	Ids.COPPER_HALBERD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/blade/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/blade/Copper.png"),
	},
	Ids.IRON_HALBERD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/blade/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/blade/Iron.png"),
	},
	Ids.SILVER_HALBERD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/blade/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/blade/Silver.png"),
	},
	Ids.GOLDEN_HALBERD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/blade/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/blade/Gold.png"),
	},
	Ids.FANTASIUM_HALBERD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/blade/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/blade/Fantasium.png"),
	},

	#Рукоять
	Ids.HALBERD_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/handle/Handle.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/handle/Handle.png"),
	},

	#Больстер
	Ids.COPPER_HALBERD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/bolster/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/bolster/Copper.png"),
	},
	Ids.IRON_HALBERD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/bolster/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/bolster/Iron.png"),
	},
	Ids.SILVER_HALBERD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/bolster/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/bolster/Silver.png"),
	},
	Ids.GOLDEN_HALBERD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/bolster/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/bolster/Gold.png"),
	},
	Ids.FANTASIUM_HALBERD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/halberd/bolster/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/halberd/bolster/Fantasium.png"),
	},

	#Полутораручный меч
	Ids.COPPER_LONGSWORD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/Copper.png"),
	},
	Ids.IRON_LONGSWORD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/Iron.png"),
	},
	Ids.SILVER_LONGSWORD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/Silver.png"),
	},
	Ids.GOLDEN_LONGSWORD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/Gold.png"),
	},
	Ids.FANTASIUM_LONGSWORD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/Fantasium.png"),
	},

	#Лезвие
	Ids.COPPER_LONGSWORD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/blade/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/blade/Copper.png"),
	},
	Ids.IRON_LONGSWORD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/blade/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/blade/Iron.png"),
	},
	Ids.SILVER_LONGSWORD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/blade/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/blade/Silver.png"),
	},
	Ids.GOLDEN_LONGSWORD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/blade/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/blade/Gold.png"),
	},
	Ids.FANTASIUM_LONGSWORD_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/blade/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/blade/Fantasium.png"),
	},

	#Рукоять
	Ids.LONGSWORD_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/handle/Handle.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/handle/Handle.png"),
	},

	#Больстер
	Ids.COPPER_LONGSWORD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/bolster/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/bolster/Copper.png"),
	},
	Ids.IRON_LONGSWORD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/bolster/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/bolster/Iron.png"),
	},
	Ids.SILVER_LONGSWORD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/bolster/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/bolster/Silver.png"),
	},
	Ids.GOLDEN_LONGSWORD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/bolster/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/bolster/Gold.png"),
	},
	Ids.FANTASIUM_LONGSWORD_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/bolster/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/bolster/Fantasium.png"),
	},
	
	#Гарда
	Ids.COPPER_LONGSWORD_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/guard/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/guard/Copper.png"),
	},
	Ids.IRON_LONGSWORD_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/guard/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/guard/Iron.png"),
	},
	Ids.SILVER_LONGSWORD_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/guard/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/guard/Silver.png"),
	},
	Ids.GOLDEN_LONGSWORD_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/guard/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/guard/Gold.png"),
	},
	Ids.FANTASIUM_LONGSWORD_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/longsword/guard/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/longsword/guard/Fantasium.png"),
	},

	#Рапира
	Ids.COPPER_RAPIER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/Copper.png"),
	},
	Ids.IRON_RAPIER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/Iron.png"),
	},
	Ids.SILVER_RAPIER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/Silver.png"),
	},
	Ids.GOLDEN_RAPIER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/Gold.png"),
	},
	Ids.FANTASIUM_RAPIER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/Fantasium.png"),
	},

	#Лезвие
	Ids.COPPER_RAPIER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/blade/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/blade/Copper.png"),
	},
	Ids.IRON_RAPIER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/blade/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/blade/Iron.png"),
	},
	Ids.SILVER_RAPIER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/blade/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/blade/Silver.png"),
	},
	Ids.GOLDEN_RAPIER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/blade/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/blade/Gold.png"),
	},
	Ids.FANTASIUM_RAPIER_BLADE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/blade/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/blade/Fantasium.png"),
	},
	
	#Рукоять
	Ids.COPPER_RAPIER_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/handle/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/handle/Copper.png"),
	},
	Ids.IRON_RAPIER_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/handle/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/handle/Iron.png"),
	},
	Ids.SILVER_RAPIER_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/handle/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/handle/Silver.png"),
	},
	Ids.GOLDEN_RAPIER_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/handle/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/handle/Gold.png"),
	},
	Ids.FANTASIUM_RAPIER_HANDLE: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/handle/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/handle/Fantasium.png"),
	},
	
	#Больстер
	Ids.COPPER_RAPIER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/bolster/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/bolster/Copper.png"),
	},
	Ids.IRON_RAPIER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/bolster/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/bolster/Iron.png"),
	},
	Ids.SILVER_RAPIER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/bolster/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/bolster/Silver.png"),
	},
	Ids.GOLDEN_RAPIER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/bolster/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/bolster/Gold.png"),
	},
	Ids.FANTASIUM_RAPIER_BOLSTER: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/bolster/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/bolster/Fantasium.png"),
	},
	
	#Гарда
	Ids.COPPER_RAPIER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/guard/Copper.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/guard/Copper.png"),
	},
	Ids.IRON_RAPIER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/guard/Iron.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/guard/Iron.png"),
	},
	Ids.SILVER_RAPIER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/guard/Silver.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/guard/Silver.png"),
	},
	Ids.GOLDEN_RAPIER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/guard/Gold.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/guard/Gold.png"),
	},
	Ids.FANTASIUM_RAPIER_GUARD: {
		"closeup": preload("res://sprites/weapons/closeup/rapier/guard/Fantasium.png"),
		"long_shot": preload("res://sprites/weapons/long_shot/rapier/guard/Fantasium.png"),
	}
}

func correct_test():
	#Проверка что для каждого предмета из ids есть спрайт, выведение ошибки(если присутсвует)
	pass
