class_name Player extends CharacterBody2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0

@onready var playerSprite = $AnimatedSprite2D

var snowball_scene = load("res://Scenes/Weapons/Snowball.tscn")

var iceCube_scene = load("res://Scenes/Weapons/ice_cube.tscn")




func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	#print("ready")
	#global_position = marker2DPosition
	pass

#func set_spawn_position(pos: Vector2):
	#velocity = Vector2.ZERO
	#global_position = pos

#func die():
	#queue_free()
	#await get_tree().physics_frame
	#scene_manager.restartScene()

	
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	#input direction can be 1 0 -1
	var direction := Input.get_axis("move_left", "move_right")
	if direction > 0:
		playerSprite.play("walk_right")
	if direction < 0:
		playerSprite.play("walk_left")
	if direction == 0:
		playerSprite.play("idle2")
	
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	

func _unhandled_input(event):
	if event is InputEventMouseButton: 
		if event.button_index == MOUSE_BUTTON_LEFT \
		and event.pressed:
			throw_snowball()
		if event.button_index == MOUSE_BUTTON_MASK_RIGHT\
		and event.pressed:
			use_iceCubes()
	
	
func throw_snowball():
	if GameManager.ammunition <= 0:
		print("no amo")
		return
		
	var snowball = snowball_scene.instantiate()
	get_parent().add_child(snowball)
	snowball.global_position = global_position + Vector2(0,0)
		
	var mouse_pos = get_global_mouse_position()
	var direction = (mouse_pos - snowball.global_position).normalized()
	snowball.velocity = direction * 150
	GameManager.ammunition -=1
	print("success")


func use_iceCubes():
	if GameManager.hasIce:
		print("IceCube visible:", visible)
		#var iceCubes = iceCube_scene.instantiate()
		#get_parent().add_child(iceCubes)
		#iceCubes.global_position = global_position + Vector2(0,-50)
		
	#	var mouse_pos = get_global_mouse_position()
	#	var direction = (mouse_pos - iceCubes.global_position).normalized()
	#	iceCubes.velocity = direction * 150
		#get_tree().paused = true
		GameManager.hasIce = false
		GameManager.freeze_for(5.0)
		print("success")
		#GameManager.isFrozen = false
		#await get_tree().create_timer(3.0, true).timeout
		get_tree().paused = false
	else:
		print("no ice")
		
#euhf
