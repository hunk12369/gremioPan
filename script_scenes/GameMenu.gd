extends Control

signal return_to_game()
signal main_menu()

@onready var box_container = %VBoxContainer

func focus_button() -> void:
	if box_container:
		var button: Button = box_container.get_child(0)
		if button is Button:
			button.grab_focus()

	


func _on_visibility_changed():
	if visible:
		focus_button()

func _on_return_button_pressed():
	return_to_game.emit()

func _on_main_menu_button_pressed():
	main_menu.emit()

func _on_quit_button_pressed():
	get_tree().quit()
