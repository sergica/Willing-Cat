extends Button

#start level button, brings up the level
func _on_start_pressed() -> void:
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/Level1.tscn")
