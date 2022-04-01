extends KinematicBody2D


# Declare member variables here. Examples:
var vel = Vector2()
var pos = Vector2()
# var b = "text"


func _physics_process(delta):
	move_and_collide(vel)
	

func init(velocity, angle, start_pos=Vector2()):
	rotation_degrees = angle
	vel = velocity
	position = start_pos
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# delete self when it leaves viewport
func _on_VisibilityNotifier2D_viewport_exited(viewport):
	queue_free()
