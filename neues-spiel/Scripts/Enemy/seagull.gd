extends CharacterBody2D
@export var speed := 100
@export var egg_scene: PackedScene
@export var throw_interval := 1.0   # Sekunden

var direction := 1
var throw_timer := 0.0

@onready var ray_left = $RayCastLeft
@onready var ray_right = $RayCastRight

func _physics_process(delta):
	handle_movement()
	handle_throwing(delta)
	move_and_slide()
	
func handle_movement():
	if ray_right.is_colliding():
		direction = -1
	elif ray_left.is_colliding():
		direction = 1

	velocity.x = direction * speed
	
	
func handle_throwing(delta):
	throw_timer += delta

	if throw_timer >= throw_interval:
		throw_timer = 0
		throw_egg()
		
func throw_egg():
	if egg_scene == null:
		return

	var egg = egg_scene.instantiate()
	get_tree().current_scene.add_child(egg)

	egg.global_position = global_position + Vector2(0, 20)
	egg.velocity = Vector2(0, 300)   # fällt nach unten
