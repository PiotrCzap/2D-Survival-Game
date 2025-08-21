extends Node2D

var Blueberry_Bush_growned: int = 0
var can_harvest = false

func Blueberry_Bush():
	if can_harvest == false:
		print(Blueberry_Bush_growned)
		$Timer.start()
		if Blueberry_Bush_growned == 1:
			$AnimatedSprite2D.frame = 1
		if Blueberry_Bush_growned == 2:
			$AnimatedSprite2D.frame = 2
		if Blueberry_Bush_growned == 3:
			$AnimatedSprite2D.frame = 3
			can_harvest = true

func _on_timer_timeout() -> void:
	Blueberry_Bush_growned += 1
	Blueberry_Bush()
	if Blueberry_Bush_growned == 3:
		$Timer.stop()

func _input(event: InputEvent) -> void:
	if can_harvest:
		if Input.is_action_just_pressed("Interact"):
			Global.Blueberris += 3
			print(Global.Blueberris)
			can_harvest = false
			Blueberry_Bush_growned = 0
			Blueberry_Bush()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		$Label.show()


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Player:
		$Label.hide()
