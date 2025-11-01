extends Control

func _process(delta: float) -> void:
	# Materials Section
	$"Materials Section/Oak Log Slot/Oak Log Quantity".text = str(Global.Wood)
	$"Materials Section/Stick Slot/Stick Quantity".text = str(Global.Sticks)
	
	
	# Food Section
	$"Food Section/Apple Slot/Apple Quantity".text = str(Global.Apples)
	$"Food Section/Blueberry Slot/Blueberry Quantity".text = str(Global.Blueberris)


func _on_materials_pressed() -> void:
	$"Materials Section".show()
	$"Food Section".hide()


func _on_food_pressed() -> void:
	$"Food Section".show()
	$"Materials Section".hide()
