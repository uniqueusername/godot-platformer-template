extends VBoxContainer

# movement component to send config too
var movement: Node2D

@onready var start_accel = $start_accel
@onready var stop_accel = $stop_accel
@onready var max_speed = $max_speed
@onready var jump_height = $jump_height
@onready var sticky_distance = $sticky_distance
@onready var coyote_duration = $coyote_duration
@onready var first_half_grav = $first_half_grav
@onready var second_half_grav = $second_half_grav
@onready var air_strafe_multiplier = $air_strafe_multiplier

# send values from ui to movement component
func send_config():
	if movement:
		movement.update_config(
			start_accel.value,
			stop_accel.value,
			max_speed.value,
			jump_height.value,
			sticky_distance.value,
			coyote_duration.value,
			first_half_grav.value,
			second_half_grav.value,
			air_strafe_multiplier.value
		)

# retrieve defaults from movement component
func set_movement_component(component):
	movement = component
	start_accel.value = movement.start_accel
	stop_accel.value = movement.stop_accel
	max_speed.value = movement.max_speed
	jump_height.value = movement.jump_height
	sticky_distance.value = movement.sticky_distance
	coyote_duration.value = movement.coyote_duration
	first_half_grav.value = movement.first_half_grav
	second_half_grav.value = movement.second_half_grav
	air_strafe_multiplier.value = movement.air_strafe_multiplier

func _on_start_accel_value_changed(_value: float):
	send_config()

func _on_stop_accel_value_changed(_value: float):
	send_config()

func _on_max_speed_value_changed(_value: float):
	send_config()

func _on_jump_height_value_changed(_value: float):
	send_config()
	
func _on_sticky_distance_value_changed(_value: float):
	send_config()

func _on_coyote_duration_value_changed(_value: float):
	send_config()

func _on_first_half_grav_value_changed(_value: float):
	send_config()

func _on_second_half_grav_value_changed(_value: float):
	send_config()

func _on_air_strafe_multiplier_value_changed(_value: float):
	send_config()
