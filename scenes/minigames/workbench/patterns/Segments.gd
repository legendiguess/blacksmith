extends Node
onready var item_table = $"/root/ItemTable"
var segments
var segments_relative = []
var segments_connected = []

var parent_scale
const EPSILEN = 0.5 # допустимая длина вектора при котором происходит соединенние частей

signal finish()
signal stoppage()

func _ready():
	
	pass

func init(weapon):
	segments = get_children()
	init_segment_relative()
	random_position()
	init_segmnet_sprite(weapon)

var touched_weapon_segment = null
func _input(event):
	if event is InputEventScreenTouch:
		var weapon_segments = self.get_children()
		for weapon_segment in weapon_segments:
			if Rect2(weapon_segment.global_position,weapon_segment.get_rect().size* parent_scale).has_point(event.position):
				if event.is_pressed():
					touched_weapon_segment = weapon_segment
				else:
					touched_weapon_segment = null
						
	elif (touched_weapon_segment!= null 
		and event is InputEventScreenDrag):
			move_segment(touched_weapon_segment,event.relative)

func init_segment_relative():
	var weapon_segments = self.get_children()
	var current_segment = weapon_segments[0]
	segments_connected.empty()
	segments_connected.resize(weapon_segments.size())
	for i in range(1, weapon_segments.size()):
		segments_relative.append(current_segment.position - weapon_segments[i].position)
		current_segment = weapon_segments[i]
	pass

#Инициализация спрайтов каждого сегмента по материалам
func init_segmnet_sprite(weapon):
	var type = weapon.weapon_type
	var material = weapon.material
	var weapon_segments = self.get_children()
	var type_folder 
	match type:
		item_table.WeaponType.AXE:
			type_folder = "battle_axe/"
		item_table.WeaponType.DAGGER:
			type_folder = "dagger/"
		item_table.WeaponType.HALBERD:
			type_folder = "hablerd/"
		item_table.WeaponType.LONGSWORD:
			type_folder = "longsword/"
		item_table.WeaponType.RAPIER:
			type_folder = "rapier/"
	var material_file
	match material:
		item_table.WeaponMaterial.COPPER:
			material_file = "Copper.png"
		item_table.WeaponMaterial.IRON:
			material_file = "Iron.png"
		item_table.WeaponMaterial.SILVER:
			material_file = "Silver.png"
		item_table.WeaponMaterial.GOLD:
			material_file = "Gold.png"
		item_table.WeaponMaterial.FANTASIUM:
			material_file = "Fantasium.png"
	for segment in weapon_segments:
		var segment_name = segment.name.to_lower()
		segment_name +="/"
		var image_path
		if segment_name != "handle/":
			image_path = "res://sprites/weapons/closeup/" + type_folder + segment_name + material_file
		else:
			image_path = "res://sprites/weapons/closeup/" + type_folder + segment_name + "Handle.png"
		var image = Image.new()
		image.load(image_path)
		var image_texture = ImageTexture.new()
		image_texture.create_from_image(image)
		image_texture.flags = 1
		segment.texture = image_texture
			
		
			

#проверка на соединение
func check_segment_connect():
	var weapon_segments = self.get_children()
	for i in range(weapon_segments.size()-1):
		if ((weapon_segments[i].position - weapon_segments[i + 1].position) - segments_relative[i]).length() < EPSILEN:
			weapon_segments[i + 1].position = weapon_segments[i].position - segments_relative[i]
			segments_connected[i+1] = true
			#Партиклы сюда weapon_segments[i].position - segments_relative[i]
			#...
			
			#Проверка соединения всех частей
	
	for segment_index in range(1,segments_connected.size()):
			if !segments_connected[segment_index]:
				return;
	emit_signal("finish")
	pass
#поиск верхнего сегмента для рекусивного движения его сыновей
func move_segment(segment, move_vector):
	var weapon_segments = self.get_children()
	var segment_index = weapon_segments.find(segment)
	if segment_index != 0:
		if segments_connected[segment_index]:
			move_segment(weapon_segments[segment_index-1], move_vector)
			return
	segment.global_position+=move_vector
	if segment_index < weapon_segments.size()- 1:
		if segments_connected[segment_index + 1]:
			move_child_segment(segment_index +1, move_vector)
	check_segment_connect()

#рекурсивное движение связанных частей
func move_child_segment(segment_index, move_vector):
	var weapon_segments = self.get_children()
	weapon_segments[segment_index].global_position+=move_vector
	if segment_index < weapon_segments.size() - 1:
		if segments_connected[segment_index+1]:
			move_child_segment(segment_index +1, move_vector)

#задание рандомных позиций для сегментов
func random_position():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var weapon_segments = self.get_children()
	var window_size = get_viewport().get_visible_rect().size
	for weapon_segment in weapon_segments:
		weapon_segment.global_position = Vector2(rng.randi_range (0, window_size.x/parent_scale.x),
			 rng.randi_range (0, window_size.y/parent_scale.y))
	pass
