extends Area2D



func _ready():
	pass	
	

var velocity := Vector2.ZERO


func _physics_process(delta):
	position += velocity * delta
	
#func _on_body_entered(body: Node2D) -> void:
	#print("body entered: " + body.name)
	#print("Grouü " , body.get_groups())
	#if body.is_in_group("Enemy"):
		#print("test")
		#body.get_parent().queue_free()
		#queue_free()
	#pass # Replace with function body.	pass # Replace with function body.


func _on_area_entered(area: Area2D) -> void:
	print("body entered: " + area.name)
	print("Grouü " , area.get_groups())
	if area.is_in_group("Enemy"):
		print("test")
		area.get_parent().queue_free()
		queue_free()
	pass # Replace with function body.	pass # Replace with function body.
