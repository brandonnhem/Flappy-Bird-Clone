extends CharacterBody2D
signal hit

const SPEED = 400.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY 
		
	if velocity.y > 0:
		$AnimatedSprite2D.play("up")
	else:
		$AnimatedSprite2D.play("down")

	move_and_slide()
