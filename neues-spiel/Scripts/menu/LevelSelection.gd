extends Control

var nameFieldPath="res://Scenes/StartigView/ScoreboardSave.tscn"
func _on_l_2_pressed() -> void:
	Global.levelSelection = 2
	Global.playerSelected = true
	#get_tree().change_scene_to_file("res://Scenes/Levels/Level2/level_2.tscn")
	get_tree().change_scene_to_file(nameFieldPath)


func _on_l_3_pressed() -> void:
	Global.levelSelection = 3
	Global.playerSelected = true
	#get_tree().change_scene_to_file("res://Scenes/Levels/level3/level_3.tscn")
	get_tree().change_scene_to_file(nameFieldPath)



func _on_l_4_pressed() -> void:
	Global.levelSelection = 4
	Global.playerSelected = true
	#get_tree().change_scene_to_file("res://Scenes/Levels/level4/level_4.tscn")
	get_tree().change_scene_to_file(nameFieldPath)

func _on_l_5_pressed() -> void:
	Global.levelSelection = 5
	Global.playerSelected = true
	#get_tree().change_scene_to_file("res://Scenes/Levels/level5/level_5.tscn")
	get_tree().change_scene_to_file(nameFieldPath)


func _on_l_1_pressed() -> void:
	Global.levelSelection = 1
	Global.playerSelected = true
	#get_tree().change_scene_to_file("res://Scenes/Game.tscn")
	get_tree().change_scene_to_file(nameFieldPath)
