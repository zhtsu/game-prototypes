extends Control

@export var scene_list: Array[PackedScene] = []

@onready var grid: GridContainer = $GridContainer

func _ready() -> void:
	var tscn_item: PackedScene = load("res://viewer/item.tscn")
	for scene in scene_list:
		var item: Item = tscn_item.instantiate()
		item.set_scene_item("设置UI", scene)
		grid.add_child(item)
