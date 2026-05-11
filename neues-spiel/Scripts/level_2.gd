extends Node2D
#
#
#
#
func _ready():
	print(get_tree().current_scene.name)
	print("Scene name:", get_tree().current_scene.name)
	GameManager.score = 0
	GameManager.reset_timer()
	pass

## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	GameManager.update_timer(delta)
	#pass
