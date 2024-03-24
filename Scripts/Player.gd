extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var forward: float = 1

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

signal lives_depleted
signal lives_changed(old_value: int, new_value: int)

@export var lives: int = 3

func take_damage(amount: int):
	var old_lives: int = lives
	lives -= amount
	lives_changed.emit(old_lives, lives)
	#print("new health: %d"%health)
	if lives <= 0:
		lives_depleted.emit()


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		forward = direction
		velocity.x = forward * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
