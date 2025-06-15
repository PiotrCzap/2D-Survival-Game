extends CharacterBody2D

var speed = 500

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	if Input.is_action_pressed("D"):
		input_vector.x += 1
	if Input.is_action_pressed("A"):
		input_vector.x -= 1
	if Input.is_action_pressed("S"):
		input_vector.y += 1
	if Input.is_action_pressed("W"):
		input_vector.y -= 1

	input_vector = input_vector.normalized()

	velocity = input_vector * speed

	move_and_slide()
