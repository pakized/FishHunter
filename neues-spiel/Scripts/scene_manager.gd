class_name SceneManager extends Node

var player : Player 

func change_scene(path: String, player_node: Node) -> void:
	get_tree().call_deferred("change_scene_to_file", path)
