extends CharacterBody2D
const SPEED = 300
const MOVEMENT_LERP_WEIGHT = 0.1

func _ready():
	$AnimatedSprite2D.play()

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = velocity.lerp(direction * SPEED, MOVEMENT_LERP_WEIGHT)
	rotation = lerp(rotation, direction.x * PI * 0.25, MOVEMENT_LERP_WEIGHT)
	move_and_slide()
	
