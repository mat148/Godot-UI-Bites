class_name MenuButtonGroup extends HBoxContainer

signal button_mouse_entered(button: MenuButtonGroup)
signal button_mouse_exited(button: MenuButtonGroup)
signal button_pressed(button: MenuButtonGroup)

@onready var cursor: TextureRect = %Cursor
@onready var button: Button = %Button

@export var button_text: String = "Test"
@export var active: bool = false :
	set(value):
		active = value
		cursor.visible = active
		button.theme_type_variation = "ActiveButton" if active else "DefaultButton"

func _ready() -> void:
	active = false
	button.text = button_text

func _on_button_mouse_entered() -> void:
	button_mouse_entered.emit(self)

func _on_button_mouse_exited() -> void:
	button_mouse_exited.emit(self)

func _on_button_pressed() -> void:
	button_pressed.emit(self)
