extends Area2D

# warning-ignore:unused_argument
func _on_Area2D_body_entered(body):
	#send signal the cat has touched a star
	Signals.emit_signal("item")
	#star is deleted from screen
	queue_free()
	
