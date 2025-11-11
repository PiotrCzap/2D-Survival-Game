class_name FoodSystemManager extends Node 

@onready var _timer: Timer = Timer.new()

func _ready() -> void:
	_timer.wait_time = 5.0
	_timer.autostart = true
	_timer.one_shot = false
	add_child(_timer)
	_timer.timeout.connect(_print_hunger_stat)

func _process(delta: float) -> void:
	pass

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

func _print_hunger_stat() -> void:
	print(Global.Hunger)