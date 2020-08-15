extends Sprite
onready var timer = $SupriseTimer
var wait_amount = 1
signal Happy
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_SupriseTimer_timeout():
	hide()
	emit_signal("Happy")
	set_visible(false)
	pass # Replace with function body.


func _on_Fox_hide():
	timer.set_wait_time(wait_amount)
	timer.start()
	pass # Replace with function body.
