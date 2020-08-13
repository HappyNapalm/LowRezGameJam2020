extends Node
export (PackedScene) var test

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# Choose a random location on Path2D.
	$MobPath/MobSpawnLocation.offset = 64
	# Create a Mob instance and add it to the scene.
	var mob = test.instance()
	add_child(mob)
	# Set the mob's direction perpendicular to the path direction.
	var direction = $MobPath/MobSpawnLocation.rotation + PI / 2
	# Set the mob's position to a random location.
	mob.position = $MobPath/MobSpawnLocation.position
	# Add some randomness to the direction.
	direction += rand_range(-PI / 4, PI / 4)
	mob.rotation = direction
	# Set the velocity (speed & direction).
	mob.linear_velocity = mob.min_speed
	mob.linear_velocity = mob.linear_velocity.rotated(direction)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
