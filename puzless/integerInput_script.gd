extends Control
class_name integerInput

var puzzleName : String = "integerInput"
var inNodeName : String = ""

func _ready():
	print("integerInput_ready")

func setname(nametxt:String):
	inNodeName = puzzleName + "-" + nametxt
	
func set_label(txt:String):
	%Label.text = txt

func set_value():
	#%integerInput_SpinBox.value = val
	pass
func _process(delta):
	pass
