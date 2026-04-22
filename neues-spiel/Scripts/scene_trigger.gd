class_name ScenTrigger extends Area2D

@export var connected_scene: String # name of my scene where i want to change 
var scene_folder = "res://Levels/"

#res://Levels/level_2.tscn C:/Users/pdura/Daten/Programmieren/GodotProjects/Games/Semester1/FishHunter/neues-spiel/Levels/level_2.tscn
func _on_body_entered(body: Node2D) -> void:
	var fullPath = scene_folder + connected_scene + ".tsch"
	var sceneTree = get_tree()
	sceneTree.change_scene_to_file("C:/Users/pdura/Daten/Programmieren/GodotProjects/Games/Semester1/FishHunter/neues-spiel/Levels/level_2.tscn")
	#print("EnterHome")
#https://www.youtube.com/watch?v=sKqtCc_HykM
