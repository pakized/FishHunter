extends Node2D

const SPEED = 30
var direction = 1
const JUMP = 25

var isFrozen := false
var jump_tween: Tween
@onready var rayCastRight = $RayCastRight
@onready var rayCastLeft = $RayCastLeft


signal boss_defeated


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rayCastRight.is_colliding():
		direction = -1
	if rayCastLeft.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta




func _ready():
	var duration := float(JUMP) / SPEED
	
	jump_tween = get_tree().create_tween()
	jump_tween.set_loops()
	
	jump_tween.tween_property(
		self,
		"position:y",
		position.y - JUMP,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	
	jump_tween.tween_property(
		self,
		"position:y",
		position.y,
		duration
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)




func die():
	emit_signal("boss_defeated")
	queue_free()

	
