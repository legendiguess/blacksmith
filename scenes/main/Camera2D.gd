extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func character_pass_to_left():
	if position.x != 0:
		$Tween.stop_all()
		$Tween.interpolate_property(self, "position:x", self.position.x, 0, 1.5, Tween.TRANS_CUBIC, Tween.EASE_OUT)
		$Tween.start()

func character_pass_to_right():
	if position.x != 640:
		$Tween.stop_all()
		$Tween.interpolate_property(self, "position:x", self.position.x, 640, 1.5, Tween.TRANS_CUBIC, Tween.EASE_OUT)
		$Tween.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
