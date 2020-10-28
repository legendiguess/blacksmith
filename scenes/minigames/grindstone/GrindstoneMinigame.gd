extends Node2D
var grindstone_rect = Rect2(63,10,4,10)

var image_texture = ImageTexture.new()
var image
var image_path = ""

var upper_pixels = []
var upper_pixel_completeness = []

var current_weapon
var speed_sharpen = 0.05
var finished = false

signal finish()

func _ready():
	set_process(false)

func open(weapon):
	current_weapon = weapon
	finished = false
	image_path = current_weapon.get_closeup_sprite().resource_path
	$GrindSprite.texture = current_weapon.get_closeup_sprite()
	speed_sharpen = $GrindSprite.get_speed(current_weapon.id)
	image = Image.new()
	image.load(image_path)
	image_texture.create_from_image(image)
	put_in_center()
	get_upper_pixels()
	show()
	set_process(true)
	pass

func set_texture():
	image_texture.create_from_image(image)
	image_texture.flags = 1
	$GrindSprite.texture =image_texture

func _process(delta):
	var flag_swap_texture =  false
	for i in range(upper_pixels.size()):
		var current_rect = Rect2(upper_pixels[i] + $GrindSprite.position, Vector2(1,1))
		if current_rect.intersects(grindstone_rect):
			var pixel_position = upper_pixels[i]
			image.lock()
			var current_color = image.get_pixelv(pixel_position)
			if Color.white.gray() - current_color.gray() > 0.01:
				var lr_color = current_color.linear_interpolate(Color.white, speed_sharpen)
				image.set_pixelv(pixel_position, lr_color)
				flag_swap_texture = true
				if lr_color.gray() - current_color.gray() < 0.01:
					upper_pixel_completeness[i] = true
					image.set_pixelv(pixel_position, Color.white)
					check_completeness()
			image.unlock()
	update()
	if flag_swap_texture:
		set_texture()
	pass

func _draw():
	draw_rect(grindstone_rect, Color.blueviolet)

func _input(event):
	if !finished:
		if event is InputEventScreenDrag:
			$GrindSprite.global_position += event.relative
	else:
		if event is InputEventScreenTouch:
			take_weapon()
	pass

func get_upper_pixels():
	var x = 0
	var y = 0
	var acc = []
	image.lock()
	while x < image.get_width():
		y = 0
		while y < image.get_height():
			if image.get_pixel(x,y).a != 0:
				acc.append(Vector2(x,y))
				break
			y+=1
		x+=1
	image.unlock()
	upper_pixel_completeness = []
	upper_pixels = acc
	for i in range(upper_pixels.size()):
		upper_pixel_completeness.append(false)

func check_completeness():
	for i in upper_pixel_completeness:
		if not i:
			return
	set_process(false)
	finished = true
	put_in_center()
	
func take_weapon():
	hide()
	emit_signal("finish")
	
func put_in_center():
	var window_size = get_viewport().size
	$GrindSprite.position.x =  window_size.x / (2 * self.scale.x) - image.get_width()/2
	$GrindSprite.position.y =  window_size.y /(2* self.scale.y)  - image.get_height()/2
