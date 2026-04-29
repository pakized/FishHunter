extends Node2D

const SPEED = 30
const JUMP = 50

var isFrozen := false
var jump_tween: Tween


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

func freeze():
	isFrozen = true
	if jump_tween:
		jump_tween.pause()

func unfreeze():
	isFrozen = false
	if jump_tween:
		jump_tween.play()
