class_name Hotbar extends Control

var current_index: int:
	set (value):
		current_index = value
		reset_focus()
		set_focus()

var slots: Array[HotbarSlot] = []

func _ready() -> void:
	slots.assign(%hotbar_slots.get_children())
	for i in slots.size():
		slots[i].slot_button.pressed.connect(_on_slot_pressed.bind(i))
	
	current_index = 0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("scroll down"):
		if current_index == slots.size() - 1:
			current_index = 0
		else:
			current_index += 1
	if event.is_action_pressed("scroll up"):
		if current_index == 0:
			current_index = slots.size() - 1
		else:
			current_index -= 1

func _on_slot_pressed(index: int) -> void:
	current_index = index
	print("Current slot index: ", current_index)

func add_item(item: Item, quantity: int) -> void:
	slots[current_index].item = item
	slots[current_index].quantity = quantity
	print("Item `%s` added to hotbar slot %d" % [item.name, current_index])

func set_focus() -> void:
	slots[current_index].set_focus()

func reset_focus() -> void:
	for slot in slots:
		slot.reset_focus()
