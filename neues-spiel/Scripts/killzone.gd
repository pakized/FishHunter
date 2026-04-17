extends Area2D

#node drag drob with ctrl => auto ref.
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	timer.start()
	
	

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
