extends Control

@onready var nodeD2  = preload("res://DynamicNodeV2.tscn")
@onready var integerInput_ = preload("res://puzzles/integerInput.tscn")
@onready var initializer_ = preload("res://puzzles/initializer.tscn")
@onready var textLineInput_ = preload("res://puzzles/textLineInput.tscn")
@onready var integerInput_vboxroot_ = preload("res://puzzles/integerInput_vboxroot.tscn")
@onready var initializer_vboxroot_ = preload("res://puzzles/initializer_vboxroot.tscn")
@onready var textLineInput_vboxroot_ = preload("res://puzzles/textLineInput_vboxroot.tscn")


var puzzlePreloads:Dictionary = {}
var n: int = 1

func _ready():
	print("main_ready")
	puzzlePreloads["integerInput"]=integerInput_
	puzzlePreloads["initializer"]=initializer_
	puzzlePreloads["textLineInput"]=textLineInput_
	puzzlePreloads["integerInput_vboxroot"]=integerInput_vboxroot_
	puzzlePreloads["initializer_vboxroot"]=initializer_vboxroot_
	puzzlePreloads["textLineInput_vboxroot"]=textLineInput_vboxroot_
func _process(delta):
	pass



func _on_button_pressed() -> void:
	var nodeLayout : Dictionary = CsvLoader.get_db("nodeTemplate")
	var nodeLayout_vboxroot : Dictionary = CsvLoader.get_db("nodeTemplate_vboxroot")
	
	var tmp_node2 = nodeD2.instantiate()
	tmp_node2.setname("_controlroot")
	tmp_node2.make_layout(nodeLayout,puzzlePreloads)

	tmp_node2.name=tmp_node2.nodeName
	tmp_node2.title=tmp_node2.nodeName
	%GraphEdit.add_child(tmp_node2)

	var tmp_node4 = nodeD2.instantiate()
	tmp_node4.setname("_vboxroot")
	tmp_node4.make_layout(nodeLayout_vboxroot,puzzlePreloads)
	tmp_node4.name=tmp_node4.nodeName
	tmp_node4.title=tmp_node4.nodeName
	%GraphEdit.add_child(tmp_node4)
		
	for child in %GraphEdit.get_children():
		child.show()


func _on_button_2_pressed() -> void:
	SignalsManager.printNodeData.emit()
