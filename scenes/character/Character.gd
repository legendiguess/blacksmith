extends Node2D

const MAX_SPEED = 300
const ACCELERATION = 100

var motion_x = 0

func _physics_process(delta):
	if Input.is_action_pressed('ui_right'):
		$Sprite.flip_h = true
		$ItemInHandsSprite.position.x = 23
		$ItemInHandsSprite.flip_h = false
		motion_x = min(motion_x + ACCELERATION, MAX_SPEED)
		if $Footsteps.playing == false:
			$Footsteps.play()
	elif Input.is_action_pressed('ui_left'):
		motion_x = max(motion_x - ACCELERATION, -MAX_SPEED)
		$Sprite.flip_h = false
		$ItemInHandsSprite.position.x = -23
		$ItemInHandsSprite.flip_h = true
		if $Footsteps.playing == false:
			$Footsteps.play()
	else:
		$Footsteps.stop()
		motion_x = lerp(motion_x, 0, 0.2)
	
	position.x += motion_x * delta
	
	var overlapping_bodies = $Area2D.get_overlapping_bodies()
	if !overlapping_bodies.empty():
		if Input.is_action_just_pressed("use"):
			for body in overlapping_bodies:
				if body.name == "Chest":
					if $Inventory.current_item == null:
						body.open()
					else:
						body.put_item_to_chest()
				elif body.name == "Grindstone":
					if $Inventory.current_item != null:
						body.put_item_to_grindstone()
						pass
				elif body.name == "Furnace":
					body.use()
				elif body.name == "Anvil":
					body.use()
				elif body.name == "Cashier":
					body.submit_order()
				elif body.name == "Dwarf":
					if $Inventory.current_item == null:
						if body.item_in_hand != null:
							body.give_item_to_player()
						else:
							if body.get_node("Timer").time_left == 0:
								body.ask_to_mine()
					else:
						if body.item_in_hand == null:
							if body.get_node("Timer").time_left == 0:
								body.ask_to_mine()
