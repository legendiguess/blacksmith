extends Button

signal item_button_pressed(item_button)

var item_id = null
var additional = null

onready var item_button_texture = $TextureRect
onready var quantity_label = $Quantity

func setup(item_id, additional):
	if item_id != null:
		self.item_id = item_id
		item_button_texture.texture = ItemTable.sprite[item_id]
		self.text = Strings.names[item_id]
	self.additional = additional

func set_quantity(item_quantity):
	quantity_label.text = str(item_quantity)

func _ready():
	connect("pressed", self, "button_pressed")

func button_pressed():
	emit_signal("item_button_pressed", self)
