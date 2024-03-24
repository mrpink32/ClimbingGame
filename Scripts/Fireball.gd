extends RigidBody2D

const SPEED: float = 800.0
const DAMAGE: int = 5

var is_alive: bool = true
var forward: float = 1

# Called when the node enters the scene tree for the first time.
func _init():
	contact_monitor = true
	max_contacts_reported = 1


func _ready():
	linear_velocity.x = forward * SPEED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print("hit!: %s"%body)
	#if body.has_signal("health_changed"):
		#body.connect("health_changed",Callable(self,"health_changed"))
	body.call("take_damage",DAMAGE)
	queue_free()
