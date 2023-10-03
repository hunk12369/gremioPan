extends Sprite2D

const size: Vector2 = Vector2(4,4)
# Called when the node enters the scene tree for the first time. minuto 2:43:20
func _ready():
	scale = size
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#sprites
	var direction = Input.get_vector("left", "right","up","down") 
	if (direction == Vector2(0,0)):
		$AnimationPlayer.play("stay")
	if (direction == Vector2(0,1)):
		$AnimationPlayer.play("walk_down")			
	if (direction == Vector2(0,-1)):
		$AnimationPlayer.play("walk_up")
	if (direction == Vector2(-1,0)):
		$AnimationPlayer.play("walk_left")
	if (direction == Vector2(1,0)):
		$AnimationPlayer.play("walk_right")
