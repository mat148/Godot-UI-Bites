class_name OptionItem extends Panel

signal option_active_changed(active: bool, option_description: String)

@onready var option_label: Label = %OptionLabel
@onready var option_container: HBoxContainer = %OptionContainer

@export var option_name: String = ""
@export var option_action: PackedScene
@export var option_description: String = ""

func _ready() -> void:
	option_label.text = option_name
	var option = option_action.instantiate()
	option_container.add_child(option)
	option.active_changed.connect(_on_option_active_changed)

func _on_option_active_changed(active: bool) -> void:
	theme_type_variation = "OptionItemActive" if active else "OptionItemDefault"
	option_active_changed.emit(active, option_description)

func _on_mouse_entered() -> void:
	theme_type_variation = "OptionItemActive"
	option_active_changed.emit(true, option_description)

func _on_mouse_exited() -> void:
	theme_type_variation = "OptionItemDefault"
	option_active_changed.emit(false, option_description)
