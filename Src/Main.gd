extends Node
export (PackedScene) var test

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

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
