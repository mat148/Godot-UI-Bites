class_name OptionsMenu extends Panel

signal close_pressed

@onready var options_container: VBoxContainer = %OptionsContainer
@onready var option_description: Label = %OptionDescription

func _ready() -> void:
	%TitleMenu.options_pressed.connect(Callable(self, "_on_options_pressed"))
	visible = false
	option_description.text = ""

	# Get all OptionItems in the OptionsMenu
	for child in options_container.get_children():
		if child is OptionItem:
			child.option_active_changed.connect(Callable(self, "_on_option_active_changed"))

func _on_option_active_changed(active: bool, option_description: String) -> void:
	if active:
		self.option_description.text = option_description
	else:
		self.option_description.text = ""

func _on_options_pressed() -> void:
	visible = true

func _on_close_pressed() -> void:
	visible = false
	close_pressed.emit()
