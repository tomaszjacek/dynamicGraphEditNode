extends Control
class_name initializer

var puzzleName : String = "initializer"
var inNodeName : String = ""
const initializers_array : Array[String] = [
	"a",
	"b", 
	"c"

]

var stringToIdxMap:Dictionary={}

func setname(nametxt:String):
	inNodeName = puzzleName + "-" + nametxt

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
	
#func ustawWartosciPoczatkowe(nazwa:String,naglowek:String,zakres:String,nazwaInitializatora):

		
	


func _process(delta):
	pass
