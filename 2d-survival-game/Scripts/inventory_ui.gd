extends Node2D

func _ready() -> void:
	$".".hide()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Inventory"):
		if Global.is_crafting_open == false:
			visible = !visible
			Global.is_inventory_open = !Global.is_inventory_open
