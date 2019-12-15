extends Spatial

export var start_walk = true


func _ready():
	if start_walk:
		$"Scene Root/AnimationPlayer".play("walk_loop")
	else:
		$"Scene Root/AnimationPlayer".play("run_loop")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
