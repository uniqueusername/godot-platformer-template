# a platform with adjustable width
extends StaticBody2D

@export var width: float = 128:
	set(value):
		width = value
		$sprite.scale.x = value
		$hover.scale.x = value
		$collider.shape.size.x = value
var mouse_inside: bool = false
var invulnerable: bool = true

func _ready():
	$collider.shape = RectangleShape2D.new()
	$collider.shape.size = Vector2(width, 16)

func _on_mouse_entered():
	mouse_inside = true
	$sprite.visible = false
	$hover.visible = true

func _on_mouse_exited():
	invulnerable = false
	mouse_inside = false
	$sprite.visible = true
	$hover.visible = false

func _on_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click") and mouse_inside and !invulnerable:
		queue_free()
