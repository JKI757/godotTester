extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var earth

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	earth = get_node("../earth")
	print (earth)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





		
func _process(_delta):

	if earth:
		var camera_node = get_node("../Camera")
		camera_node.look_at(earth.global_transform.origin, Vector3.UP)
