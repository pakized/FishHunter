extends Node2D

const SPEED := 20.0
const JUMP := 45.0
var direction := 1
var start_y: float

@onready var rayCastRight = $RayCastRight
@onready var rayCastLeft = $RayCastLeft

func _ready():
	start_y = position.y
	jump()

func jump():
	var duration := JUMP / SPEED
	var tween := create_tween()

	tween.tween_property(
		self,
		"position:y",
		start_y - JUMP,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)

	tween.tween_property(
		self,
		"position:y",
		start_y,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)

	tween.finished.connect(jump)   # ✅ erlaubte Wiederholung

func _process(delta: float) -> void:
	if rayCastRight.is_colliding():
		direction = -1
	if rayCastLeft.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
