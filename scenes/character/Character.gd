extends KinematicBody2D

const MAX_SPEED = 1000
const ACCELERATION = 300

var motion = Vector2()

func _physics_process(delta):
	
	motion = Vector2()
	if Input.is_action_pressed('ui_right'):
		$Sprite.flip_h = false
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed('ui_left'):
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = true
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		
	motion = move_and_slide(motion)
