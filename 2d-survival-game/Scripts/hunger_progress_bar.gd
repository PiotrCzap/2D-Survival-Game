extends TextureProgressBar

func _process(delta: float) -> void:
	value = Global.Hunger
	

func _on_timer_timeout() -> void:
	if Global.Player_is_walking:
		Global.Hunger -= 1
	elif Global.Player_is_sprinting:
		Global.Hunger -= 2
	if Global.Hunger <= 30:
		Global.Player_is_sprinting = false


func _on_player_hunger_dying_timer_timeout() -> void:
	if Global.Hunger <= 0:
		Global.Health -= 5
