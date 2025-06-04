extends Button

signal active_changed(active: bool)

@export var toggle_on_text: String = "On"
@export var toggle_off_text: String = "Off"

func _ready() -> void:
	text = toggle_off_text

func _on_toggled(button_pressed: bool) -> void:
	text = toggle_on_text if button_pressed else toggle_off_text

func _on_mouse_entered() -> void:
	active_changed.emit(true)

func _on_mouse_exited() -> void:
	active_changed.emit(false)