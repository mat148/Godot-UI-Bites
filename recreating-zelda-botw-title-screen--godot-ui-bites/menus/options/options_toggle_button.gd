extends PanelContainer

signal option_clicked
signal active_changed(active: bool)

@onready var options_toggle_button: Button = %OptionToggleButton
@onready var select_state: NinePatchRect = %SelectState

@export var toggle_on_text: String = "On"
@export var toggle_off_text: String = "Off"

func _ready() -> void:
	options_toggle_button.text = toggle_off_text
	select_state.visible = false

func _on_option_toggle_button_toggled(button_pressed: bool) -> void:
	options_toggle_button.text = toggle_on_text if button_pressed else toggle_off_text
	option_clicked.emit()

func _on_mouse_entered() -> void:
	active_changed.emit(true)
	select_state.visible = true

func _on_mouse_exited() -> void:
	active_changed.emit(false)
	select_state.visible = false