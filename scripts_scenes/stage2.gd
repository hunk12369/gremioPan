extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_scene() 
	pass


func _on_cliffside_transition_point_body_entered(body):
	if body.has_method("player"):
		Gglobal.transition_scene = true


func _on_cliffside_transition_point_body_exited(body):
	if body.has_method("player"):
		Gglobal.transition_scene = false


func change_scene():
	if Gglobal.transition_scene == true:
		if Gglobal.current_scene == "stage2":
			get_tree().change_scene_to_file("res://scenes_scenes/stage3.tscn")
			Gglobal.finish_changescenes()
