extends TileMapLayer

var map_x = 4
var map_y = 4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for x in range(map_x):
		for y in range(map_y):
			set_cell(Vector2i(0, 0), 1)
