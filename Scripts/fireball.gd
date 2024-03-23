extends RigidBody2D

const SPEED = 800.0

# Called when the node enters the scene tree for the first time.
func _ready():
	linear_velocity.x = SPEED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
