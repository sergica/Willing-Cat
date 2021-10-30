extends Node2D

#if cat touches an obstacle then signal killcat is emited 
func _on_Area2D_body_entered(_body: Node) -> void:
	Signals.emit_signal("killcat")
	pass # Replace with function body.
