class_name ScenTrigger extends Area2D

@export var connected_scene: String # name of my scene where i want to change 
var scene_folder = "res://Levels/"
#var playerPath = "res://Scenes/player.tscn"
#var scenePath = "res://Scenes/Levels/Level3/level_3.tscn"
#res://Levels/level_2.tscn 

#var levelNames: Array[String] = ["Game", "level2", "level_3"]
var scenePaths: Array[String] = ["Game", "res://Scenes/Levels/Level2/level_2.tscn", "res://Scenes/Levels/Level3/level_3.tscn"]

func _on_body_entered(body: Node2D) -> void:
	#var fullPath = scene_folder + connected_scene + ".tscn"
	
	if body is Player:
		if GameManager.score == 8:
			match get_tree().current_scene.name:
				"Game":
					scene_manager.change_scene(scenePaths[1], body)
				"level_2":
					scene_manager.change_scene(scenePaths[2], body)
				"level3":
					scene_manager.change_scene(scenePaths[3], body)
				"level4":
					scene_manager.change_scene(scenePaths[4], body)
				"level5":
					scene_manager.change_scene(scenePaths[0], body)
