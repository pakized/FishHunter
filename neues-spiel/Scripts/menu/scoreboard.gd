extends Control
@onready var scores_label = $VBoxContainer/ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var text := ""
	for level in GameManager.scoreboard.keys():
		var entry = GameManager.scoreboard[level]
		text += "%s – %s – %s\n" % [
			level,
			entry["name"],
			format_time(entry["time"])
			]
		scores_label.text = text




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func format_time(seconds: float) -> String:
	var minutes = int(seconds) / 60
	var secs = int(seconds) % 60
	return "%02d:%02d" % [minutes, secs]
