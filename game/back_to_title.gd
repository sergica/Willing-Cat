extends Control

#Back button returns to main menu
func _on_Button_pressed():
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")


func _on_back_pressed() -> void:
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/StartGame.tscn")
	pass # Replace with function body.


func _on_credits_exit_pressed() -> void:
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/Options.tscn")
	pass # Replace with function body.


func _on_credits_pressed() -> void:
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/Credits.tscn")
	pass # Replace with function body.
