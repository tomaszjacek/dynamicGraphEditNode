extends Control
class_name textLineInput_vboxroot

var puzzleName : String = "textLineInput"
var inNodeName : String = ""
var parentNodeName : String = ""
func _ready():
	print("integerInput_ready")

func setname(nodename:String,nametxt:String):
	parentNodeName = nodename
	inNodeName =  nametxt
func set_label(txt:String):
	%Label.text = txt

func set_value(txt:String):
	%TextEdit.text = txt
func _process(delta):
	pass


func _on_text_edit_text_changed() -> void:
	SignalsManager.puzzleInputUpdated.emit(parentNodeName,inNodeName,%TextEdit.text)
