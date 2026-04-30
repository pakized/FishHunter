extends Node

var score := 0
var ammunition = 0
var hasIce = false
var isFrozen = false
var _freeze_running := false

#player name
var player_name := "Player"

#timer 
var current_level_time := 0.0
var scoreboard :={}

func reset_timer():
	current_level_time = 0.0
	
func update_timer(delta):
	current_level_time += delta

func save_time(level_name: String):
	scoreboard [level_name] = {
		"name" : player_name,
		"time" : current_level_time}
	save_to_file()

func save_to_file():
	var file = FileAccess.open("user://scoreboard.save", FileAccess.WRITE)
	file.store_string(JSON.stringify(scoreboard))
	file.close()

func load_from_file():
	if not FileAccess.file_exists("user://scoreboard.save"):
		return
	var file = FileAccess.open("user://scoreboard.save", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	file.close()
	if typeof(data) == TYPE_DICTIONARY:
		scoreboard = data

func _ready() -> void:
	load_from_file()

func add_point(amount: int = 1) -> void:
	score += amount
	#print("Score:", score)
	
func add_ammunition():
	ammunition += 1

func get_ice():
	hasIce = true

func freeze_for(seconds: float) -> void:
	if _freeze_running:
		return
	_freeze_running = true
	isFrozen = true
	print("FREEZE START")
	await get_tree().create_timer(seconds).timeout
	isFrozen = false
	_freeze_running = false
	print("FREEZE END")
