class_name ItemManager extends Node

@export var items: Dictionary = {} # key: Item, value: int (quantity)

func add_item(item: Item, quantity: int = 1) -> void:
	if item == null or quantity <= 0:
		return
	if items.has(item):
		items[item] += quantity
	else:
		items[item] = quantity

func remove_item(item: Item, quantity: int = 1) -> void:
	if not items.has(item):
		return
	items[item] -= quantity
	if items[item] <= 0:
		items.erase(item)

func has_item(item: Item) -> bool:
	return items.has(item)

func get_quantity(item: Item) -> int:
	return items.get(item, 0)

func clear() -> void:
	items.clear()
