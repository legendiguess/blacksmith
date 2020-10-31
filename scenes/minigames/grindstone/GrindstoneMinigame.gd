extends "res://scenes/abstractions/AbstractMinigame.gd"
onready var sparks_particle = get_node("Sparks")

var image_texture = ImageTexture.new()
var image
var image_rect = Vector2(0,0)
var grindstone_rect
var image_path = ""

var upper_pixels = []
var upper_pixel_completeness = []

var current_weapon
var speed_sharpen = 0.05
var finished = false

signal finish()

func _ready():
	._ready()
	var stone = $Stone
	var grindstone_image = Image.new()
	grindstone_image.load(stone.texture.resource_path)
	
	grindstone_rect = Rect2(stone.position.x - grindstone_image.get_height(), stone.position.y ,grindstone_image.get_height(), grindstone_image.get_width())

func open(weapon):
	._open()
	current_weapon = weapon
	finished = false
	image_path = current_weapon.get_closeup_sprite().resource_path
	$GrindSprite.texture = current_weapon.get_closeup_sprite()
	speed_sharpen = $GrindSprite.get_speed(current_weapon.id)
	image = Image.new()
	image.load(image_path)
	image_texture.create_from_image(image)
	image_rect = Vector2(image.get_width(), image.get_height())
	put_in_center()
	get_upper_pixels()
	show()
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
			if !Color.white.is_equal_approx(current_color):
				#var lr_color = current_color.linear_interpolate(Color.white, speed_sharpen)
				var new_color = color_add(current_color, speed_sharpen*2*delta)
				image.set_pixelv(pixel_position, new_color)
				flag_swap_texture = true
				if sparks_particle.is_emitting() == false:
					var rng = RandomNumberGenerator.new()
					rng.randomize()
					var random_number = rng.randf_range(3, 8)
					sparks_particle.amount = random_number
					sparks_particle.position = current_rect.position
					sparks_particle.emitting = true
				if Color.white.gray() - new_color.gray()< 0.01:
					upper_pixel_completeness[i] = true
					#image.set_pixelv(pixel_position, Color.white)
					check_completeness()
			image.unlock()
	update()
	if flag_swap_texture:
		set_texture()
	pass

func color_add(color, speed):
	if color.r <1:
		color.r +=speed
	if color.g <1:
		color.g +=speed
	if color.b <1:
		color.b +=speed
	return color
	
func _draw():
	draw_rect(grindstone_rect, Color.blueviolet)

var weapon_touched = false
func _input(event):
	if event is InputEventScreenTouch:
		if Rect2($GrindSprite.global_position, image_rect*scale).has_point(event.position):
			if !finished:
				if event.is_pressed():
					weapon_touched = true
				else:
					weapon_touched = false
					
			else:
				take_weapon()
	elif (weapon_touched and event is InputEventScreenDrag):
			$GrindSprite.global_position+=event.relative
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
	weapon_touched = false
	put_in_center()
	
func take_weapon():
	._stop()
	hide()
	set_process_input(false)
	emit_signal("finish")
	
func put_in_center():
	var window_size = get_viewport().get_visible_rect().size
	$GrindSprite.position.x =(window_size.x /2 - image.get_width()*2)/scale.x
	$GrindSprite.position.y = (window_size.y/2 - image.get_height()) / scale.y
	#$GrindSprite.position.x =  window_size.x / (2 * self.scale.x) - image.get_width()/2
	#$GrindSprite.position.y =  window_size.y /(2* self.scale.y)  - image.get_height()/2
