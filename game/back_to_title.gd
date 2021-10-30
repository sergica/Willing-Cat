extends Control

#Back button returns to main menu
func _on_Button_pressed():
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")


