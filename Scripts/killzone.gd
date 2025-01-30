extends Area2D

@onready var timer: Timer = $Timer
@onready var audio_stream_player: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var red_screen: CanvasModulate = %RedScreen

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	red_screen.visible = true
	audio_stream_player.play()
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	red_screen.visible = false
	get_tree().reload_current_scene()
