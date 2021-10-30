extends Button

#Start New Game button loads intro scene
func _on_Button3_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/intro.tscn")
