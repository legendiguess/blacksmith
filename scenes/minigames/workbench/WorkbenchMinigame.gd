extends "res://scenes/abstractions/AbstractMinigame.gd"

onready var inventory = get_node("/root/Main/Game/Character/Inventory")
onready var item_table = $"/root/ItemTable"
onready var axe = preload("res://scenes/minigames/workbench/patterns/Axe.tscn")
onready var dagger = preload("res://scenes/minigames/workbench/patterns/Dagger.tscn")
onready var halberd = preload("res://scenes/minigames/workbench/patterns/Halberd.tscn")
onready var longsword = preload("res://scenes/minigames/workbench/patterns/Longsword.tscn")
onready var rapier = preload("res://scenes/minigames/workbench/patterns/Rapier.tscn")
var finished_sprite
var finished = false
var segment_node

func _ready():
	._ready()
	pass

func _input(event):
	if event is InputEventScreenTouch:
		if finished:
			if Rect2(finished_sprite.global_position,finished_sprite.get_rect().size*scale).has_point(event.position):
				finished_sprite.queue_free()
				finished = false
				inventory.update()
				hide()
				._stop()

func open():
	if opened:
		return
	._open()
	show()
	var current_weapon = inventory.current_item
	var type = current_weapon.weapon_type
	var weapon_segments
	match type:
		item_table.WeaponType.AXE:
			weapon_segments = axe
		item_table.WeaponType.DAGGER:
			weapon_segments = dagger
		item_table.WeaponType.HALBERD:
			weapon_segments = halberd
		item_table.WeaponType.LONGSWORD:
			weapon_segments = longsword
		item_table.WeaponType.RAPIER:
			weapon_segments = rapier
	segment_node = weapon_segments.instance()
	.add_child(segment_node)
	segment_node.parent_scale = scale
	segment_node.init(current_weapon)
	segment_node.connect("finish", self, "finish")
	
	put_in_center()
	
func put_in_center():
	var window_size = get_viewport().get_visible_rect().size
	$Segments.position.x =window_size.x /2/scale.x
	$Segments.position.y = window_size.y/2 / scale.y

func finish():
	segment_node.queue_free()
	var weapon = inventory.current_item
	weapon.haften()
	weapon.get_closeup_sprite()
	finished_sprite = Sprite.new()
	var image_texture = ImageTexture.new()
	image_texture = weapon.get_closeup_sprite()
	image_texture.flags = 1
	finished_sprite.texture = image_texture
	var window_size = get_viewport().get_visible_rect().size
	.add_child(finished_sprite)
	finished_sprite.position.x =window_size.x /scale.x/2
	finished_sprite.position.y = window_size.y/scale.y/2
	finished = true
	
func stoppage():
	if finished:
		finished_sprite.queue_free()
		finished = false
	else:
		segment_node.queue_free()
	hide()
	._stop()
	pass


func _on_StopButton_button_down():
	stoppage()
	pass # Replace with function body.
