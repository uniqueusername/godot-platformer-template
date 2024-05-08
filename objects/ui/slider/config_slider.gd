extends HBoxContainer

signal value_changed(value: float)

@export var label: String = "Label":
	set(value):
		label = value
		$label.text = value
@export var min_value: float = 0:
	set(value): 
		min_value = value
		$slider.min_value = value
@export var max_value: float = 1000:
	set(value):
		max_value = value
		$slider.max_value = value
@export var step: float = 0.5:
	set(value):
		step = value
		$slider.step = value
@export var value: float = min_value
@export var exponential: bool = false:
	set(value):
		exponential = value
		$slider.exp_edit = value
@export_multiline var tooltip: String = "":
	set(value):
		tooltip = value
		$slider.tooltip_text = value

func _ready():
	$value.text = str(value)
	$slider.value = value

# evolve child signal to parent and update text
func _on_slider_value_changed(value):
	self.value = value
	$value.text = str(value)
	value_changed.emit(value)
