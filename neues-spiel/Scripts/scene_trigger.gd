class_name ScenTrigger extends Area2D

@export var connected_scene: String # name of my scene where i want to change 
var scene_folder = "res://Levels/"
#var playerPath = "res://Scenes/player.tscn"
#var scenePath = "res://Scenes/Levels/Level3/level_3.tscn"
#res://Levels/level_2.tscn 

#var levelNames: Array[String] = ["Game", "level2", "level_3"]
var scenePaths: Array[String] = ["res://Scenes/Game.tscn", "res://Scenes/Levels/Level2/level_2.tscn", "res://Scenes/Levels/Level3/level_3.tscn", "res://Scenes/Levels/level4/level_4.tscn", "res://Scenes/Levels/level5/level_5.tscn"]

func _on_body_entered(body: Node2D) -> void:
	#var fullPath = scene_folder + connected_scene + ".tscn"
	if body is Player:
		print(GameManager.score)
		
		if GameManager.score == 8:
			match get_tree().current_scene.name:
				"Game":
					GameManager.save_time("Level 1")
					scene_manager.change_scene(scenePaths[1], body)
				"level_2":
					GameManager.save_time("Level 2")
					scene_manager.change_scene(scenePaths[2], body)
				"Level3":
					GameManager.save_time("Level 3")
					scene_manager.change_scene(scenePaths[3], body)
				"level_4":
					GameManager.save_time("Level 4")
					scene_manager.change_scene(scenePaths[4], body)
				#"level5":
					#GameManager.save_time("Level 5")
					#scene_manager.change_scene(scenePaths[0], body)
