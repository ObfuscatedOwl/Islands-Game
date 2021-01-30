extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var desiredHeight = -1
var height = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$"/root/global".register_player(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	height = lerp(height, desiredHeight, 0.01)
	translation.y = height
	
func modifyHeight(raise):
	print("hello")
	if raise:
		desiredHeight += 1
	else:
		desiredHeight -= 1
