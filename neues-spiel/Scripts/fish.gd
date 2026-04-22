extends Area2D



@onready var anim: AnimatedSprite2D = $AnimatedSprite2D



func _ready():
	anim.play("rotation")
	
	

func _on_body_entered(body: Node2D) -> void:
	GameManager.add_point()
	queue_free()
