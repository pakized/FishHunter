class_name BaseScene extends Node

@onready var player: Player = $Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if scene_manager.player:
		if player:
			player.queue_free()
	player = scene_manager.player
	add_child(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
