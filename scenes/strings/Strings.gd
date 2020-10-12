extends Node
# Массив строк зависит от языка
onready var item_table = get_node("/root/ItemTable")
onready var names = {
		item_table.Ids.COPPER_ORE : tr("COPPER_ORE"),
		item_table.Ids.IRON_ORE : tr("IRON_ORE"),
		item_table.Ids.SILVER_ORE : tr("SILVER_ORE"),
		item_table.Ids.GOLDEN_ORE : tr("GOLDEN_ORE"),
		item_table.Ids.FANTASIUM_ORE : tr("FANTASIUM_ORE"),
		item_table.Ids.COPPER_INGOT : tr("COPPER_INGOT"),
		item_table.Ids.IRON_INGOT : tr("IRON_INGOT"),
		item_table.Ids.SILVER_INGOT : tr("SILVER_INGOT"),
		item_table.Ids.GOLDEN_INGOT: tr("GOLDEN_INGOT"),
		item_table.Ids.FANTASIUM_INGOT: tr("FANTASIUM_INGOT"),
		item_table.Ids.COPPER_BATTLE_AXE : tr("COPPER_BATTLE_AXE"),
		item_table.Ids.IRON_BATTLE_AXE : tr("IRON_BATTLE_AXE"),
		item_table.Ids.SILVER_BATTLE_AXE : tr("SILVER_BATTLE_AXE"),
		item_table.Ids.GOLDEN_BATTLE_AXE : tr("GOLDEN_BATTLE_AXE"),
		item_table.Ids.FANTASIUM_BATTLE_AXE : tr("FANTASIUM_BATTLE_AXE"),
		item_table.Ids.COPPER_DAGGER : tr("COPPER_DAGGER"),
		item_table.Ids.IRON_DAGGER : tr("IRON_DAGGER"),
		item_table.Ids.SILVER_DAGGER : tr("SILVER_DAGGER"),
		item_table.Ids.GOLDEN_DAGGER : tr("GOLDEN_DAGGER"),
		item_table.Ids.FANTASIUM_DAGGER : tr("FANTASIUM_DAGGER"),
		item_table.Ids.COPPER_HALBERD : tr("COPPER_HALBERD"),
		item_table.Ids.IRON_HALBERD : tr("IRON_HALBERD"),
		item_table.Ids.SILVER_HALBERD : tr("SILVER_HALBERD"),
		item_table.Ids.GOLDEN_HALBERD : tr("GOLDEN_HALBERD"),
		item_table.Ids.FANTASIUM_HALBERD : tr("FANTASIUM_HALBERD"),
		item_table.Ids.COPPER_LONGSWORD : tr("COPPER_LONGSWORD"),
		item_table.Ids.IRON_LONGSWORD : tr("IRON_LONGSWORD"),
		item_table.Ids.SILVER_LONGSWORD : tr("SILVER_LONGSWORD"),
		item_table.Ids.GOLDEN_LONGSWORD : tr("GOLDEN_LONGSWORD"),
		item_table.Ids.FANTASIUM_LONGSWORD : tr("FANTASIUM_LONGSWORD"),
		item_table.Ids.COPPER_RAPIER : tr("COPPER_RAPIER"),
		item_table.Ids.IRON_RAPIER : tr("IRON_RAPIER"),
		item_table.Ids.SILVER_RAPIER : tr("SILVER_RAPIER"),
		item_table.Ids.GOLDEN_RAPIER : tr("GOLDEN_RAPIER"),
		item_table.Ids.FANTASIUM_RAPIER : tr("FANTASIUM_RAPIER"),
	}
onready var default_phrases = ["Дефолт фраза:" ]
func _ready():
	pass
