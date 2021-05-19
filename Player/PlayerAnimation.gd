extends AnimatedSprite

"""Example of encapsulation of animation for player"""

#new custom signal created via node tab
func _on_Player_animate(motion):
	
	if motion.y < 0:
		play("jump")
		
	elif motion.x > 0:
		play("walk")
		flip_h = false#Face Right
		
	elif motion.x < 0:
		play("walk")
		flip_h = true#Face Left
		
	else:
		play("idle")
