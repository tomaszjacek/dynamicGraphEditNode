extends Control
class_name initializer
var nazwaTypu : String = ""
var puzzleName : String = ""

const initializers_array : Array[String] = [
	"none",
	"constan",          #t: Initializer that generates tensors with constant values.
	"glorot_normal",          #: The Glorot normal initializer, also called Xavier normal initializer.
	"glorot_uniform",         # : The Glorot uniform initializer, also called Xavier uniform initializer.
	"he_normal",          #: He normal initializer.
	"he_uniform",          #: He uniform variance scaling initializer.
	"identity",          #: Initializer that generates the identity matrix.
	"lecun_normal",          #: Lecun normal initializer.
	"lecun_uniform",          #: Lecun uniform initializer.
	"ones",          #: Initializer that generates tensors initialized to 1.
	"orthogonal",          #: Initializer that generates an orthogonal matrix.
	"random_normal",          #: Random normal initializer.
	"random_uniform",          #: Random uniform initializer.
	"truncated_normal",          #: Initializer that generates a truncated normal distribution.
	"variance_scaling",          #: Initializer that adapts its scale to the shape of its input tensors.
	"zeros"          #: Initializer that generates tensors initialized to 0.
]

var stringToIdxMap:Dictionary={}

func setname(nametxt:String):
	puzzleName = nametxt

func set_label(txt:String):
	%naglowek_Label.text = txt

func set_value():
	pass
		
func _ready():

	for i in initializers_array:
		%OptionButton.add_item(i)
	var ni:int=0
	for i in initializers_array:
		stringToIdxMap[i]=ni
		ni +=1
	
func ustawWartosciPoczatkowe(nazwa:String,naglowek:String,zakres:String,nazwaInitializatora):
	nazwaTypu = nazwa
	if(zakres == "shared"):
		%shared_CheckBox.button_pressed = true
		%self_CheckBox.button_pressed = false
	else:
		%shared_CheckBox.button_pressed = false
		%self_CheckBox.button_pressed = true
		
		
	


func _process(delta):
	pass
