extends CharacterBody2D
#movimiento
var speed: int=400
var dash: bool=true
var dash_time: float=0
#vida
var life: int=3

func _process(_delta):
	#movimiento
	var direction = Input.get_vector("left", "right","up","down") 
	velocity=direction*speed
	move_and_slide()
	
	if Input.is_action_just_pressed("attack"):
		print("attack 1")
	#rodar
	if (Input.is_action_just_pressed("roll") and dash) :
		speed=1000
		dash=false
		$Timer_dash.start()
		$Timer_dash_cooldown.start()
		print("dash")

func _on_timer_dash_timeout():
	speed=400
	
func _on_timer_dash_cooldown_timeout():
	dash=true
