extends Node
var screen_size = 64
signal cheese_fall

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Crow_animation_change():
	if($Crow.position.x < screen_size/2):
		$Crow.hide()
		$CrowSurprise.show()
		emit_signal("cheese_fall")
	pass # Replace with function body.


func _on_falling_cheese_scene_change():
	get_tree().change_scene("res://FoxScene.tscn")	#Brute changing the scene
	pass # Replace with function body.
