extends Node2D

var buyer = preload("res://scenes/buyer/Buyer.tscn")
var size_of_queue = 5 # Количество слотов в очереди
var queue_of_buyers = []

var current_event = null
const CHANCE_OF_EVENT = 0.8

var time_of_appearance = 18000 #Время появления нового покупателя

var current_buyer

func _ready():
	randomize()
	pass

func generate_day():
	generate_buyer()
	next_buyer()

func next_buyer():
	if queue_of_buyers.empty() or queue_of_buyers.front() == null:
		return #Очередь пуста
	current_buyer = queue_of_buyers.front()
	$Text_order.text = current_buyer.say() + $"/root/Strings".names[current_buyer.order]
	
func set_event(_event):
	current_event = _event
	pass
#Генерация пользователей
func generate_buyer():
	var random_id
	var random_phrase
	var rand = randf()
	if current_event and  rand < CHANCE_OF_EVENT:
		random_id = current_event.weapon_pull[randi()%current_event.weapon_pull.size()]
		random_phrase = current_event.phrases[randi()%current_event.phrases.size()]
		pass
	else: 
		 random_id = $"/root/ItemTable".weapon_ids[randi()%$"/root/ItemTable".weapon_ids.size()]
		 random_phrase = $"/root/Strings".default_phrases[randi()%$"/root/Strings".default_phrases.size()]
	var b = buyer.instance()
	b.init(random_id, random_phrase)
	queue_of_buyers.push_back(b)
	pass
	
func submit_order():
	var player_item = get_node("../Character/Inventory").current_item
	if player_item and player_item.id == current_buyer.order:
		get_node("../Character/Inventory").put()
		$Text_order.text = "Submited!!!"
		queue_of_buyers.pop_front()
		next_buyer()

func _on_Button_button_up():
	submit_order()
	update()
	pass # Replace with function body.
