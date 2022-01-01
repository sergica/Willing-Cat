extends Node2D

var start_level

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#timer to start level 5
	start_level = get_tree().create_timer(2.5) 
	transition()
	yield(start_level,"timeout")
	if start_level.time_left <= 0.0:
	# warning-ignore:return_value_discarded
		get_tree().change_scene("res://levels/Level5.tscn")
		
	pass # Replace with function body.


func transition():
	$TransitionScreen/ColorRect.visible = true
	$TransitionScreen/AnimationPlayer.play("transition")
