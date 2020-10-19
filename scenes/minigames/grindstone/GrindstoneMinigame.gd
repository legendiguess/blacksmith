extends Node2D
var grindstone_rect = Rect2(63,27,4,10)

var image_texture = ImageTexture.new()
var image = Image.new()
var image_path = ""
var upper_pixels = []

var current_weapon
var speed_sharpen = 0.05


func _ready():
	set_process(false)

func open(weapon):
	current_weapon = weapon
	image_path = $"/root/ItemTable".sprite[current_weapon.id].resource_path
	var weapon_type = $GrindSprite.define_type(current_weapon.id)
	$GrindSprite.region_rect = weapon_type[0]
	$GrindSprite.texture = $"/root/ItemTable".sprite[current_weapon.id]
	speed_sharpen = weapon_type[1]
	image = Image.new()
	image.load(image_path)
	image_texture.create_from_image(image)
	upper_pixels = get_upper_pixels()
	show()
	set_process(true)
	pass

func set_texture():
	image_texture.create_from_image(image)
	image_texture.flags = 1
	$GrindSprite.texture =image_texture

func _process(delta):
	var item_region = $GrindSprite.region_rect
	var flag_swap_texture =  false
	for i in range(upper_pixels.size()):
		var current_rect = Rect2(upper_pixels[i] + $GrindSprite.position, Vector2(1,1))
		if current_rect.intersects(grindstone_rect):
			var pixel_position = upper_pixels[i]+ item_region.position
			flag_swap_texture = true
			image.lock()
			var current_color = image.get_pixelv(pixel_position)
			image.set_pixelv(pixel_position, current_color.linear_interpolate(Color.white, speed_sharpen))
			image.unlock()
	update()
	if flag_swap_texture:
		set_texture()
	pass

func _draw():
	draw_rect(grindstone_rect, Color.blueviolet)

func _input(event):
	if event is InputEventMouseMotion:
		$GrindSprite.global_position = event.position
	pass

func get_upper_pixels():
	var item_region = $GrindSprite.region_rect
	var zero_color = Color(0,0,0,0)
	var x = item_region.position.x
	var y = item_region.position.y
	var x1 = 0
	var y1 = 0
	var acc = []
	image.lock()
	print(image.get_width())
	while x+x1 < (item_region.position.x + item_region.size.x) && x+x1 < image.get_width():
		y1 = 0
		while y + y1 < (item_region.position.y + item_region.size.y) && y + y1 < image.get_height():
			if image.get_pixel(x + x1,y+y1) != zero_color:
				acc.append(Vector2(x1,y1))
				break
			y1+=1
		x1+=1
	image.unlock()
	return acc
	

