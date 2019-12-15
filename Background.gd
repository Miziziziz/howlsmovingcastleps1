extends Sprite3D

export var move_speed = 0.2

func _physics_process(delta):
	global_transform.origin.z -= move_speed * delta