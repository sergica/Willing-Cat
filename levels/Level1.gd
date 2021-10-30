#LEVEL 1
extends Node2D

var cat_is_dead

func _ready():
	
#when signal killcat is listened by the level then call killcat() to kill it
# warning-ignore:return_value_discarded
	Signals.connect("killcat",self,"killcat")
	

#the cat has touched something bad and has to die
func killcat():
	# 3 seconds countdown to restart
	cat_is_dead = get_tree().create_timer(3.0) 
	# play die sound
	$dead_sound.play()
	# show you died panel
	$CanvasLayer/dead.visible = true 
	get_tree().paused = true # pause game
	#dead time is up so now it restarts the level
	yield(cat_is_dead,"timeout")
	if cat_is_dead.time_left <= 0.0:
		#unpause game
		get_tree().paused = false
		#begin transition
		transition() 
		# warning-ignore:return_value_discarded
		get_tree().change_scene("res://levels/level1.tscn") # restart
		
	
#when the cat enters the finish line the level is cleared
# warning-ignore:unused_argument
func _on_finish_body_entered(body: Node) -> void:
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://levels/Level_cleared.tscn")


func transition():
	$TransitionScreen/ColorRect.visible = true
	$TransitionScreen/AnimationPlayer.play("transition")


