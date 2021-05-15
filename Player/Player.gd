extends KinematicBody2D


#Goal: Run Code Every Frame

#delta = the time in seconds between frames.
#If you multiply a value by delta, it will ignore framerate fluctuation. 
#If game is lagging - Character will mover at the same speed.

#A Vector2 is a variable that has two positions (x,y)
var motion = Vector2(0,0)

#default character speed
const SPEED = 1000

func _physics_process(delta):
	#Method for making forcing only one button to be pressed at a time.
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0
	move_and_slide(motion)
	#print(delta)
