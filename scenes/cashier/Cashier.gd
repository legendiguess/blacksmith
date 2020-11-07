extends Node2D

onready var order_arrival_timer = $OrderArrivalTimer

var buyer = preload("res://scenes/cashier/Buyer.tscn")
var size_of_queue = 5 # Количество слотов в очереди
var queue_of_buyers = []

var current_event = null
const CHANCE_OF_EVENT = 0.8

signal new_buyer_come(buyer)
signal buyer_left(buyer_index)

func setup(event):
	self.current_event = event
	generate_buyer()
	order_arrival_timer.connect("timeout", self, "order_arrival_timer_timeout")
	order_arrival_timer.orders_arrival_time = current_event.orders_arrival_time
	order_arrival_timer.restart()

#Генерация пользователей
func generate_buyer():
	if queue_of_buyers.size() > 5:
		return
	var random_id
	var random_phrase
	var rand = randf()
	if current_event and rand < CHANCE_OF_EVENT:
		random_id = current_event.weapon_pull[randi()%current_event.weapon_pull.size()]
		random_phrase = current_event.phrases[randi()%current_event.phrases.size()]
		pass
	else: 
		random_id = $"/root/ItemTable".weapon_ids[randi()%$"/root/ItemTable".weapon_ids.size()]
		random_phrase = $"/root/Strings".default_phrases[randi()%$"/root/Strings".default_phrases.size()]
	var b = buyer.instance()
	b.init(random_id, random_phrase, self.current_event.buyer_time_to_leave)
	b.connect("left", self, "buyer_left")
	queue_of_buyers.push_back(b)
	add_child(b)
	emit_signal("new_buyer_come", b)
	pass

func submit_order():
	var player_item = get_node("../Character/Inventory").current_item
	if player_item == null:
		return
	var counter = 0
	for buyer in queue_of_buyers:
		if buyer.order == player_item.id:
			get_node("../Character/Inventory").put()
			emit_signal("buyer_left", counter)
			remove_buyer(counter)
			return
		counter += 1
	pass

func order_arrival_timer_timeout():
	generate_buyer()
	order_arrival_timer.restart()

func buyer_left(buyer_that_left):
	var counter = 0
	for buyer in queue_of_buyers:
		if buyer == buyer_that_left:
			emit_signal("buyer_left", counter)
			remove_buyer(counter)
			return
		counter += 1

func remove_buyer(index):
	queue_of_buyers[index].queue_free()
	queue_of_buyers.remove(index)
