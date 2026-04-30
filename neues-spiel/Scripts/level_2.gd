extends Node2D
#
#
#
#
func _ready():
	GameManager.score = 0
	GameManager.reset_timer()
	pass

## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	GameManager.update_timer(delta)
	#pass
