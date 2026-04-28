class_name SceneManager extends Node




func change_scene(path: String, player_node: Node) -> void:
	get_tree().call_deferred("change_scene_to_file", path)

func restartScene():
	var scenePath := get_tree().current_scene.scene_file_path
	get_tree().call_deferred("change_scene_to_file", scenePath)
	
	
	
		
