extends GraphNode
class_name dynamicNode

const dNazwa = preload("res://dynamicName.tscn")

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



#I never tried it, but I found instance(string) method of ClassDB in documentation. 
#check out if ot works. ClassDB also has a method class_get_property_list with string
# as argument, so You won’t even have to create any new instance.
#ClassDB.instance()
