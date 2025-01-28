extends Node2D

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var slime: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 60
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		slime.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		slime.flip_h = false
	position.x += direction * SPEED * delta
