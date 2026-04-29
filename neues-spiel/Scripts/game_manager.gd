extends Node

var score := 0
var ammunition = 0
var hasIce = false
var isFrozen = false
var _freeze_running := false

func add_point(amount: int = 1) -> void:
	score += amount
	#print("Score:", score)
	
func add_ammunition():
	ammunition += 1

func get_ice():
	hasIce = true





func freeze_for(seconds: float) -> void:
	if _freeze_running:
		return
	_freeze_running = true
	isFrozen = true
	print("FREEZE START")
	await get_tree().create_timer(seconds).timeout
	isFrozen = false
	_freeze_running = false
	print("FREEZE END")
