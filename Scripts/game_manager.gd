extends Node

@onready var end_label: Label = $"TheEnd?"
var score = 0

func add_point():
	score += 1
	if score >= 10:
		end_label.text = "Hooray You collected all " + str(score) + " Coins! I'm proud of you!!!"
	else:
		end_label.text = "You collected " + str(score) + " Coins!"
		
func _process(delta):
	if score == 0:
		end_label.text = "You collected " + str(score) + " Coins... wait thats impressive"
