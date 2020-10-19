extends Sprite

onready var axe = {
	"ids": [$"/root/ItemTable".Ids.COPPER_BATTLE_AXE,$"/root/ItemTable".Ids.IRON_BATTLE_AXE,
	 $"/root/ItemTable".Ids.SILVER_BATTLE_AXE, $"/root/ItemTable".Ids.GOLDEN_BATTLE_AXE, 
	$"/root/ItemTable".Ids.FANTASIUM_BATTLE_AXE],
	
	"region": Rect2(35, 0, 11, 9)
}

onready var dagger = {
	"ids": [$"/root/ItemTable".Ids.COPPER_DAGGER,$"/root/ItemTable".Ids.IRON_DAGGER,
	 $"/root/ItemTable".Ids.SILVER_DAGGER, $"/root/ItemTable".Ids.GOLDEN_DAGGER, 
	$"/root/ItemTable".Ids.FANTASIUM_DAGGER],
	
	"region": Rect2(11, 4, 16, 3)
}

onready var halberd = {
	"ids": [$"/root/ItemTable".Ids.COPPER_HALBERD,$"/root/ItemTable".Ids.IRON_HALBERD,
	 $"/root/ItemTable".Ids.SILVER_HALBERD, $"/root/ItemTable".Ids.GOLDEN_HALBERD, 
	$"/root/ItemTable".Ids.FANTASIUM_HALBERD],
	
	"region":  Rect2(115,0,22,21)
}

onready var longsword = {
	"ids": [$"/root/ItemTable".Ids.COPPER_LONGSWORD,$"/root/ItemTable".Ids.IRON_LONGSWORD,
	 $"/root/ItemTable".Ids.SILVER_LONGSWORD, $"/root/ItemTable".Ids.GOLDEN_LONGSWORD, 
	$"/root/ItemTable".Ids.FANTASIUM_LONGSWORD],
	
	"region":  Rect2(17,6,53,4)
}

onready var rapier = {
	"ids": [$"/root/ItemTable".Ids.COPPER_RAPIER,$"/root/ItemTable".Ids.IRON_RAPIER,
	 $"/root/ItemTable".Ids.SILVER_RAPIER, $"/root/ItemTable".Ids.GOLDEN_RAPIER, 
	$"/root/ItemTable".Ids.FANTASIUM_RAPIER],
	
	"region":  Rect2(12,7,53,2)
}
onready var weapons = [axe, dagger, halberd, longsword, rapier]
onready var material_sharpen_speed = [0.25, 0.125, 0.0625, 0.03, 0.01]

func define_type(id):
	for weapon in weapons:
		var result = weapon["ids"].find(id)
		if result != -1:
			return [weapon["region"], material_sharpen_speed[result]]
	
