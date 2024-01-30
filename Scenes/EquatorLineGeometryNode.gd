extends ImmediateGeometry

const EARTH_TILT_DEGREES = 23.5
const EARTH_RADIUS = 1.0  # Adjust according to your Earth model's scale
const SEGMENTS = 360

func _ready():
	# Create a new material (optional, for colored line)
	var material = SpatialMaterial.new()
	material.albedo_color = Color(1, 0, 0)  # White color
	set_material_override(material)

	# Begin drawing lines
	clear()
	begin(Mesh.PRIMITIVE_LINES, null)

	# Draw the equator line
	for i in range(SEGMENTS):
		var angle_rad = i * 2.0 * PI / SEGMENTS
		var next_angle_rad = (i + 1) * 2.0 * PI / SEGMENTS

		# Calculate the points on the circle
		var x = EARTH_RADIUS * cos(angle_rad)
		var z = EARTH_RADIUS * sin(angle_rad)
		var next_x = EARTH_RADIUS * cos(next_angle_rad)
		var next_z = EARTH_RADIUS * sin(next_angle_rad)

		# Rotate points to account for Earth's tilt
		var rotated_point = rotate_point(Vector3(x, 0, z), EARTH_TILT_DEGREES)
		var next_rotated_point = rotate_point(Vector3(next_x, 0, next_z), EARTH_TILT_DEGREES)

		# Draw line segment
		add_vertex(rotated_point)
		add_vertex(next_rotated_point)

	# Finish drawing
	end()

# Function to rotate a point around the X-axis by a given angle
func rotate_point(point, angle_degrees):
	return Vector3(point.x, point.y, point.z)
	var rad = deg2rad(angle_degrees)
	var cos_angle = cos(rad)
	var sin_angle = sin(rad)
	return Vector3(
		point.x,
		point.y * cos_angle - point.z * sin_angle,
		point.y * sin_angle + point.z * cos_angle
	)
