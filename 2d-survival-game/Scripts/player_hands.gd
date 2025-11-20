extends Node2D

func _ready() -> void:
	$"../Hand left/hand left".texture = null

func _process(delta: float) -> void:
	if Global.oak_log_selected == true:
		$"../Hand left/hand left".texture = preload("res://Textures/Oak Log.png")
	if Global.oak_log_selected == false:
		$"../Hand left/hand left".texture = null
