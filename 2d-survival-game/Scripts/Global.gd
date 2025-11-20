extends Node

#----Player-------
@export var Level: int = 0
@export var XP: float = 0.0
@export var Hunger: float = 5
@export var Health: float = 100.0
@export var Player_is_walking: bool = false
@export var Player_is_sprinting: bool = false
@export var Player_is_dead: bool = false
@export var is_inventory_open: bool = false
@export var is_crafting_open: bool = false


#----hotbar--------

#region Materials Section

@export var oak_log_selected: bool = false
@export var stick_selected: bool = false
@export var plank_selected: bool = false
#endregion

#region Food Section

@export var apple_selected: bool = false
@export var blueberris_selected: bool = false
#endregion

#region Tools Section
@export var Wooden_axe_selected: bool = false
#endregion

#----Materials-----
@export var Wood: int = 0
@export var Sticks: int = 0
@export var Planks: int = 0



#------Food-------
@export var Apples: int = 0
@export var Blueberris: int = 0


#-----Tools-------
@export var Wooden_Axes: int = 0
