extends Node

@onready var secret: Label = $secret
@onready var end_label: Label = $"TheEnd?"
var score = 0

func add_point():
	score += 1
	if score == 10:
		end_label.text = "Hooray! You collected all " + str(score) + " Coins! I'm so proud of you!!!"
	elif score > 14:
		secret.text = "So you made it to the secret ending?? AND COLLECTED ALL " + str(score) + " COINS?? I'm very impressed and so proud of you"
	else:
		end_label.text = "You collected " + str(score) + " Coins!"
		secret.text = "You collected " + str(score) + " Coins and got to the secret ending??"
		
func _process(_delta):
	if score == 0:
		end_label.text = "You collected " + str(score) + " Coins... wait thats impressive"
		secret.text = "You collected " + str(score) + " Coins AND GOT THE SECRET ENDING??? You are so impressively amazing"
