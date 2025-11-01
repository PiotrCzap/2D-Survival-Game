extends TextureProgressBar

func _process(delta: float) -> void:
	value = Global.Health
	if Global.Health <= 0:
		Global.Player_is_dead = true
