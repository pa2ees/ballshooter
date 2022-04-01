extends Sprite

var bulletObj = null
var bullet_start_offset = Vector2(35, 0)
const bullet_velocity_magnitude = 5

func _physics_process(delta):
	self.look_at(get_global_mouse_position())
	#self.rotation_degrees = rad2deg(get_angle_to(get_global_mouse_position())) + 90


# Called when the node enters the scene tree for the first time.
func _ready():
	bulletObj = load("res://Bullet.tscn")

func _input(event):
	if event.is_action_pressed("LMB"):
		var bullet = bulletObj.instance()
		var bullet_start_loc = self.global_position + (bullet_start_offset.rotated(self.rotation))
		var bullet_velocity = (get_global_mouse_position() - self.global_transform.origin).normalized() * bullet_velocity_magnitude
		bullet.init(bullet_velocity, self.rotation_degrees, bullet_start_loc)
		var playScene = get_node("/root/PlayScene")
		playScene.add_child(bullet)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
