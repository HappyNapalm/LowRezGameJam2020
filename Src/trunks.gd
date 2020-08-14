extends KinematicBody2D


# Declare member variables here. Examples:
onready var timer = get_node("creep")
var wait_amount = .1
var up_creep = .5

var velocity = Vector2()

#This screams I don't know how to do arrays in GODOT
func placeBranches():
	$lil_branch1.position = $Branch1.position
	$med_branch1.position = $Branch2.position
	$med_branch2.position = $Branch3.position
	$lil_branch2.position = $Branch4.position
	$lil_branch3.position = $Branch5.position
	$big_branch1.position = $Branch6.position
	$big_branch2.position = $Branch7.position
	$med_branch3.position = $Branch8.position
	$med_branch4.position = $Branch9.position
	$lil_branch4.position = $Branch10.position
	$med_branch5.position = $Branch11.position
	$lil_branch5.position = $Branch12.position
	$big_branch3.position = $Branch13.position
	$med_branch6.position = $Branch14.position
	$lil_branch6.position = $Branch15.position
	$big_branch4.position = $Branch16.position
	$lil_branch7.position = $Branch17.position
	$lil_branch8.position = $Branch18.position

# Called when the node enters the scene tree for the first time.
func _ready():
	placeBranches()
	timer.set_wait_time(wait_amount)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):




# We are moving up at a rate. However the refresh rate is wait_amount
func _on_creep_timeout():
	velocity.y -= up_creep
	velocity = move_and_slide(velocity)
