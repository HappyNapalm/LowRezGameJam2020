extends StaticBody2D
signal touched

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	set_contact_monitor(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_med_branch_body_entered(body):
	if body.get_name() == "Player":
		emit_signal("touched")
		print("touch Player")
	print("touched",body.get_name())
