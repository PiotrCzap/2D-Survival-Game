extends Node

func _process(delta: float) -> void:
	print(Global.Hunger)

func _on_apple_eat_button_pressed() -> void:
	if Global.Hunger < 100:
		if Global.Apples >= 1:
			Global.Hunger += 1
			Global.Apples -= 1


func _on_blueberry_eat_button_pressed() -> void:
	if Global.Hunger < 100:
		if Global.Blueberris >= 1:
			Global.Hunger += 1
			Global.Blueberris -= 1
			
