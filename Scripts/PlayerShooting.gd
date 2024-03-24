extends "res://Scripts/Player.gd"

@export var spells = [
	preload("res://Scenes/fireball.tscn"),
]

func add_spell(spell: PackedScene):
	spells.append(spell)


func use_spell(index: int):
	var instance = spells[index].instantiate()
	#instance.call("setup",forward)
	instance.set("forward",forward)
	instance.set("position",position)
	#instance.set("rotation",rotation)
	get_tree().root.add_child(instance)


func _input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			use_spell(0)
			# print("Fireball!")
