extends Control
class_name textLineInput

var puzzleName : String = "textLineInput"
var inNodeName : String = ""

func _ready():
	print("integerInput_ready")

func setname(nametxt:String):
	inNodeName = puzzleName + "-" + nametxt
	
func set_label(txt:String):
	%Label.text = txt

func set_value(txt:String):
	%TextEdit.text = txt
func _process(delta):
	pass
