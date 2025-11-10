class_name Player

extends CharacterBody2D


var speed = 100
var sprint = false	
@onready var Animations: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	
	if sprint == false:
		if Input.is_action_just_pressed("Sprint"):
			speed = 200
			sprint = true
			Global.Player_is_sprinting = true
	elif sprint == true:
		if Input.is_action_just_pressed("Sprint"):
			speed = 100
			sprint = false
			Global.Player_is_sprinting = false
			
	if Input.is_action_pressed("D"):
		input_vector.x += 1
		Animations.play("Walking")
		$AnimatedSprite2D.flip_h = true
		Global.Player_is_walking = true
	if Input.is_action_pressed("A"):
		input_vector.x -= 1
		$AnimatedSprite2D.flip_h = false
		Animations.play("Walking")
		Global.Player_is_walking = true
	if Input.is_action_pressed("S"):
		input_vector.y += 1 
		Animations.play("Walking")
		Global.Player_is_walking = true
	if Input.is_action_pressed("W"):
		input_vector.y -= 1
		Animations.play("Walking")
		Global.Player_is_walking = true
		
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
		Global.Player_is_walking = false

	velocity = input_vector * speed
	input_vector = input_vector.normalized()

	

	move_and_slide()
