extends Control
class_name Item_Slot

	
@export var item: ItemData = null:
	set(value):
		item = value
	
		if not is_node_ready():
			return
			
		if value == null:
			$"Slot background/Item Texture".texture = null
			$"Slot background/Item Quantity".text = ""
			return
		
		$"Slot background/Item Texture".texture = value.texture
		
@export var quantity : int = 0:
	set(value):
		quantity = value
		$"Slot background/Item Quantity".text = str(value) + "x"
		if quantity <= 0:
			item = null
		
func set_quantity(value: int):
	quantity = value
	
func add_quantity(value: int):
	quantity += value

func _can_drop_data(at_position, data):
	if "item" in data:
		return is_instance_of(data.item, ItemData)
	return false

func _drop_data(at_position, data):
	var temp = item
	item = data.item
	data.item = temp
	
	temp = quantity
	quantity = data.quantity
	data.quantity = temp
	
func _get_drag_data(at_position):
	if item:
		var preview_texture = TextureRect.new()
		preview_texture.texture = item.texture
		preview_texture.size = Vector2(24, 24)
		preview_texture.position = Vector2(8, 8)
		var prewiew = Control.new()
		prewiew.add_child(preview_texture)
		set_drag_preview(prewiew)
	return self
