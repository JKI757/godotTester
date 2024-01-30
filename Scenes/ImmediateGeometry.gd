extends ImmediateGeometry


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	   # Create a new material
	var material = SpatialMaterial.new()

	# Set the material color
	material.albedo_color = Color(1, 0, 0)  # Red color

	# Assign the material to the ImmediateGeometry
	set_material_override(material)


	clear()
	begin(Mesh.PRIMITIVE_LINES, null)

	# Define the length of the line
	var line_length = 10.0  # Adjust as needed

	# Draw line along the Y-axis
	# Assuming the Earth node is scaled appropriately
	var start_point = Vector3(0, -line_length, 0)
	var end_point = Vector3(0, line_length, 0)

	# Draw the line
	add_vertex(start_point)
	add_vertex(end_point)


	# End drawing
	end()



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
