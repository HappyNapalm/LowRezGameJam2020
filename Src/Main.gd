extends Node
export (PackedScene) var test

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var stopped = 0
var ground = 0
var outtaTime = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(outtaTime && !ground):
		get_tree().change_scene("res://CrowScene.tscn")	#Brute changing the scene
	pass

#func reset_instances():
#	$background.position = $bgStart.position
#	$Player.position = $PlayerStart.positon
#	$trunks.position = $trStart.position
#
#
#func _on_Player_lost_game():
#	print("lost")
#	reset_instances()
#	$Main.reload_current_scene()


func _on_trunks_touched():
	print("lost")


func _on_trunks_stopped():
	stopped = 1
#	$Timer.wait_time(10)	#Wait 10 seconds
	$Timer.start()
	print($Timer.get_time_left())
	pass # Replace with function body.


func _on_Timer_timeout():
	outtaTime = 1
	pass # Replace with function body.


func _on_Player_grounded():
	ground = 0
	pass # Replace with function body.
