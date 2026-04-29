extends Node2D

const SPEED = 30
var direction = 1

@onready var rayCastRight = $Walross/RayCastRight
@onready var rayCastLeft = $Walross/RayCastLeft





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rayCastRight.is_colliding():
		direction = -1
	if rayCastLeft.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
