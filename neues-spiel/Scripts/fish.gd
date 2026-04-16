extends Area2D



@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

func _ready():
	anim.play("rotation")
	pass
	



func _on_body_entered(body: Node2D) -> void:
	queue_free()
	pass # Replace with function body.
