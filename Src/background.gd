extends KinematicBody2D


# Declare member variables here. Examples:
onready var timer = get_node("creep")
var wait_amount = 2
var up_creep = 5

var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(wait_amount)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_creep_timeout():
	velocity.y -= up_creep
	velocity = move_and_slide(velocity)
