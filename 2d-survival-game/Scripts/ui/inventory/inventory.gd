class_name Inventory extends Control

var slots: Array[ItemSlot] = []

var current_index: int:
	set (value):
		current_index = value
		reset_focus()
		set_focus()

func _ready() -> void:
	slots.assign(%grid_container.get_children())
	for i in slots.size():
		slots[i].slot_button.pressed.connect(_on_slot_pressed.bind(i))

func set_focus() -> void:
	slots[current_index].set_focus()

func reset_focus() -> void:
	for slot in slots:
		slot.reset_focus()

func _on_slot_pressed(index: int) -> void:
	current_index = index
	print("Current slot index: ", current_index)
