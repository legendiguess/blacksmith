extends Sprite

onready var axe = {
	"ids": [$"/root/ItemTable".Ids.COPPER_BATTLE_AXE,$"/root/ItemTable".Ids.IRON_BATTLE_AXE,
	 $"/root/ItemTable".Ids.SILVER_BATTLE_AXE, $"/root/ItemTable".Ids.GOLDEN_BATTLE_AXE, 
	$"/root/ItemTable".Ids.FANTASIUM_BATTLE_AXE],
}

onready var dagger = {
	"ids": [$"/root/ItemTable".Ids.COPPER_DAGGER,$"/root/ItemTable".Ids.IRON_DAGGER,
	 $"/root/ItemTable".Ids.SILVER_DAGGER, $"/root/ItemTable".Ids.GOLDEN_DAGGER, 
	$"/root/ItemTable".Ids.FANTASIUM_DAGGER],
}

onready var halberd = {
	"ids": [$"/root/ItemTable".Ids.COPPER_HALBERD,$"/root/ItemTable".Ids.IRON_HALBERD,
	 $"/root/ItemTable".Ids.SILVER_HALBERD, $"/root/ItemTable".Ids.GOLDEN_HALBERD, 
	$"/root/ItemTable".Ids.FANTASIUM_HALBERD],
}

onready var longsword = {
	"ids": [$"/root/ItemTable".Ids.COPPER_LONGSWORD,$"/root/ItemTable".Ids.IRON_LONGSWORD,
	 $"/root/ItemTable".Ids.SILVER_LONGSWORD, $"/root/ItemTable".Ids.GOLDEN_LONGSWORD, 
	$"/root/ItemTable".Ids.FANTASIUM_LONGSWORD],
}

onready var rapier = {
	"ids": [$"/root/ItemTable".Ids.COPPER_RAPIER,$"/root/ItemTable".Ids.IRON_RAPIER,
	 $"/root/ItemTable".Ids.SILVER_RAPIER, $"/root/ItemTable".Ids.GOLDEN_RAPIER, 
	$"/root/ItemTable".Ids.FANTASIUM_RAPIER],
}
onready var weapons = [axe, dagger, halberd, longsword, rapier]
onready var material_sharpen_speed = [0.25, 0.23, 0.2, 0.18, 0.15]

func get_speed(id):
	for weapon in weapons:
		var result = weapon["ids"].find(id)
		if result != -1:
			return material_sharpen_speed[result]
	
