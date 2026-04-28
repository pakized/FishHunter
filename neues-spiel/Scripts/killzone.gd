extends Area2D

#node drag drob with ctrl => auto ref.
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free() 	#remove collision from body 
#	PlayerCharakter.die()
	timer.start()
	
	

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	#get_tree().reload_current_scene()
	var scenePath := get_tree().current_scene.scene_file_path
	get_tree().call_deferred("change_scene_to_file", scenePath)
	GameManager.score = 0
