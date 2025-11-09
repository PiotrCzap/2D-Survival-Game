extends Node2D

func _ready() -> void:
	$"../Hand left/hand left".texture = null

func _process(delta: float) -> void:
	if Global.oak_log_on_hotbar_selected == true:
		$"../Hand left/hand left".texture = "res://Textures/Apple.png"
