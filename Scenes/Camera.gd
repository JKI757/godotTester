extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var earth
onready var camera_node = get_node("../Camera")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	earth = get_node("../earth")
	print (earth)



func _process(_delta):

	if earth and camera_node:
		camera_node.look_at(earth.global_transform.origin, Vector3.UP)
