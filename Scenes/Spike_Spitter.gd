extends Node2D
onready var arrow = $Arrow
export (int) var arrow_speed = 150



func _process(delta):
	arrow.translate(Vector2.LEFT *arrow_speed * delta)


func _on_Spike_End_area_entered(area):
	if area == arrow:
		arrow.global_position = $SpikeSpiter/Position2D.global_position
