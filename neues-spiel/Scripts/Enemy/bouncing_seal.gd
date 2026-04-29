extends Node2D
const SPEED = 30
const JUMP = 50
#var startPosition: float
#var direction := 1
#@onready var rayCastDown = $RayCastDown



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
