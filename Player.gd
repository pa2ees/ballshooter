extends KinematicBody2D

#var pointAngle = 0.0
#var bulletObj = null

#onready var body = get_node("Body")
#onready var gun = get_node("Gun")

#
#func _physics_process(delta):
#	gun.rotation_degrees = rad2deg(get_angle_to(get_global_mouse_position())) + 90

func _input(event):
#	if event.is_action_pressed("LMB"):
#		var bullet = bulletObj.instance()
#		bullet.init((get_global_mouse_position() - self.position).normalized() * 2, gun.rotation_degrees, self.position)
#		var playScene = get_node("/root/PlayScene")
#		playScene.add_child(bullet)
	pass
		
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	bulletObj = load("res://Bullet.tscn")
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
