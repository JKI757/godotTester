extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const EARTH_TILT_DEGREES = 23.5
var rotation_speed = 1.0  # Rotation speed in degrees per second
var tilt_axis = Vector3(0, 0, 1)


# Called when the node enters the scene tree for the first time.
func _ready():
	rotate_object_local(tilt_axis, deg2rad(EARTH_TILT_DEGREES))
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# Rotation speed in degrees per second


func _process(delta):
	# Calculate the rotation amount
	
	rotate_y(deg2rad(rotation_speed * delta))

	var rotation_amount = rotation_speed * delta
	
	# Update the rotation around the Y-axis (vertical axis)
	rotation_degrees.y += rotation_amount
	
	# Apply the rotation
	rotation_degrees = rotation_degrees
