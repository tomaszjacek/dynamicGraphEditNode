extends Node2D

@onready var nodeD  = preload("res://dynamicNode.tscn")
var n: int = 1

func _ready():
	print("main_ready")

func _process(delta):
	if Input.is_action_pressed("addDynamicNode"):

		var nodeLayout : Dictionary = CsvLoader.get_db("nodeTemplate")
		var tmp_node = nodeD.instantiate()
		tmp_node.make_layout(nodeLayout)
		%GraphEdit.add_child(tmp_node)
