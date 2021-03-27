extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

func _ready():
	print("Timer started.")
	yield(get_tree().create_timer(30.0), "timeout")
	print("Timer ended.")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
