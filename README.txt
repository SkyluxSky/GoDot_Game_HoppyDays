Nodes For 2D Player Characters:
-Under PhysicsBody Node

1) KinematicBody2D (Player Characters)
	-Meant to be controlled by the player

	-Not affected by 2D physics engine

	-Can be moved directly with a control (You do not have to move it with external force.)

	-KinematicBody2D's need collision shapes.

	-move_and_collide() 
		- When you hit something stop
		-Can get collision information on whatever it hits.
		-Doesnt automatically use delta.

	-move_and_slide()
		-When you hit something, try and move along it.
		-Can detect floors, walls, and ceilings.
		-Automatically use delta when moving. 

2) RidgedBody2D (Objects)
	-Controlled by the 2D physics engine

	-Built in behaviors for things like gravity and friction

	-Not controlled directly - Forces are applied to it. Great for objects
	that are moved by something else, not great for player control.

3) StaticBody2D (Platforms and Walls)
	-Not Designed To Move

	-Great for walls, floors, platforms, etc...

	-Can have simple velocity applied to it (like a conveyor belt effect.) 

----------------------------------------------------------------------------------------------

A Scene - Can be any self contained selection of assets.

Film clacker: Classifies instance scene.

Godot Note: Positive numbers = Gravity Up or down && Negative numbers = less Gravity or up.