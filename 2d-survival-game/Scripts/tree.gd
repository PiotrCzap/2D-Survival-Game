extends Node2D

@export var Tree_hp = 1
const Max_Wood_Drop:int = 5
const Max_Sticks_Drop: int = 3
const Max_Apples_Drop: int = 5

func _on_tree_cut_button_pressed() -> void:
	Tree_hp -= 1
	if Tree_hp <= 0:
		queue_free()
		Global.Wood += randi_range(2, Max_Wood_Drop)
		Global.Sticks += randi_range(2, Max_Sticks_Drop)
		Global.Apples += randi_range(2, Max_Apples_Drop)
		print([Global.Wood, Global.Sticks])
