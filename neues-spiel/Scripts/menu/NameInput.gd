extends Control


@onready var name_input = $VBoxContainer/NameInput

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("📦 Scoreboard:", GameManager.scoreboard)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed():
	if name_input.text.strip_edges() != "":
		GameManager.player_name = name_input.text.strip_edges()
	else:
		GameManager.player_name = "Player"

	#get_tree().change_scene_to_file("res://Scenes/Levels/level5/level_5.tscn")
	scene_manager.change_scene("res://Scenes/StartigView/Intro.tscn", null)
