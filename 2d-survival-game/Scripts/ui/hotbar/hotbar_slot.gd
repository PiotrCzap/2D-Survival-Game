class_name HotbarSlot extends Control

@onready var item_icon: Sprite2D = %item_icon
@onready var bg_selected: NinePatchRect = %bg_selected
@onready var slot_button: TextureButton = %slot_button
@onready var label_quantity: Label = %label_quantity

@export var item: Item = null:
	set (value):
		item = value
		
		if value != null:
			item_icon.texture = item.icon
		else:
			item_icon.texture = null
			label_quantity.hide()

@export var quantity: int = 0:
	set (value):
		quantity = value
		label_quantity.text = "%02d" % value
		label_quantity.show()

func set_focus() -> void:
	bg_selected.show()

func reset_focus() -> void:
	bg_selected.hide()
