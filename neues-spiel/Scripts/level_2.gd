extends Node2D
#
#
#
#
func _ready():
	
	print(get_tree().current_scene.name)

	pass
	#print($Player)
#	PlayerCharakter.set_spawn_position(Vector2(0, -10))
	#OS.delay_msec(2000) # Wartet 2 Sekunden (blockierend)
#$Player.set_spawn_position(Vector2(0, 0))

	
	#var spawn := $PlayerSpawn.global_position
	#var player := player_scene.instantiate()
	#get_tree().current_scene.add_child(player)
	#player.global_position = spawn
#


#
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
