extends Area2D


# Declare member variables here. Examples:
export var min_speed = 150  # Minimum speed range.
var velocity = Vector2();

onready var timer = get_node("MoveTimer");

# Called when the node enters the scene tree for the first time.
func _ready():
	show() # Replace with function body.
	timer.set_wait_time(0.05)
	timer.start()



func _on_MoveTimer_timeout():
	velocity.x += min_speed
