extends Area2D



func _ready():
	pass	
	

var velocity := Vector2.ZERO


func _physics_process(delta):
	position += velocity * delta
	
func _on_body_entered(body: Node2D) -> void:
	print("body entered")
	pass # Replace with function body.	pass # Replace with function body.
