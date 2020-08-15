extends RigidBody2D


# Declare member variables here. Examples:
var screen_size
export var speed = 100		#Magic Number
var trunk_thickness = 12
var cheese_thickness = 7
var magic_offset = trunk_thickness + cheese_thickness
var velocity = Vector2()	# The player's movement vector
#signal win_game
#signal lost_game

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
#	set_contact_monitor(true)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
#	elif Input.is_action_pressed("ui_up"):
#		velocity.y -= 1
#	elif Input.is_action_pressed("ui_down"):
#		velocity.y += 1
	else:
		velocity.x = 0
#		velocity.y = 0
#	velocity.y = 9.8
	velocity = velocity.normalized() * speed
	position += velocity * delta
	position.x = clamp(position.x, magic_offset, screen_size.x - magic_offset)
	position.y = clamp(position.y, 0, screen_size.y)


func _on_trunks_stopped():
	velocity.y = 9.8


func _on_Player_body_entered(body):
	print(body.get_name())
#	hide()  # Player disappears after being hit.
#	emit_signal("lost_game")
#	$CollisionShape2D.set_deferred("disabled", true)
	pass
