extends Node2D

@onready var camera: Camera2D = $Camera2D

func _on_ui_quit_to_menu():
	camera.reset()
