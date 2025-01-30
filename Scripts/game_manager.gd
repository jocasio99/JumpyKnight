extends Node


@onready var end_label: Label = $"TheEnd?"
var score = 0

func add_point():
	score += 1
	if score == 10 and get_tree().current_scene.name == "level":
		end_label.text = "Hooray! You collected all " + str(score) + " Coins! I'm so proud of you!!!"
	#elif score > 14:
		#secret.text = "So you made it to the secret ending?? AND COLLECTED ALL " + str(score) + " COINS?? I'm very impressed and so proud of you"
	elif get_tree().current_scene.name == "level":
		end_label.text = "You collected " + str(score) + " Coins!"
		
		
func _process(_delta):
	if score == 0 and get_tree().current_scene.name == "level":
		end_label.text = "You collected " + str(score) + " Coins... wait thats impressive"
