extends Button

export var action: String = ""


# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("button_down", self, "button_down")
	self.connect("button_up", self, "button_up")

func button_down():
	Input.action_press(action)

func button_up():
	Input.action_release(action)
