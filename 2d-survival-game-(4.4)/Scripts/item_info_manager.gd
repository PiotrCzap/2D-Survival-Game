extends Control

#------------------------Materials Section-------------------------------------------
@onready var Oak_Log_item_info: Control = $"../Materials Section/Oak Log Slot/Item Info"


func _on_oak_log_button_mouse_entered() -> void:
	Oak_Log_item_info.show()


func _on_oak_log_button_mouse_exited() -> void:
	Oak_Log_item_info.hide()
