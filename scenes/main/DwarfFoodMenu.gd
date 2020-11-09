extends Control

var choosen_ore_id

signal food_selected(ore_id, food_id)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Menu.connect("item_selected", self, "item_selected")
	# Добавить кнопки еды
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.APPLE) , null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.CHEESE), null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.CHICKEN_LEG), null, null)
	$Menu.add_item_button(ItemFactory.new_item(ItemTable.Ids.CHICKEN), null, null)
	
	var food_prices = ItemTable.food_stats.values()
	for item_button in $Menu.item_buttons_container.get_children():
		var food_price = food_prices.pop_back().cost
		if food_price == 0:
			item_button.text += " (%s)" % tr("FREE")
		else:
			item_button.text += " (%s золота)" % str(food_price)
	self.show()

func player_selected_ore(ore_id):
	choosen_ore_id = ore_id
	$Menu.show()

func item_selected(item_dictionary):
	emit_signal("food_selected", choosen_ore_id, item_dictionary.id)
