extends Area2D
const velocity = Vector2(0, -300)

func _process(delta):
	position+=velocity*delta
