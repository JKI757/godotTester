extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var orbit_radius = 33  # Adjust this based on your scale
var orbit_speed = 1.0  # Orbit speed, adjust as needed

func _process(delta):
	var angle = orbit_speed * delta
	var current_position = global_transform.origin
	var new_position = Vector3(
		current_position.x * cos(angle) - current_position.z * sin(angle),
		current_position.y,
		current_position.x * sin(angle) + current_position.z * cos(angle)
	)
	global_transform.origin = new_position
