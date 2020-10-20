extends TextureButton

signal ingot_zone_pressed(ingot_zone)

func _ready():
	connect("pressed", self, "pressed")

func pressed():
	emit_signal("ingot_zone_pressed", self)
