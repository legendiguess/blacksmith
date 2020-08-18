extends "res://scenes/abstract_storage/AbstractStorage.gd"

onready var item_table = $"/root/ItemTable"
onready var strings = $"/root/Strings"
onready var item_factory = $"/root/ItemFactory"
onready var available_resources = {
	item_table.Ids.COPPER_ORE: 10,
	item_table.Ids.IRON_ORE: 20,
	item_table.Ids.GOLDEN_ORE: 30,
	item_table.Ids.FANTASIUM_ORE: 40
	
}#словарь с ключом(id-предмет), значение(время добычи)
enum states{
	HIDDEN,
	ORE,
	SANDWICH,
	EXCAVATION
}
var state
var current_order #Id предмета что будет добываться
var current_sandwich #Id сэндвича который отдаем дворфу

onready var sandwichs = [(sandwich.new()).init("usual sandwich", 5, null, 15)]

func update():
	item_gui($OreContainer)
		
func fill_in():
	var resources = available_resources.keys()
	for res in resources:
		var btn = Button.new()
		btn.text = Strings.names[res]
		$OrderContainer.add_child(btn)
		btn.connect("button_up", self, "_on_click_order_button", [btn])
		
	for sandwich in sandwichs:
		var btn = Button.new()
		btn.text = sandwich.name + " speed: " + str(sandwich.acceleration_factor) + "  cost:" + str(sandwich.cost)
		$SandwichContainer.add_child(btn)
		btn.connect("button_up", self, "_on_click_sandwich_button", [btn])
		

func _ready():
	number_of_slots = 3
	update()
	fill_in()
	item_gui($OreContainer)
	change_state(states.HIDDEN)
	
	pass

func _process(_delta):
	if state == states.EXCAVATION:
		$Time.text = "time left : " + str(round($Timer.time_left))
	pass

func change_state(st):
	if st != states.EXCAVATION:
		$Time.hide()
	match st:
		states.HIDDEN:
			state_hidden()
		states.ORE:
			state_ore()
		states.SANDWICH:
			state_sandwich()
		states.EXCAVATION:
			state_excavation()
			
func state_hidden():
	state = states.HIDDEN
	$OrderContainer.hide()
	$OreContainer.hide()
	$SandwichContainer.hide()
	pass
func state_ore():
	state = states.ORE
	$OrderContainer.show()
	$OreContainer.show()
	pass
func state_sandwich():
	state = states.SANDWICH
	$OrderContainer.hide()
	$SandwichContainer.show()
	pass
func state_excavation():
	$Time.show()
	state = states.EXCAVATION
	$Timer.start(available_resources[current_order] / sandwichs[current_sandwich].acceleration_factor)
	$OrderContainer.hide()
	$SandwichContainer.hide()

class sandwich:
	var name
	var acceleration_factor
	var sprite
	var cost
	func init(rname, rfactor, rsprite, rcost):
		name = rname
		acceleration_factor = rfactor
		sprite = rsprite
		cost = rcost
		return self


func _on_Button_button_up():
	if state == states.EXCAVATION:
		return
	if state == states.HIDDEN:
		change_state(states.ORE)
	else: 
		change_state(states.HIDDEN)
		
func take(item_index):
	if inventory.current_item == null:
		inventory.current_item = items[item_index]
		items.remove(item_index)
		update()
		inventory.update()
	else:
		push_error("you have an item in your inventory")

func _on_click_order_button(bt):
	if items.size() >= number_of_slots:
		push_error("too many things in the chest")
		return
	var button_id  = $OrderContainer.get_children().find(bt)
	current_order = available_resources.keys()[button_id]
	if current_order == -1: change_state(states.HIDDEN)
	change_state(states.SANDWICH)
	
	
func _on_click_sandwich_button(bt):
	current_sandwich = $SandwichContainer.get_children().find(bt)
	if current_sandwich == -1: change_state(states.HIDDEN)
	change_state(states.EXCAVATION)


func _on_Timer_timeout():
	items.push_back(item_factory.new_item(current_order))
	change_state(states.HIDDEN)
	item_gui($OreContainer)
	pass # Replace with function body.
