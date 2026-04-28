class_name ScenTrigger extends Area2D

@export var connected_scene: String # name of my scene where i want to change 
var scene_folder = "res://Levels/"
#"C:/Users/pdura/Daten/Programmieren/GodotProjects/Games/Semester1/FishHunter/neues-spiel/Scenes/player.tscn"
var playerPath = "res://Scenes/player.tscn"
var scenePath = "res://Scenes/Levels/Level2/level_2.tscn"

#res://Levels/level_2.tscn 
func _on_body_entered(body: Node2D) -> void:
	#var fullPath = scene_folder + connected_scene + ".tscn"
	if body is Player:
		if GameManager.score == 8:
			scene_manager.change_scene(scenePath, body)
	#var sceneTree = get_tree()
	#sceneTree.change_scene_to_file(fullPath)
	#get_tree().change_scene_to_file.bind(fullPath).call_deferred()
	#print("EnterHome")
#https://www.youtube.com/watch?v=sKqtCc_HykM
