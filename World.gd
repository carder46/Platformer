extends Node2D


func _ready():
	pass

func _process(_delta):
	
	if Input.is_action_just_pressed("reset"):
		GameStats.reset()
	$CanvasLayer/Control/Label.text = GameStats.get_time()
