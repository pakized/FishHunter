extends Node

var score := 0
var ammunition = 0
var hasIce = false


func add_point(amount: int = 1) -> void:
	score += amount
	#print("Score:", score)
	
func add_ammunition():
	ammunition += 1

func get_ice():
	hasIce = true
