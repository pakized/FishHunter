extends Control
@onready var scores_label = $VBoxContainer/ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var text := ""
	for level in GameManager.scoreboard.keys():
		text += "=== %s ===\n" % level
		var entries: Array = GameManager.scoreboard[level]
		
		for i in range(entries.size()):
			var entry = entries[i]
			text += "%d. %s -%s\n"%[
				i+1,
				entry["name"],
				format_time(entry["time"])
			]
		text += "\n"
	scores_label.text=text
		

		#var entry = GameManager.scoreboard[level]
		#if not entry.has("name") or not entry.has("time"):
			#push_warning("Ungültiger Scoreboard-Eintrag: %s -> %s" % [level, entry])
			#continue
		#text += "%s – %s – %s\n" % [
			#level,
			#entry["name"],
			#format_time(entry["time"])
		#]
	#scores_label.text = text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func format_time(seconds: float) -> String:
	var minutes = int(seconds) / 60
	var secs = int(seconds) % 60
	return "%02d:%02d" % [minutes, secs]


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/EndViews/end_screen.tscn")
	pass # Replace with function body.
