extends Control
class_name integerInput
#@onready var label = $VBoxContainer/Label
#@onready var value = $VBoxContainer/SpinBox

var puzzleName : String = ""

func _ready():
	print("integerInput_ready")

func setname(nametxt:String):
	puzzleName = nametxt
	
func set_label(txt:String):
	%integerInput_Label.text = txt

func set_value():
	#%integerInput_SpinBox.value = val
	pass
func _process(delta):
	pass
