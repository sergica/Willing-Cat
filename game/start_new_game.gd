extends Button

#Start New Game button go to level 1
func _on_Button3_pressed():
	#warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/intro_lvl1.tscn")

#Select Level go to level selector
func _on_Button2_pressed() -> void:
	#warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/intro.tscn")
	pass # Replace with function body.

#Instructions button
func _on_Button4_pressed() -> void:
	#warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/Instructions.tscn")
	pass # Replace with function body.
