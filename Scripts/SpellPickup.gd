extends Area2D

@export var spell: PackedScene = preload("res://Scenes/fireball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print("Spell picked up")
	body.call("add_spell",spell)
	queue_free()
