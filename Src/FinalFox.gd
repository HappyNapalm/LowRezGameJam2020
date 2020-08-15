extends AnimatedSprite
var EndCutscene = 0
signal change_sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(EndCutscene):
		if(position.x > get_node("../Player").position.x):
			position.x -= 1
		else:
			self.hide()
			emit_signal("change_sprite")
	pass


func _on_Player_grounded():
	EndCutscene = 1
	pass # Replace with function body.
