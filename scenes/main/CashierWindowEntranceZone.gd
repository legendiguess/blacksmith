extends Area2D


signal character_pass_to_left()
signal character_pass_to_right()

func _ready():
	self.connect("area_exited", self, "area_exited")

func area_exited(area):
	var sign_of_x = sign(self.position.x - area.get_parent().position.x)
	if sign_of_x == 1:
		emit_signal("character_pass_to_left")
	elif sign_of_x == -1:
		emit_signal("character_pass_to_right")
