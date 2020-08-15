extends AnimatedSprite
var happy = 0
signal next_scene

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(happy):
		position.x -= 1
	if(position.x < 16):
		emit_signal("next_scene")
	pass


func _on_FoxSurprise_Happy():
	show()
	happy = 1
	pass # Replace with function body.
