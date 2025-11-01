extends Node2D





func _ready() -> void:
	$"Slot 1".texture = null
	$"Slot 2".texture = null
	$"Slot 3".texture = null
	$"Slot 4".texture = null
	$"Slot 5".texture = null
	$"Slot 6".texture = null
	$"Slot 7".texture = null
	$"Slot 8".texture = null
	$"Slot 9".texture = null
	$"Slot 10".texture = null
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("scroll up"):
		$Hotbar.frame += 1
	if Input.is_action_just_pressed("scroll down"):
		$Hotbar.frame -= 1
	if Input.is_action_just_pressed("hotbar slot 1"):
		$Hotbar.frame = 0
	if Input.is_action_just_pressed("hotbar slot 2"):
		$Hotbar.frame = 1
	if Input.is_action_just_pressed("hotbar slot 3"):
		$Hotbar.frame = 2
	if Input.is_action_just_pressed("hotbar slot 4"):
		$Hotbar.frame = 3
	if Input.is_action_just_pressed("hotbar slot 5"):
		$Hotbar.frame = 4
	if Input.is_action_just_pressed("hotbar slot 6"):
		$Hotbar.frame = 5
	if Input.is_action_just_pressed("hotbar slot 7"):
		$Hotbar.frame = 6
	if Input.is_action_just_pressed("hotbar slot 8"):
		$Hotbar.frame = 7
	if Input.is_action_just_pressed("hotbar slot 9"):
		$Hotbar.frame = 8
	if Input.is_action_just_pressed("hotbar slot 10"):
		$Hotbar.frame = 9
	
	if $"Slot 1".texture == null:
		$"Slot 1/Slot 1 Quantity".hide()
	if $"Slot 2".texture == null:
		$"Slot 2/Slot 2 Quantity".hide()
	if $"Slot 3".texture == null:
		$"Slot 3/Slot 3 Quantity".hide()
	if $"Slot 4".texture == null:
		$"Slot 4/Slot 4 Quantity".hide()
	if $"Slot 5".texture == null:
		$"Slot 5/Slot 5 Quantity".hide()
	if $"Slot 6".texture == null:
		$"Slot 6/Slot 6 Quantity".hide()
	if $"Slot 7".texture == null:
		$"Slot 7/Slot 7 Quantity".hide()
	if $"Slot 8".texture == null:
		$"Slot 8/Slot 8 Quantity".hide()
	if $"Slot 9".texture == null:
		$"Slot 9/Slot 9 Quantity".hide()
	if $"Slot 10".texture == null:
		$"Slot 10/Slot 10 Quantity".hide()
	
	
