extends KinematicBody2D # The cat is a kinematic body

# Adjustable variables of the cat
# export is used to allow to edit the values outside the script
export var speed = 500 # speed of the cat
export var gravity = 50 # gravity of the cat
export var jumpforce = 1000 # jump force of the cat
var motion = Vector2.ZERO 
onready var animation = $AnimatedSprite #allow animations form AnimatedSprite to be used
var respawnpoint #level starting point 

func _ready():
	respawnpoint = global_position
	
func _physics_process(delta): 
	
	#Cat movement
	if is_on_floor(): # If the ground checker is colliding with the ground, meaning cat is on the floor
		motion.x = speed # then the x coordinates of the vector be positive
		animation.play("run") # run animation plays
		if Input.is_action_pressed("jump"): # player hits the spacebar
			motion.x = speed # the x coordinates always positive in air
			motion.y = -jumpforce # then jump by jumpforce
			animation.stop()
			animation.play("jump") # jump animation
			
	motion.y += gravity + delta # Always make the cat fall down again
	# Move and slide is a function which allows the kinematic body to detect collisions and move accordingly
	motion = move_and_slide(motion, Vector2.UP)

	#Point of cat respawn when dead
func respawn():
	global_position = respawnpoint
	
