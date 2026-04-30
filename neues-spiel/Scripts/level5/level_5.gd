extends Node2D

@onready var boss = get_node("Enemies/LeoSealKing")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameManager.score = 0
	boss.connect("boss_defeated", _on_leo_seal_king_boss_defeated)
	GameManager.ammunition = 0
	GameManager.reset_timer()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	GameManager.update_timer(delta)
	pass


func _on_leo_seal_king_boss_defeated() -> void:
	GameManager.save_time("Boss")
	#get_tree().change_scene_to_file("res://Scenes/EndViews/end_screen.tscn")
	Global.startingPoint = 0
	get_tree().call_deferred(
   	"change_scene_to_file",
	"res://Scenes/EndViews/Scoreboard.tscn"
)
