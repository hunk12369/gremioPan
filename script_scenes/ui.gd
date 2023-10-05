extends CanvasLayer

signal menu_opened()
signal menu_close()
signal quit_to_menu()

@onready var game_menu = %GameMenu

func _ready():
	pass # Replace with function body.


func _input(event):
	if event.is_action_pressed("Escape"):
		game_menu.visible = !game_menu.visible
		if game_menu.visible:
			menu_opened.emit()
		else:
			menu_close.emit()


func _on_game_menu_main_menu():
	game_menu.hide()
	quit_to_menu.emit()
	get_tree().change_scene_to_file("res://scenes_scenes/menu.tscn")


func _on_game_menu_return_to_game():
	game_menu.hide()
	menu_close.emit()
