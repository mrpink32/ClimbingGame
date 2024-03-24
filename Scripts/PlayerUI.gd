extends Node2D

const LIFE_THNIG = preload("res://Textures/Hat_Lives.png")

var lives = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#var instance = Sprite2D.new()
	#instance.position.y = 16
	#instance.position.x = 400
	#instance.texture = LIFE_THNIG
	#lives.append(instance)
	#instance.position.x += 20
	#lives.append(instance)
	#instance.position.x += 20
	#lives.append(instance)
	#for thing in lives:
	#	add_child(thing)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_lives_changed(old_value, new_value):
	
	pass # Replace with function body.
