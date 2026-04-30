extends Node2D

const SPEED := 30.0
const JUMP := 50.0

var isFrozen := false
var start_y: float
var jump_tween: Tween

func _ready():
	start_y = position.y
	start_jump()

func start_jump():
	if isFrozen:
		return

	jump_tween = create_tween()

	jump_tween.tween_property(
		self,
		"position:y",
		start_y - JUMP,
		JUMP / SPEED
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)

	jump_tween.tween_property(
		self,
		"position:y",
		start_y,
		JUMP / SPEED
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN)

	jump_tween.finished.connect(start_jump)  # ✅ kontrollierte Wiederholung

func freeze():
	isFrozen = true
	if jump_tween:
		jump_tween.kill()   # ✅ wichtig: kill statt pause

func unfreeze():
	if not isFrozen:
		return
	isFrozen = false
	start_jump()
