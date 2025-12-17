extends Node2D

var Tree_HP: int = 10
const Max_wood_logs_drop: int = 3
const Max_stick_drop: int = 4

func _on_tree_cut_button_pressed() -> void:
	Tree_HP -= 1
	
func _process(delta: float) -> void:
	if Tree_HP <= 0:
		queue_free()
		randi_range(1, Max_wood_logs_drop)
		randi_range(1, Max_stick_drop)
		
