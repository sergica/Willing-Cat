#LEVEL 4
extends Node2D

var cat_is_dead
var stars = 0

func _ready():
	
#signals for kill the cat and get a star
# warning-ignore:return_value_discarded
	Signals.connect("killcat",self,"killcat")
# warning-ignore:return_value_discarded
	Signals.connect("item",self,"item")


#the cat has touched something bad and has to die
func killcat():
	$cat/AnimatedSprite.play("dead")
	# 3 seconds countdown to restart
	cat_is_dead = get_tree().create_timer(3.0) 
	# play die sound
	$dead_sound.play()
	# show you died panel
	$CanvasLayer/dead.visible = true
	#$CanvasLayer/dead/Panel/Label.set_text(String())
	#transition() 
	get_tree().paused = true # pause game
	#dead time is up so now it restarts the level
	yield(cat_is_dead,"timeout")
	if cat_is_dead.time_left <= 0.0:
		#unpause game
		get_tree().paused = false	 
		# warning-ignore:return_value_discarded
		#You died label no visible
		$CanvasLayer/dead.visible = false
		#restart music
		$Level_music.play(0.0)
		#move cat to start position
		$cat/AnimatedSprite.play("run")
		$cat.respawn()
		
		
#the cat picks up a star
func item():
	#star pick up sound
	$get_star.play()	
	#star counter + 1
	stars = stars+1
	#update label star counter
	$cat/CanvasLayer/counter/NinePatchRect/Label.set_text(String(stars))
	
	
#when the cat enters the finish line the level is cleared
# warning-ignore:unused_argument
func _on_finish_body_entered(body: Node) -> void:
	#warning-ignore:return_value_discarded
	#stop level music
	$Level_music.stop()
	#end level music
	$purring.play()
	#stop cat
	$cat.speed = 0
	#write number of stars in end level label
	$cat/end_lvl/Panel/Label.set_text(String(stars))
	#show end lvl panel
	$cat/end_lvl/Panel.visible = true
	
	
#transition between screens
func transition():
	$TransitionScreen/ColorRect.visible = true
	$TransitionScreen/AnimationPlayer.play("transition")


func _on_next_lvl_pressed() -> void:
	get_tree().change_scene("res://levels/intro_lvl5.tscn")


func _on_to_menu_pressed() -> void:
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")
