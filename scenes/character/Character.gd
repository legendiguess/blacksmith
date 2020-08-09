extends Node2D

const MAX_SPEED = 300
const ACCELERATION = 100

var motion = Vector2()

func _physics_process(delta):
	
	motion = Vector2(motion.x, 0)
	if Input.is_action_pressed('ui_right'):
		$Sprite.flip_h = false
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed('ui_left'):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = true
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		
	position.x += motion.x * delta
