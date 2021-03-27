extends KinematicBody2D

var moveSpeed : int = 400 
var interactDist : int = 10 #Distance (pixels) to be able to interact with items
var velocity : Vector2 = Vector2() # "Speed" of the player
var facingDirection : Vector2 = Vector2() # direction player is facing, even while not moving

onready var rayCast = get_node("RayCast2D") # ray cast object of the Player

func _physics_process(delta): #gets called 60 times a second. Delta is the duration between count
	velocity = Vector2()
	
	#inputs
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		facingDirection = Vector2(0, -1)

	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		facingDirection = Vector2(0, 1)
		
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		facingDirection = Vector2(-1, 0)
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		facingDirection = Vector2(1, 0)
		
	# Moves the player
	move_and_slide(velocity * moveSpeed)
