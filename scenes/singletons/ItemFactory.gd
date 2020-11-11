extends Node

var bs_item = load("res://scenes/items/BaseItem.gd")
var bs_weapon = load("res://scenes/items/Weapon.gd")
onready var item_table = $"/root/ItemTable"

onready var axe = {
	"ids": [$"/root/ItemTable".Ids.COPPER_BATTLE_AXE,$"/root/ItemTable".Ids.IRON_BATTLE_AXE,
	 $"/root/ItemTable".Ids.SILVER_BATTLE_AXE, $"/root/ItemTable".Ids.GOLDEN_BATTLE_AXE, 
	$"/root/ItemTable".Ids.FANTASIUM_BATTLE_AXE],
	"type": item_table.WeaponType.AXE
}

onready var dagger = {
	"ids": [$"/root/ItemTable".Ids.COPPER_DAGGER,$"/root/ItemTable".Ids.IRON_DAGGER,
	 $"/root/ItemTable".Ids.SILVER_DAGGER, $"/root/ItemTable".Ids.GOLDEN_DAGGER, 
	$"/root/ItemTable".Ids.FANTASIUM_DAGGER],
	"type": item_table.WeaponType.DAGGER
}

onready var halberd = {
	"ids": [$"/root/ItemTable".Ids.COPPER_HALBERD,$"/root/ItemTable".Ids.IRON_HALBERD,
	 $"/root/ItemTable".Ids.SILVER_HALBERD, $"/root/ItemTable".Ids.GOLDEN_HALBERD, 
	$"/root/ItemTable".Ids.FANTASIUM_HALBERD],
	"type": item_table.WeaponType.HALBERD
}

onready var longsword = {
	"ids": [$"/root/ItemTable".Ids.COPPER_LONGSWORD,$"/root/ItemTable".Ids.IRON_LONGSWORD,
	 $"/root/ItemTable".Ids.SILVER_LONGSWORD, $"/root/ItemTable".Ids.GOLDEN_LONGSWORD, 
	$"/root/ItemTable".Ids.FANTASIUM_LONGSWORD],
	"type": item_table.WeaponType.LONGSWORD
}

onready var rapier = {
	"ids": [$"/root/ItemTable".Ids.COPPER_RAPIER,$"/root/ItemTable".Ids.IRON_RAPIER,
	 $"/root/ItemTable".Ids.SILVER_RAPIER, $"/root/ItemTable".Ids.GOLDEN_RAPIER, 
	$"/root/ItemTable".Ids.FANTASIUM_RAPIER],
	"type": item_table.WeaponType.RAPIER
}
onready var weapons = [axe, dagger, halberd, longsword, rapier]
onready var weapons_material = [item_table.WeaponMaterial.COPPER, item_table.WeaponMaterial.IRON,item_table.WeaponMaterial.SILVER
, item_table.WeaponMaterial.GOLD, item_table.WeaponMaterial.FANTASIUM]


func _ready():
	pass

func new_item(id):
	var item
	if ItemTable.weapon_ids.has(id):
		item = bs_weapon.new()
		item.id = id
		item.sprites = ItemTable.sprite[id]
		item.item_name = Strings.names[id]
		for weapontype in weapons:
			if weapontype["ids"].has(id):
				item.weapon_type = weapontype["type"]
				item.material = weapons_material[weapontype["ids"].find(id)]
				break
		pass
	else:
		item = bs_item.new()
		item.id = id
		item.sprites = ItemTable.sprite[id]
		item.item_name = Strings.names[id]
	return item
