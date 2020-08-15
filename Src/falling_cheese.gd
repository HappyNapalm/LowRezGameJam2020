extends Sprite
var fall = 0
signal scene_change
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += fall
	if position.y > 64:
		emit_signal("scene_change")
	pass


func _on_CrowScene_cheese_fall():
	fall = 1
	pass # Replace with function body.
