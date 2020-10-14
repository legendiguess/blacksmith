extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Button1.connect("pressed", self, "controls_by_tap_chosen")
	$Button2.connect("pressed", self, "controls_visual_buttons_chosen")

func controls_by_tap_chosen():
	$Button1.disabled = true
	$Button2.disabled = false

func controls_visual_buttons_chosen():
	$Button1.disabled = false
	$Button2.disabled = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
