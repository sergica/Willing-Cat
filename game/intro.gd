extends Button

#Select Level Menu
func _on_start_pressed() -> void:
#warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/intro_lvl1.tscn")

func _on_start2_pressed() -> void:
#warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/intro_lvl2.tscn")

func _on_start3_pressed() -> void:
#warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/intro_lvl3.tscn")

func _on_level4_pressed() -> void:
#warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/intro_lvl4.tscn")

func _on_level5_pressed() -> void:
#warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/intro_lvl5.tscn")

func _on_Back_pressed() -> void:
#warning-ignore:return_value_discarded
	get_tree().change_scene("res://game/StartGame.tscn")
	
