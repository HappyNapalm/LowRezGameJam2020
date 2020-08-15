extends AnimatedSprite

signal animation_change
var loop_count = 0
const happy_loops = 5

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 1
	if(position.x < -64):
		position.x = 64
		loop_count += 1
	if(loop_count == happy_loops):
		emit_signal("animation_change")
