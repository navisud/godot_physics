extends Node

@export var object_template: Array[PackedScene]

func _input(event: InputEvent): 
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				spawn_object1(event.position)
				
		if event.button_index == 2:
			if event.pressed:
				spawn_object2(event.position)

func spawn_object1(position: Vector2) -> void:
	var index : int = randi_range(0, 1)
	# var index : int = randi_range(0, object_template.size()-1)
	var obj_temp = object_template[index]
	var object : RigidBody2D = obj_temp.instantiate()
	object.position = position
	add_child(object)

func spawn_object2(position: Vector2) -> void:
	var big_box = object_template[2]
	var obj_bigbox : RigidBody2D = big_box.instantiate()
	obj_bigbox.position = position
	add_child(obj_bigbox)
