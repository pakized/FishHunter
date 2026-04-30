extends Control


@onready var name_input = $VBoxContainer/NameInput

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print("📦 Scoreboard:", GameManager.scoreboard)
	
	if Global.levelSelection == 1 and Global.playerSelected:
		$l1.visible = true
		$L5.visible = false
		$l2.visible = false
		$l4.visible = false
		$l3.visible = false
		$l6.visible = false
		
	if Global.levelSelection == 2 and Global.playerSelected:
		$l1.visible = false
		$L5.visible = false
		$l2.visible = true
		$l4.visible = false
		$l3.visible = false
		$l6.visible = false

	if Global.levelSelection == 3 and Global.playerSelected:
		$l1.visible = false
		$L5.visible = false
		$l2.visible = false
		$l4.visible = false
		$l3.visible = true
		$l6.visible = false
		
	if Global.levelSelection == 4 and Global.playerSelected:
		$l1.visible = false
		$L5.visible = false
		$l2.visible = false
		$l4.visible = true
		$l3.visible = false
		$l6.visible = false

	if Global.levelSelection == 5 and Global.playerSelected:
		$l1.visible = false
		$L5.visible = true
		$l2.visible = false
		$l4.visible = false
		$l3.visible = false
		$l6.visible = false
		
	if not Global.playerSelected:
		$l1.visible = false
		$L5.visible = false
		$l2.visible = false
		$l4.visible = false
		$l3.visible = false
		$l6.visible = true

func _on_button_pressed():
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"

	#get_tree().change_scene_to_file("res://Scenes/Levels/level5/level_5.tscn")
	scene_manager.change_scene("res://Scenes/Game.tscn", null)


func _on_l_1_pressed() -> void:
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"
	Global.playerSelected = false
	Global.levelSelection = 0
	#get_tree().change_scene_to_file("res://Scenes/Levels/level5/level_5.tscn")
	scene_manager.change_scene("res://Scenes/Game.tscn", null)


func _on_l_5_pressed() -> void:
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"
	Global.playerSelected = false
	Global.levelSelection = 0
	get_tree().change_scene_to_file("res://Scenes/Levels/level5/level_5.tscn")
	#scene_manager.change_scene("res://Scenes/Game.tscn", null)


func _on_l_2_pressed() -> void:
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"
	Global.playerSelected = false
	Global.levelSelection = 0
	get_tree().change_scene_to_file("res://Scenes/Levels/Level2/level_2.tscn")


func _on_l_4_pressed() -> void:
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"
	Global.playerSelected = false
	Global.levelSelection = 0
	get_tree().change_scene_to_file("res://Scenes/Levels/level4/")


func _on_l_3_pressed() -> void:
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"
	Global.playerSelected = false
	Global.levelSelection = 0
	get_tree().change_scene_to_file("res://Scenes/Levels/level3/")


func _on_l_6_pressed() -> void:
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"
	Global.playerSelected = false
	Global.levelSelection = 0
	#get_tree().change_scene_to_file("res://Scenes/Levels/level5/level_5.tscn")
	scene_manager.change_scene("res://Scenes/StartigView/Intro.tscn", null)
