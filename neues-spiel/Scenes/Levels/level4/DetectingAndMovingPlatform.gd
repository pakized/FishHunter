extends AnimatableBody2D

@export var move_distance := 200.0
@export var move_speed := 100.0

var start_y: float
var moving := false   # 👈 startet aus

func _ready():
	start_y = position.y

func _physics_process(delta):
	if not moving:
		return

	if position.y > start_y - move_distance:
		position.y -= move_speed * delta
	else:
		moving = false  # 👈 stoppt oben
