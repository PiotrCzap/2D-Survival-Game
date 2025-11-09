extends Node

func _process(delta: float) -> void:
	pass

func _on_apple_button_pressed() -> void:
	Global.apple_selected = true

func _on_blueberry_eat_button_pressed() -> void:
	if Global.Hunger < 100:
		if Global.Blueberris >= 1:
			Global.Hunger += 1
			Global.Blueberris -= 1
			



	
