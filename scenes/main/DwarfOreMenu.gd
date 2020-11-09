extends Control

signal player_selected_ore(ore_id)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Menu.connect("item_selected", self, "item_selected")
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.COPPER_ORE) , null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.IRON_ORE), null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.SILVER_ORE), null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.GOLDEN_ORE), null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.FANTASIUM_ORE), null, null)
	self.show()

func item_selected(item_dictionary):
	emit_signal("player_selected_ore", item_dictionary.id)

func open():
	$Menu.show()
