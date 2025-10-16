extends Control

@onready var nodeD2  = preload("res://DynamicNodeV2.tscn")
@onready var integerInput_ = preload("res://tensorflowPuzless/integerInput.tscn")
@onready var initializer_ = preload("res://tensorflowPuzless/initializer.tscn")
@onready var textLineInput_ = preload("res://tensorflowPuzless/textLineInput.tscn")

var puzzlePreloads:Dictionary = {}
var n: int = 1

func _ready():
	print("main_ready")
	puzzlePreloads["integerInput"]=integerInput_
	puzzlePreloads["initializer"]=initializer_
	puzzlePreloads["textLineInput"]=textLineInput_

func _process(delta):
	pass



func _on_button_pressed() -> void:
	var nodeLayout : Dictionary = CsvLoader.get_db("nodeTemplate")

	var tmp_node2 = nodeD2.instantiate()
	tmp_node2.make_layout(nodeLayout,puzzlePreloads)
	
	%GraphEdit.add_child(tmp_node2)
	
	for child in %GraphEdit.get_children():
		child.show()
