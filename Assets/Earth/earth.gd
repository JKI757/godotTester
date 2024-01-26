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


# Rotation speed in degrees per second
var rotation_speed = 1.0  

func _process(delta):
	# Calculate the rotation amount
	var rotation_amount = rotation_speed * delta
	
	# Update the rotation around the Y-axis (vertical axis)
	rotation_degrees.y += rotation_amount
	
	# Apply the rotation
	rotation_degrees = rotation_degrees
