extends CanvasLayer

@onready var color_rect: ColorRect = $ColorRect
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	color_rect.visible = false
	animation_player.animation_finished.connect(_on_animation_finished)
	
func _on_animation_finished(anim):
	if anim == "fade2black":
		animation_player.play("fade2")
	elif anim == "fade2":
		color_rect.visible = false
	
func change():
	color_rect.visible = true
	animation_player.play("fade2black")
