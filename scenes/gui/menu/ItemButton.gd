extends Button

signal item_menu_picked(item_button)

func _ready():
	connect("pressed", self, "item_button_pressed")
	connect("item_menu_picked", get_parent().get_parent(), "item_menu_picked")

func item_button_pressed():
	emit_signal("item_menu_picked", self)
