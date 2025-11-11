class_name ItemSlot extends Control

@onready var slot_button : TextureButton = %slot_button
@onready var item_icon : Sprite2D = %item_icon
@onready var bg_selected : TextureRect = %bg_selected
@onready var label_quantity: Label = %label_quantity
@onready var item_info: Control = %item_info
@onready var label_info : RichTextLabel = %label_info

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

func _ready() -> void:
	clear()

func set_focus() -> void:
	bg_selected.show()

func reset_focus() -> void:
	bg_selected.hide()
	
func clear() -> void:
	item_icon.texture = null
	label_quantity.hide()
