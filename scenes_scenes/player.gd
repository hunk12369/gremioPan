extends CharacterBody2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	velocity = Input.get_vector("ui_left","ui_right","ui_up","ui_down") * 400

	move_and_slide()

func player():
	pass


