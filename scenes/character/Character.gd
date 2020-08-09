extends Node2D

const MAX_SPEED = 300
const ACCELERATION = 100

var motion = 0

func _physics_process(delta):
	
	if Input.is_action_pressed('ui_right'):
		$Sprite.flip_h = false
		motion = min(motion + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed('ui_left'):
		motion = max(motion - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = true
	else:
		motion = lerp(motion, 0, 0.2)
		
	position.x += motion * delta
