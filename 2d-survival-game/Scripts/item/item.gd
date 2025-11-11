class_name Item extends Resource

enum ItemType {MATERIAL, FOOD, TOOL}

@export var icon: Texture2D
@export var type: ItemType
@export var name: String
@export_multiline var desc: String
