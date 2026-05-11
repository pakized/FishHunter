
# game.gd
extends BaseScene

@onready var score_label: Label = $Labels/Label4
@onready var score = $CanvasLayer/Control/Label
var maxFish = 8

func _ready():
	GameManager.reset_timer()

	pass
	
func _process(delta: float) -> void:
	GameManager.update_timer(delta)
	if GameManager.score < maxFish: 
		score_label.text = "you only got " + str(GameManager.score) 
	else:
		score_label.text = "Congratulations you got all " + str(GameManager.score) + " Fish"
	score.text = "Fish: " + str(GameManager.score)
	pass
