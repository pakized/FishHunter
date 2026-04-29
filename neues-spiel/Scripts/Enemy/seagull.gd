extends CharacterBody2D
@export var speed := 70
@export var egg_scene: PackedScene
@export var throw_interval := 1.0   # Sekunden
@onready var sprite = $Sprite2D
var direction := 1
var throw_timer := 0.0

@onready var ray_left = $RayCastLeft
@onready var ray_right = $RayCastRight

#unc _ready() -> void:
	#process_mode = Node.PROCESS_MODE_ALWAYS

func _physics_process(delta):
	handle_movement()
	handle_throwing(delta)
	move_and_slide()
	
func handle_movement():
	if ray_right.is_colliding():
		direction = -1
	elif ray_left.is_colliding():
		direction = 1
	update_facing_direction()
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
	

func update_facing_direction():
	if direction > 0:
		sprite.flip_h = true   # schaut nach rechts
	else:
		sprite.flip_h = false    # schaut nach links
