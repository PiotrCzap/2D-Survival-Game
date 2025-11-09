extends Control

#------------------------Materials Section-------------------------------------------
@export_category("Materials Menu")
@export_group("Oak_Log")

@export var oak_log_item_info: Control

func _on_oak_log_button_mouse_entered() -> void:
	oak_log_item_info.show()
	
func _on_oak_log_button_mouse_exited() -> void:
	oak_log_item_info.hide()

@export_group("Stick")
@export var Stick_item_info: Control


func _on_stick_button_mouse_entered() -> void:
	Stick_item_info.show()


func _on_stick_button_mouse_exited() -> void:
	Stick_item_info.hide()

@export_group("Plank")
@export var Plank_item_info: Control


func _on_plank_button_mouse_entered() -> void:
	Plank_item_info.show()


func _on_plank_button_mouse_exited() -> void:
	Plank_item_info.hide()

#------------------------Food Section-------------------------------------------




#------------------------Tools Section-------------------------------------------

@export_group("Wooden Axe")
@export var Wooden_Axe_item_info: Control


func _on_wooden_axe_button_mouse_entered() -> void:
	Wooden_Axe_item_info.show()


func _on_wooden_axe_button_mouse_exited() -> void:
	Wooden_Axe_item_info.hide()

@export_category("Food Section")
@export_group("Apple")
@export var Apple_item_info: Control

func _on_apple_button_mouse_entered() -> void:
	Apple_item_info.show()


func _on_apple_button_mouse_exited() -> void:
	Apple_item_info.hide()


@export_group("Blueberry")
@export var Blueberry_item_info: Control


func _on_blueberry_eat_button_mouse_entered() -> void:
	Blueberry_item_info.show()


func _on_blueberry_eat_button_mouse_exited() -> void:
	Blueberry_item_info.hide()
