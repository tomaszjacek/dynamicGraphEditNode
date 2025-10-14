extends Control

@onready var nodeD  = preload("res://dynamicNode.tscn")
@onready var nodeD2  = preload("res://DynamicNodeV2.tscn")
@onready var integerInput_ = preload("res://tensorflowPuzless/integerInput.tscn")
@onready var initializer_ = preload("res://tensorflowPuzless/initializer.tscn")
var puzzlePreloads:Dictionary = {}
var n: int = 1

func _ready():
	print("main_ready")
	puzzlePreloads["integerInput"]=integerInput_
	puzzlePreloads["initializer"]=initializer_

func _process(delta):
	if Input.is_action_pressed("addDynamicNode"):
		print("a pressed")



func _on_button_pressed() -> void:
	var nodeLayout : Dictionary = CsvLoader.get_db("nodeTemplate")
	print("csv db test" ,nodeLayout["kernel_height"]["type"])
	var tmp_node = nodeD.instantiate()
	tmp_node.make_layout(nodeLayout)
	%GraphEdit.add_child(tmp_node)
		
	var tmp_node2 = nodeD2.instantiate()
	tmp_node2.make_layout(nodeLayout,puzzlePreloads)
		
	%GraphEdit.add_child(tmp_node2)
