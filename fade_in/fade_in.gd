extends ColorRect

#fade in animation lasts 0.5 seconds then calls its ending 
signal fade_finished

func fade_in():
	$AnimationPlayer.play("fade_in")

func _on_AnimationPlayer_animation_finished(_anim_name):
	emit_signal("fade_finished")
