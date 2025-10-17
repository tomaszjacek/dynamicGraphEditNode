extends GraphNode
class_name dynamicNodeV2

var nodeData:Dictionary = {}
var nodeType:String = "dynamicNodeV2"
var nodeName:String = ""
func setname(n:String):
	nodeName = nodeType + "_" + n
	
func _ready():
	SignalsManager.puzzleInputUpdated.connect(saveInputChange)
	SignalsManager.printNodeData.connect(printNode)
func make_layout(dataDict : Dictionary, puzzlePreloads : Dictionary):
	for key in dataDict:
		print("KEY:"+key)
		var tmp_label : String = dataDict[key]["label"]
		var tmp_type : String = dataDict[key]["type"]
		var tmp_value : String = str(dataDict[key]["value"])
		
		var tmpPuzzle = puzzlePreloads[tmp_type].instantiate()
		
		tmpPuzzle.setname(nodeName,key)
		tmpPuzzle.set_label(tmp_label)
		%vbox_left_v2.add_child(tmpPuzzle)
		#if not nodeData.keys().has(tmp_name):
		#	nodeData[tmp_name]={}
		nodeData[key]=tmp_value
func _process(delta):
	pass

func saveInputChange(parentNodeName:String,puzzle_name:String,value:String):
	print("parentNodeName: "+parentNodeName+" | "+"puzzle_name: "+puzzle_name + " | valuevalue:"+value)
	if nodeName == parentNodeName:
		
		nodeData[puzzle_name]=value
	
func printNode():
	print("NODENAME:", nodeName)
	for key in nodeData:
		print(key+" : "+nodeData[key])
