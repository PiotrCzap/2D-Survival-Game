extends Node2D

@export var Tree_hp = 1
@export var Max_Wood_Drop = 5
@export var Max_Sticks_Drop = 3

func _on_tree_cut_button_pressed() -> void:
	Tree_hp -= 1
	if Tree_hp <= 0 and Global.Materials.has("Wood") and Global.Materials["Wood"] <= 32 or Global.Materials.has("Sticks") and Global.Materials["Sticks"] <= 32:
		queue_free()
		Global.Materials["Wood"] = Global.Materials.get("Wood", 0) + randi_range(1 , Max_Wood_Drop)
		Global.Materials["Sticks"] = Global.Materials.get("Sticks", 0) + randi_range(1 , Max_Sticks_Drop)
		print(Global.Materials)
		if Global.Materials.has("Wood") and Global.Materials["Wood"] >= 32 or Global.Materials.has("Sticks") and Global.Materials["Sticks"] >= 32:
			Global.Materials["Wood"] = Global.Materials.get("Wood", 0) == 32
			Global.Materials["Sticks"] = Global.Materials.get("Sticks", 0) == 32
			
