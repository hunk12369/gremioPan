extends Camera2D

@onready var player = $"../CharacterBody2D"
@onready var speed = 5

func _physics_process(delta):
	position = lerp(position,player.position,speed*delta)

	
	
