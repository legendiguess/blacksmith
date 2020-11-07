extends VBoxContainer

var order = preload("res://scenes/main/OrderQueue/Order.tscn")

func add(item, text):
	var new_order = order.instance()
	new_order.setup(item.get_closeup_sprite(), text)
	self.add_child(new_order)

func pop():
	get_child(0).queue_free()

func new_buyer_come(buyer):
	add(ItemFactory.new_item(buyer.order), "%s %s" % [buyer.say(), Strings.names[buyer.order]])

func buyer_left(buyer_index):
	var order_that_need_to_remove = get_children()[buyer_index]
	while order_that_need_to_remove.modulate.a > 0:
		yield(get_tree(), "idle_frame")
		order_that_need_to_remove.modulate.a -= 0.01
	order_that_need_to_remove.queue_free()
