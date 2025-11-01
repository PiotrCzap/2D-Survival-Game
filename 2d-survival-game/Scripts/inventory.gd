extends Control

func _process(delta: float) -> void:
	# Materials Section
	$"Materials Section/Oak Log Slot/Oak Log Quantity".text = str(Global.Wood)
	$"Materials Section/Stick Slot/Stick Quantity".text = str(Global.Sticks)
	$"Materials Section/Planks Slot/Planks Quantity".text = str(Global.Planks)
	
	
	# Food Section
	$"Food Section/Apple Slot/Apple Quantity".text = str(Global.Apples)
	$"Food Section/Blueberry Slot/Blueberry Quantity".text = str(Global.Blueberris)
	
	# Tools Section
	$"Tools Section/Wooden Axe Slot/Wooden Axe Quantity".text = str(Global.Wooden_Axes)


func _on_materials_pressed() -> void:
	$"Materials Section".show()
	$"Food Section".hide()
	$"Tools Section".hide()


func _on_food_pressed() -> void:
	$"Food Section".show()
	$"Materials Section".hide()
	$"Tools Section".hide()


func _on_tools_pressed() -> void:
	$"Tools Section".show()
	$"Materials Section".hide()
	$"Food Section".hide()
