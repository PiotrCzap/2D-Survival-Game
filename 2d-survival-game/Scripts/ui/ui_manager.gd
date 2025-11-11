class_name UIManager extends CanvasLayer

@onready var inventory : Inventory = %inventory
@onready var hotbar : Hotbar = %hotbar

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Inventory"):
		if Global.is_crafting_open == false:
			inventory.update_inventory_display()
			inventory.visible = !inventory.visible
			Global.is_inventory_open = !Global.is_inventory_open
