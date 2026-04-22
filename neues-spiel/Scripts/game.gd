
# game.gd
extends Node2D

@onready var score_label: Label = $Labels/Label4

var maxFish = 8

func _ready():
	pass
	
func _process(delta: float) -> void:
	if GameManager.score < maxFish: 
		score_label.text = "you only got " + str(GameManager.score) 
	else:
		score_label.text = "Congratulations you got all " + str(GameManager.score) + " Fish"
	pass
