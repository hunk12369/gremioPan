extends Sprite2D

const speed: int=300
const size: Vector2 = Vector2(4,4)
const dash: int=60
var pos: Vector2 = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pos=Vector2(300,200)
	position = pos
	scale = size
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("attack"):
		print("attack 1")
	#movimiento
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
	pos += direction * speed * delta
	position = pos
	if (Input.is_action_just_pressed("roll")):
		if (direction == Vector2(0,1)):
			pos.y += dash
		if (direction == Vector2(0,-1)):
			pos.y -= dash
		if (direction == Vector2(-1,0)):
			pos.x -= dash
		if (direction == Vector2(1,0)):
			pos.x += dash
		
