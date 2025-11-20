extends Node2D

@onready var slots = [
	$"Slot 1",
	$"Slot 2",
	$"Slot 3",
	$"Slot 4",
	$"Slot 5",
	$"Slot 6",
	$"Slot 7",
	$"Slot 8",
	$"Slot 9",
	$"Slot 10"
]
@onready var slots_quantity = [
	$"Slot 1/Slot 1 Quantity",
	$"Slot 2/Slot 2 Quantity",
	$"Slot 3/Slot 3 Quantity",
	$"Slot 4/Slot 4 Quantity",
	$"Slot 5/Slot 5 Quantity",
	$"Slot 6/Slot 6 Quantity",
	$"Slot 7/Slot 7 Quantity",
	$"Slot 8/Slot 8 Quantity",
	$"Slot 9/Slot 9 Quantity",
	$"Slot 10/Slot 10 Quantity"
]


# Materials Section
var oak_log_TEXTURE = preload("res://Textures/Oak Log.png")
var stick_TEXTURE = preload("res://Textures/Stick.png")
var plank_TEXTURE = preload("res://Textures/Plank.png")

# Food Section

var apple_TEXTURE = preload("res://Textures/Apple.png")
var blueberry_TEXTURE = preload("res://Textures/Blueberry.png")

# Tools Section

var Wooden_Axe_TEXTURE = preload("res://Textures/Wooden Axe.png")

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
	if Global.selected_slot >= 10:
		Global.selected_slot = 10
	if Global.selected_slot <= 0:
		Global.selected_slot = 1
	if Input.is_action_just_pressed("scroll up"):
		$Hotbar.frame += 1
		Global.selected_slot += 1
	if Input.is_action_just_pressed("scroll down"):
		$Hotbar.frame -= 1
		Global.selected_slot -= 1
	if Input.is_action_just_pressed("hotbar slot 1"):
		$Hotbar.frame = 0
		Global.selected_slot = 1
	if Input.is_action_just_pressed("hotbar slot 2"):
		$Hotbar.frame = 1
		Global.selected_slot = 2
	if Input.is_action_just_pressed("hotbar slot 3"):
		$Hotbar.frame = 2
		Global.selected_slot = 3
	if Input.is_action_just_pressed("hotbar slot 4"):
		$Hotbar.frame = 3
		Global.selected_slot = 4
	if Input.is_action_just_pressed("hotbar slot 5"):
		$Hotbar.frame = 4
		Global.selected_slot = 5
	if Input.is_action_just_pressed("hotbar slot 6"):
		$Hotbar.frame = 5
		Global.selected_slot = 6
	if Input.is_action_just_pressed("hotbar slot 7"):
		$Hotbar.frame = 6
		Global.selected_slot = 7
	if Input.is_action_just_pressed("hotbar slot 8"):
		$Hotbar.frame = 7
		Global.selected_slot = 8
	if Input.is_action_just_pressed("hotbar slot 9"):
		$Hotbar.frame = 8
		Global.selected_slot = 9
	if Input.is_action_just_pressed("hotbar slot 10"):
		$Hotbar.frame = 9
		Global.selected_slot = 10
	
	if $"Slot 1".texture == null:
		$"Slot 1/Slot 1 Quantity".hide()
	else:
		$"Slot 1/Slot 1 Quantity".show()
	if $"Slot 2".texture == null:
		$"Slot 2/Slot 2 Quantity".hide()
	else:
		$"Slot 2/Slot 2 Quantity".show()
	if $"Slot 3".texture == null:
		$"Slot 3/Slot 3 Quantity".hide()
	else:
		$"Slot 3/Slot 3 Quantity".show()
	if $"Slot 4".texture == null:
		$"Slot 4/Slot 4 Quantity".hide()
	else:
		$"Slot 4/Slot 4 Quantity".show()
	if $"Slot 5".texture == null:
		$"Slot 5/Slot 5 Quantity".hide()
	else:
		$"Slot 5/Slot 5 Quantity".show()
	if $"Slot 6".texture == null:
		$"Slot 6/Slot 6 Quantity".hide()
	else:
		$"Slot 6/Slot 6 Quantity".show()
	if $"Slot 7".texture == null:
		$"Slot 7/Slot 7 Quantity".hide()
	else:
		$"Slot 7/Slot 7 Quantity".show()
	if $"Slot 8".texture == null:
		$"Slot 8/Slot 8 Quantity".hide()
	else:
		$"Slot 8/Slot 8 Quantity".show()
	if $"Slot 9".texture == null:
		$"Slot 9/Slot 9 Quantity".hide()
	else:
		$"Slot 9/Slot 9 Quantity".show()
	if $"Slot 10".texture == null:
		$"Slot 10/Slot 10 Quantity".hide()
	else:
		$"Slot 10/Slot 10 Quantity".show()

