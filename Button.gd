extends Spatial

var activated = false

# Called when the node enters the scene tree for the first time.
func _ready():
	updateColor() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			activated = not activated
			print("activated" + str(activated))
			$"/root/global".ocean.modifyHeight(activated)
			updateColor()


func updateColor():
	if activated:
		$"./MeshInstance".get_surface_material(0).albedo_color = Color.green
	else:
		$"./MeshInstance".get_surface_material(0).albedo_color = Color.red
	
