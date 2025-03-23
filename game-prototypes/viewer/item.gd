class_name Item
extends Control

@onready var sub_viewport: SubViewport = $SubViewportContainer/SubViewport
@onready var label: Label = $Button/Label

var scene_name: String
var packed_scene: PackedScene

func set_scene_item(in_scene_name: String, in_packed_scene: PackedScene) -> void:
	scene_name = in_scene_name
	packed_scene = in_packed_scene
	
func _ready() -> void:
	label.text = scene_name
	sub_viewport.add_child(packed_scene.instantiate())
