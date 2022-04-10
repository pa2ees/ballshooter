extends CanvasLayer

var scene : String
onready var animationPlayer = $SceneChangeAnimator

func change_scene(new_scene, animation):
	scene = new_scene
	animationPlayer.play(animation)
	
func _change_scene():
	get_tree().change_scene(scene)


# Called when the node enters the scene tree for the first time.
func _ready():
	# set the BlackScreen initially to transparent
	$FadeSceneChanger/BlackScreen.color = Color(0,0,0,0)

