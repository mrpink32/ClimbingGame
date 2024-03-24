extends RigidBody2D

signal health_depleted
signal health_changed(old_value: int, new_value: int)

var health: int = 10

func take_damage(amount: int):
	var old_health: int = health
	health -= amount
	health_changed.emit(old_health, health)
	#print("new health: %d"%health)
	if health <= 0:
		health_depleted.emit()


# Called when the node enters the scene tree for the first time.
func _init():
	contact_monitor = true
	max_contacts_reported = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_health_depleted():
	queue_free()


func _on_body_entered(body):
	pass # Replace with function body.
