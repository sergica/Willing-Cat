extends Control

#volume control slider

func _on_HSlider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
	pass # Replace with function body.
