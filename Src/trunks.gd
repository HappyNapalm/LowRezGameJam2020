extends KinematicBody2D
signal touched

# Declare member variables here. Examples:
onready var timer = get_node("creep")
var wait_amount = .1
var up_creep = .5
var max_creep = 256.274 - 69 #position - screen size - magic number 

signal stopped

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

func creepUp(amount):
	velocity.y -= amount
	velocity = move_and_slide(velocity)
# Called when the node enters the scene tree for the first time.
func _ready():
	placeBranches()
	timer.set_wait_time(wait_amount)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(position.y < -max_creep):
		timer.stop()
		velocity.y = 0
		creepUp(0)
		emit_signal("stopped")



# We are moving up at a rate. However the refresh rate is wait_amount
func _on_creep_timeout():
	creepUp(up_creep)
	pass


func _on_lil_branch1_touched(body):
	if body.get_name() == "Player":
		emit_signal("touched")
		print("touch Player")
	print("touched",body.get_name())


func _on_lil_branch2_touched():
	emit_signal("touched")


func _on_lil_branch3_touched():
	emit_signal("touched")


func _on_lil_branch4_touched():
	emit_signal("touched")


func _on_lil_branch5_touched():
	emit_signal("touched")


func _on_lil_branch6_touched():
	emit_signal("touched")


func _on_lil_branch7_touched():
	emit_signal("touched")


func _on_lil_branch8_touched():
	emit_signal("touched")


func _on_med_branch1_touched():
	emit_signal("touched")


func _on_med_branch2_touched():
	emit_signal("touched")


func _on_med_branch3_touched():
	emit_signal("touched")


func _on_med_branch4_touched():
	emit_signal("touched")


func _on_med_branch5_touched():
	emit_signal("touched")


func _on_big_branch1_touched():
	emit_signal("touched")


func _on_big_branch2_touched():
	emit_signal("touched")


func _on_big_branch3_touched():
	emit_signal("touched")


func _on_big_branch4_touched():
	emit_signal("touched")


func _on_med_branch6_touched():
	emit_signal("touched")