func set_slots(slot_number: int, texture: Texture2D):
	slots[slot_number].texture = texture

func update_slot():
	if Global.selected_slot == 1:
		if Global.oak_log_selected == true and Global.all_items[0]:
			print("jest item")
			

		
func _on_slot_1_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(0, oak_log_TEXTURE)
		slots_quantity[0].text = str(Global.Wood)
		update_slot()
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(0, stick_TEXTURE)
		slots_quantity[0].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(0, plank_TEXTURE)
		slots_quantity[0].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion
		
#region Food Section
	if Global.apple_selected == true:
		set_slots(0, apple_TEXTURE)
		slots_quantity[0].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion

func _on_slot_2_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(1, oak_log_TEXTURE)
		slots_quantity[1].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(1, stick_TEXTURE)
		slots_quantity[1].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(1, plank_TEXTURE)
		slots_quantity[1].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion
	
#region Food Section
	if Global.apple_selected == true:
		set_slots(1, apple_TEXTURE)
		slots_quantity[1].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion
	

func _on_slot_3_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(2, oak_log_TEXTURE)
		slots_quantity[2].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(2, stick_TEXTURE)
		slots_quantity[2].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(2, plank_TEXTURE)
		slots_quantity[2].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion
	
#region Food Section
	if Global.apple_selected == true:
		set_slots(2, apple_TEXTURE)
		slots_quantity[2].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion

func _on_slot_4_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(3, oak_log_TEXTURE)
		slots_quantity[3].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(3, stick_TEXTURE)
		slots_quantity[3].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(3, plank_TEXTURE)
		slots_quantity[3].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(3, apple_TEXTURE)
		slots_quantity[3].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion

func _on_slot_5_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(4, oak_log_TEXTURE)
		slots_quantity[4].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(4, stick_TEXTURE)
		slots_quantity[4].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(4, plank_TEXTURE)
		slots_quantity[4].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(4, apple_TEXTURE)
		slots_quantity[4].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion


func _on_slot_6_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(5, oak_log_TEXTURE)
		slots_quantity[5].text = str(Global.Wood)
		Global.oak_log_selected = false
	if Global.stick_selected == true:
		set_slots(5, stick_TEXTURE)
		slots_quantity[5].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(5, plank_TEXTURE)
		slots_quantity[5].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(5, apple_TEXTURE)
		slots_quantity[5].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion

func _on_slot_7_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(6, oak_log_TEXTURE)
		slots_quantity[6].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(6, stick_TEXTURE)
		slots_quantity[6].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(6, plank_TEXTURE)
		slots_quantity[6].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(6, apple_TEXTURE)
		slots_quantity[6].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion


func _on_slot_8_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(7, oak_log_TEXTURE)
		slots_quantity[7].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(7, stick_TEXTURE)
		slots_quantity[7].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(7, plank_TEXTURE)
		slots_quantity[7].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(7, apple_TEXTURE)
		slots_quantity[7].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion

func _on_slot_9_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(8, oak_log_TEXTURE)
		slots_quantity[8].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(8, stick_TEXTURE)
		slots_quantity[8].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(8, plank_TEXTURE)
		slots_quantity[8].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(8, apple_TEXTURE)
		slots_quantity[8].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion

func _on_slot_10_button_pressed() -> void:
#region Materials Section
	if Global.oak_log_selected == true:
		set_slots(9, oak_log_TEXTURE)
		slots_quantity[9].text = str(Global.Wood)
		Global.oak_log_selected = true
	else:
		Global.oak_log_selected = false
		
	if Global.stick_selected == true:
		set_slots(9, stick_TEXTURE)
		slots_quantity[9].text = str(Global.Sticks)
		Global.stick_selected = true
	else:
		Global.stick_selected = false
		
	if Global.plank_selected == true:
		set_slots(9, plank_TEXTURE)
		slots_quantity[9].text = str(Global.Planks)
		Global.plank_selected = true
	else:
		Global.plank_selected = false
#endregion

#region Food Section
	if Global.apple_selected == true:
		set_slots(9, apple_TEXTURE)
		slots_quantity[9].text = str(Global.Apples)
		Global.apple_selected = true
	else:
		Global.apple_selected = false
#endregion
