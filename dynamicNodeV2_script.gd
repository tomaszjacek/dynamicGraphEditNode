extends GraphNode
class_name dynamicNodeV2


#const dNazwa = preload("res://dynamicName.tscn")



#var puzzlePreloads:Dictionary = {}

func _ready():
	print("dynamicNode_ready")
	#puzzlePreloads["integerInput"]=integerInput_
	
func make_layout(dataDict : Dictionary, puzzlePreloads : Dictionary):
	for key in dataDict:
		print(key)
		var tmpPuzzle = puzzlePreloads[dataDict[key]["type"]].instantiate()
		
		tmpPuzzle.setname(key)
		tmpPuzzle.set_label(dataDict[key]["label"])
		%vbox_left_v2.add_child(tmpPuzzle)
		
		
func _process(delta):
	pass
