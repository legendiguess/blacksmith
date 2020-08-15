extends Node2D

const MAX_SPEED = 300
const ACCELERATION = 100

var motion_x = 0

func _physics_process(delta):
	
	if Input.is_action_pressed('ui_right'):
		$Sprite.flip_h = true
		motion_x = min(motion_x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed('ui_left'):
		motion_x = max(motion_x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = false
	else:
		motion_x = lerp(motion_x, 0, 0.2)
		
	position.x += motion_x * delta
