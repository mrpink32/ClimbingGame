extends "res://player.gd"

var fireball = preload("res://fireball.tscn")

func shoot_fireball():
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			var instance = fireball.instantiate()
			instance.set("position",position)
			instance.set("rotation",rotation)
			get_tree().root.add_child(instance)
			print("Mouse Click/Unclick at: ", event.position)

