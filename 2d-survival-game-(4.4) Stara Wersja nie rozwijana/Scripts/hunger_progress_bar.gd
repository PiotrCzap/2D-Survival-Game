extends TextureProgressBar

func _on_timer_timeout() -> void:
	if Global.Player_is_walking:
		value -= 1
	elif Global.Player_is_sprinting:
		value -= 2
	if Global.Hunger <= 30:
		Global.Player_is_sprinting = false
