extends Area2D

var is_giant := false



func _ready():
	pass	
	

var velocity := Vector2.ZERO


func _physics_process(delta):
	position += velocity * delta
	
func _on_area_entered(area: Area2D) -> void:
	print("body entered: " + area.name)
	print("Grouü " , area.get_groups())
	if area.is_in_group("Enemy") and not area.is_in_group("Boss"):
		print("test")
		area.get_parent().queue_free()
		queue_free()
	if area.is_in_group("Enemy") and is_giant:
		print("test")
		var boss = area.get_parent()
		if boss.has_method("die"):
			boss.die()
		queue_free()
