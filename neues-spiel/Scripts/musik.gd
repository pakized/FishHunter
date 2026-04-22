
extends AudioStreamPlayer2D

const LOOP_DURATION := 5.5

func _ready() -> void:
	_loop()

func _loop() -> void:
	play(0.0)
	await get_tree().create_timer(LOOP_DURATION).timeout
	stop()
	seek(0.0)
	_loop()
