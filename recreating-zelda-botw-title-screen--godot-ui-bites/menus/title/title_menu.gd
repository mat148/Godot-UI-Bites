class_name TitleMenu extends Control

signal play_pressed
signal options_pressed
signal exit_pressed

func _on_options_button_button_pressed(button:MenuButtonGroup) -> void:
	options_pressed.emit()
