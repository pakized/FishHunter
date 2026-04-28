extends Node2D
const SPEED = 20
const JUMP = 45
var direction = 1

@onready var rayCastRight = $RayCastRight
@onready var rayCastLeft = $RayCastLeft


func _ready():
	var duration := JUMP / SPEED
	var tween = create_tween()
	tween.set_loops()
	tween.tween_property(
		self,
		"position:y",
		position.y - JUMP,
		duration
		).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
		
	tween.tween_property(
		self,
		"position:y",
		position.y,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rayCastRight.is_colliding():
		direction = -1
	if rayCastLeft.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
