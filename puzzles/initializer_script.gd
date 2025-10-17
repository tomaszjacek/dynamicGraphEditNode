extends Control
class_name initializer

var puzzleName : String = "initializer"
var inNodeName : String = ""
var parentNodeName : String = ""
const initializers_array : Array[String] = [
	"a",
	"b", 
	"c"

]

var stringToIdxMap:Dictionary={}

func setname(nodename:String,nametxt:String):
	parentNodeName = nodename
	inNodeName =  nametxt
	
func set_label(txt:String):
	%Label.text = txt

func set_value():
	pass
		
func _ready():

	for i in initializers_array:
		%OptionButton.add_item(i)
	var ni:int=0
	for i in initializers_array:
		stringToIdxMap[i]=ni
		ni +=1


func _process(delta):
	pass

#

	


func _on_option_button_item_selected(index: int) -> void:
	var selected_item = initializers_array[index]
	SignalsManager.puzzleInputUpdated.emit(parentNodeName,inNodeName,selected_item)
