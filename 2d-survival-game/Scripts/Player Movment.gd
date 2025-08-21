class_name Player

extends CharacterBody2D


var speed = 200
@onready var Animations: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta):
	var input_vector = Vector2.ZERO

	if Input.is_action_pressed("D"):
		input_vector.x += 1 * delta
		Animations.play("Walking")
		$AnimatedSprite2D.flip_h = true
	if Input.is_action_pressed("A"):
		input_vector.x -= 1 * delta
		$AnimatedSprite2D.flip_h = false
		Animations.play("Walking")
	if Input.is_action_pressed("S"):
		input_vector.y += 1 * delta
		Animations.play("Walking")
	if Input.is_action_pressed("W"):
		input_vector.y -= 1 * delta
		Animations.play("Walking")
		
	elif Input.is_action_pressed("D"):
		Animations.play("Walking")
	elif Input.is_action_pressed("A"):
		Animations.play("Walking")
	elif Input.is_action_pressed("S"):
		Animations.play("Walking")
	elif Input.is_action_pressed("W"):
		Animations.play("Walking")
	else:
		Animations.play("Idle")

	input_vector = input_vector.normalized()

	velocity = input_vector * speed

	move_and_slide()
