extends CharacterBody2D
#movimiento
var speed: int=400
var dash: bool=true
var dash_time: float=0
#tamaño
const size: Vector2 = Vector2(0.25,0.25)

#ataque
var enemy_nearby: bool=false

# Called when the node enters the scene tree for the first time. minuto 2:43:20
func _ready():
	scale = size
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(_delta):
	#movimiento
	var direction = Input.get_vector("left", "right","up","down") 
	velocity=direction*speed
	move_and_slide()
	#sprites
	#normal
	if (direction == Vector2(0,0)):
		$AnimationPlayer.play("idle")
	#abajo
	if (direction == Vector2(0,1)):
		$AnimationPlayer.play("walkfront")
	#arriba
	if (direction == Vector2(0,-1)):
		$AnimationPlayer.play("walkback")
	#iquierda
	if (direction == Vector2(-1,0)):
		$AnimationPlayer.flip_h = true
		$AnimationPlayer.play("walkright")
	#derecha
	if (direction == Vector2(1,0)):
		$AnimationPlayer.flip_h = false
		$AnimationPlayer.play("walkright")
	
	#boton atacar
	if Input.is_action_just_pressed("attack") and enemy_nearby:
		print("attack derecha")
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
#area ataque
func _on_attack_area_body_entered(body):
	enemy_nearby=true
	print("enemigo cerca derecha")

func _on_attack_area_body_exited(body):
	enemy_nearby=false
	print("enemigo lejos derecha")
