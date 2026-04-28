extends Area2D



func _ready():
	pass	
	

var velocity := Vector2.ZERO


func _physics_process(delta):
	position += velocity * delta
