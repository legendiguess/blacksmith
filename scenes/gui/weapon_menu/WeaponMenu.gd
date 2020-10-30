extends Control

signal weapon_selected(weapon_id)

func _ready():
	$Menu.connect("item_selected", self, "item_selected")
	self.show()

func open(ingot_id):
	var weapon_id_array
	if ingot_id == ItemTable.Ids.COPPER_INGOT:
		weapon_id_array = [ItemTable.Ids.COPPER_BATTLE_AXE, ItemTable.Ids.COPPER_DAGGER, ItemTable.Ids.COPPER_HALBERD, ItemTable.Ids.COPPER_LONGSWORD, ItemTable.Ids.COPPER_RAPIER]
	elif ingot_id == ItemTable.Ids.IRON_INGOT:
		weapon_id_array = [ItemTable.Ids.IRON_BATTLE_AXE, ItemTable.Ids.IRON_DAGGER, ItemTable.Ids.IRON_HALBERD, ItemTable.Ids.IRON_LONGSWORD, ItemTable.Ids.IRON_RAPIER]
	elif ingot_id == ItemTable.Ids.SILVER_INGOT:
		weapon_id_array = [ItemTable.Ids.SILVER_BATTLE_AXE, ItemTable.Ids.SILVER_DAGGER, ItemTable.Ids.SILVER_HALBERD, ItemTable.Ids.SILVER_LONGSWORD, ItemTable.Ids.SILVER_RAPIER]
	elif ingot_id == ItemTable.Ids.GOLDEN_INGOT:
		weapon_id_array = [ItemTable.Ids.GOLDEN_BATTLE_AXE, ItemTable.Ids.GOLDEN_DAGGER, ItemTable.Ids.GOLDEN_HALBERD, ItemTable.Ids.GOLDEN_LONGSWORD, ItemTable.Ids.GOLDEN_RAPIER]
	elif ingot_id == ItemTable.Ids.FANTASIUM_INGOT:
		weapon_id_array = [ItemTable.Ids.FANTASIUM_BATTLE_AXE, ItemTable.Ids.FANTASIUM_DAGGER, ItemTable.Ids.FANTASIUM_HALBERD, ItemTable.Ids.FANTASIUM_LONGSWORD, ItemTable.Ids.FANTASIUM_RAPIER]
	
	$Menu.remove_all_items_buttons()
	
	for weapon_id in weapon_id_array:
		$Menu.add_item_button($"/root/ItemFactory".new_item(weapon_id), null, null)
	
	$Menu.show()

func item_selected(item_dictionary):
	emit_signal("weapon_selected", item_dictionary.id)
