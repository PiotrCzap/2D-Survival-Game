extends Node2D

var size_x = 32
var size_y = 32
var Grass_chunk_scene = preload("res://Scenes/Chunks/grass_chunk.tscn")
var bla = preload("res://icon.svg")
var Grass_chunk = Grass_chunk_scene.instantiate()

func _ready() -> void:
	for x in range(size_x):
		pass
	
