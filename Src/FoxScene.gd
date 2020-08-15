extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Fox_change_sprite():
	$Fox.hide()
	$FoxSurprise.show()
	pass # Replace with function body.


func _on_FoxHappy_next_scene():
	get_tree().change_scene("res://Main.tscn")	#Brute changing the scene
	pass # Replace with function body.
