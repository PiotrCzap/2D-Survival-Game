extends TileMapLayer

@export var map_x = 4
@export var map_y = 4
var grass_chunk_scene = preload("res://Scenes/Chunks/grass_chunk.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var grass_chunk_instance = grass_chunk_scene.instantiate()
	for x in range(map_x):
		for y in range(map_y):
			$"../Map".add_child(grass_chunk_instance)
			grass_chunk_instance.position = Vector2(x * 32,  y * 32)
			print(grass_chunk_instance.position)
