extends Control
class_name integerInput

var puzzleName : String = "integerInput"
var inNodeName : String = ""
var parentNodeName : String = ""
func _ready():
	print("integerInput_ready")

func setname(nodename:String,nametxt:String):
	parentNodeName = nodename
	inNodeName =  nametxt
func set_label(txt:String):
	%Label.text = txt

func set_value():
	#%integerInput_SpinBox.value = val
	pass
func _process(delta):
	pass


func _on_integer_input_spin_box_value_changed(value: float) -> void:
	SignalsManager.puzzleInputUpdated.emit(parentNodeName,inNodeName,str(%integerInput_SpinBox.value))
