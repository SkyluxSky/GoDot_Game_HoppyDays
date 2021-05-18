extends KinematicBody2D


#Goal: Run Code Every Frame

#delta = the time in seconds between frames.
#If you multiply a value by delta, it will ignore framerate fluctuation. 
#If game is lagging - Character will mover at the same speed.

#A Vector2 is a variable that has two positions (x,y)
var motion = Vector2(0,0)

#default character speed
const SPEED = 1500
#default GRAVITY
const GRAVITY = 300
#Defines up direction
const UP = Vector2(0,-1)
const JUMP_SPEED = 5000

#Function for player movement.
func _physics_process(delta):
	
	#Apply Gravity
	apply_gravity()
	jump()
	move()
	animate()
	move_and_slide(motion, UP)
	#print(delta)

func apply_gravity():
	if not is_on_floor():
		motion.y += GRAVITY
	else:
		motion.y = 0
		
func jump():
	#Define Jumping
	if Input.is_action_pressed("Jump") and is_on_floor():
		motion.y -= JUMP_SPEED
	
	
func move():
		#Method for making forcing only one button to be pressed at a time.
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else:
		motion.x = 0
		

#animate character
func animate():
	if motion.y < 0:
		$AnimatedSprite.play("jump")
		
	elif motion.x > 0:
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false#Face Right
		
	elif motion.x < 0:
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true#Face Left
		
	else:
		$AnimatedSprite.play("idle")
