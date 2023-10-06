extends Node2D

@onready var camera: Camera2D = $Camera2D
func _ready():
	get_tree().paused=false

func _on_ui_quit_to_menu():
	camera.reset()


func _on_ui_menu_close():
	get_tree().paused=false


func _on_ui_menu_opened():
	get_tree().paused=true
