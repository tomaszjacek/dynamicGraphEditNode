extends Control
class_name dynamicName

func _ready():
	print("dynamicNazwa_ready")

func set_label(txt:String):
	$Panel/Label.text = txt
	

func _process(delta):
	pass
