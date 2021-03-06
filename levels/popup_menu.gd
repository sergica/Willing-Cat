extends Control
#ESC menu button

var notPaused = true

# Called every frame.
func _process(_delta):
	
	if Input.is_action_just_pressed("menu"):
		if notPaused:
			get_tree().paused = true # pause game
			notPaused = false
			visible = true # menu is on
		else:
			get_tree().paused = false # unpause game
			notPaused = true
			visible = false	# menu is off

#Restart button
func _on_restart_pressed() -> void:
	#Reload current scene
	#warning-ignore:return_value_discarded
	get_tree().change_scene(get_tree().current_scene.filename)
	get_tree().paused = false
	visible = false # menu is off

# Exit button
func _on_exit_pressed() -> void:
	#warning-ignore:return_value_discarded
	get_tree().quit() #quit game

#Level Selector button
func _on_lvl_pressed() -> void:
	#warning-ignore:return_value_discarded
	get_tree().paused = false
	get_tree().change_scene("res://game/intro.tscn")
	
