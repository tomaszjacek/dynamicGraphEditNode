extends GraphNode
class_name dynamicNode

const dNazwa = preload("res://dynamicNazwa.tscn")

func _ready():
	print("dynamicNode_ready")

func make_layout(dataDict : Dictionary):
	for key in dataDict:
		print(key)
		var tmpLabel = dNazwa.instantiate()
		tmpLabel.set_label(key)
		%vbox_left.add_child(tmpLabel)
	
func _process(delta):
	pass
