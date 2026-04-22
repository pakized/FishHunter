extends Area2D



@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

@onready var animationPlayer: AnimationPlayer = $AnimationPlayer

func _ready():
	anim.play("rotation")
	
	

func _on_body_entered(body: Node2D) -> void:
	GameManager.add_point()
	animationPlayer.play("PickupAnimation")
