extends TextureProgressBar

func _process(delta: float) -> void:
	value = Global.XP
	LEVEL_UP()
	XP_LEVEL()

func LEVEL_UP():
	if Global.Level == 0:
		max_value = 100
	if Global.Level == 1:
		max_value = 200
	if Global.Level == 2:
		max_value = 300
	if Global.Level == 3:
		max_value = 400
	if Global.Level == 4:
		max_value = 500
	if Global.Level == 5:
		max_value = 600
		
func XP_LEVEL():
	if Global.XP >= max_value:
		Global.Level += 1
		Global.XP = 0
