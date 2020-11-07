extends PanelContainer

func setup(icon, text):
	$HBoxContainer/TextureRect.texture = icon
	$HBoxContainer/Label.text = text

func _ready():
	while modulate.a < 1:
		yield(get_tree(), "idle_frame")
		modulate.a += 0.01

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
