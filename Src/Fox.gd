extends AnimatedSprite

var screen_size = 64
signal change_sprite
var singleshot = 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(position.x > screen_size/2):
		position.x -= 1
	elif(singleshot):
		emit_signal("change_sprite")
		singleshot = 0
	pass
