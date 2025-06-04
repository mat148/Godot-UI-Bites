class_name ButtonsContainer extends VBoxContainer

@export var buttons: Array[MenuButtonGroup] = []

var current_button: int = 0

func _ready() -> void:
	buttons[current_button].active = true

func _on_mouse_entered(button: MenuButtonGroup) -> void:
	for b in buttons:
		b.active = false

	button.active = true
	current_button = buttons.find(button)
