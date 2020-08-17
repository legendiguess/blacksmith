extends Node2D

onready var item_table = $"/root/ItemTable"
onready var strings = $"/root/Strings"
onready var available_resources = {
	item_table.Ids.COPPER_ORE: 600,
	item_table.Ids.IRON_ORE: 1200,
	item_table.Ids.GOLDEN_ORE: 1800,
	item_table.Ids.FANTASIUM_ORE: 2400
	
}#словарь с ключом(id-предмет), значение(время добычи)

onready var sandwichs = [(sandwich.new()).init("first", 1,1,1)]

func show():
	for b in $VBoxContainer.get_children():
		b.queue_free()
	var resources = available_resources.keys()
	for res in resources:
		var btn = Button.new()
		btn.text = Strings.names[res]
		$VBoxContainer.add_child(btn)

func _ready():
	show()
	pass
	

class sandwich:
	var name
	var accelerationfactor
	var sprite
	var cost
	func init(rname, rfactor, rsprite, rcost):
		name = rname
		accelerationfactor = rfactor
		sprite = rsprite
		cost = rcost
