extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	$".".hide()

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Crafting"):
		if Global.is_inventory_open == false:
			visible = !visible
			Global.is_crafting_open = !Global.is_crafting_open


func _process(delta: float) -> void:
	Plank_crafting_materials()
	Wooden_Axe_crafting_materials()
	
	
	

func Plank_crafting_materials():
	if Global.Wood >= 1:
		$"Plank/Wood texture/Wood Label".modulate = Color(0.0, 1.0, 0.0, 1.0)
	else:
		$"Plank/Wood texture/Wood Label".modulate = Color(1.0, 0.0, 0.0, 1.0)
		
func Wooden_Axe_crafting_materials():
	if Global.Wood >= 3:
		$"Wooden Axe/Wood texture/Wood Label".modulate = Color(0.0, 1.0, 0.0, 1.0)
	else:
		$"Wooden Axe/Wood texture/Wood Label".modulate = Color(1.0, 0.0, 0.0, 1.0)
	
	if Global.Sticks >= 2:
		$"Wooden Axe/Stick texture/Sticks Label".modulate = Color(0.0, 1.0, 0.0, 1.0)
	else:
		$"Wooden Axe/Stick texture/Sticks Label".modulate = Color(1.0, 0.0, 0.0, 1.0)



func _on_plank_craft_button_pressed() -> void:
	if Global.Wood >= 1:
		Global.Planks += 2
		Global.Wood -= 1


func _on_plank_craft_button_mouse_entered() -> void:
	$AnimationPlayer.play("Item Craft Info Panel Opening")
	$"Item Craft Info/Item Craft Info Background/Item Name".text = "Plank"
	$"Plank/Wood texture".show()


func _on_plank_craft_button_mouse_exited() -> void:
	$AnimationPlayer.play("Item Craft Info Panel Closeing")
	$"Item Craft Info/Item Craft Info Background/Item Name".text = ""
	$"Plank/Wood texture".hide()
	



func _on_wooden_axe_craft_button_pressed() -> void:
	if Global.Wood >= 3 and Global.Sticks >= 2:
		Global.Wood -= 3
		Global.Sticks -= 2
		Global.Wooden_Axes += 1
	


func _on_wooden_axe_craft_button_mouse_entered() -> void:
	$AnimationPlayer.play("Item Craft Info Panel Opening")
	$"Item Craft Info/Item Craft Info Background/Item Name".text = "Wooden Axe"
	$"Wooden Axe/Wood texture".show()
	$"Wooden Axe/Stick texture".show()


func _on_wooden_axe_craft_button_mouse_exited() -> void:
	$AnimationPlayer.play("Item Craft Info Panel Closeing")
	$"Item Craft Info/Item Craft Info Background/Item Name".text = "Wooden Axe"
	$"Wooden Axe/Wood texture".hide()
	$"Wooden Axe/Stick texture".hide()
