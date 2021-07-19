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

----------------------------------------------------------------------------------------------

Creating tile Maps:
-Create new scene (+) arrow
--Create new 2DNode (Rename if desired)

Our goal is to create a static body with some sort of collision,
We will take individual sprites and put them into a tile map.

Creating Collisions For TileMap:
1-Drag and drop all .png images into a new scene
2-Create a child node of StaticBody2D on Actor(Tile You Want)
3-Create a childe nodef or StaticBody2D called CollisionPolygon2D
4-Configure grid and click on tiles to create collision boxes using point tool
4.5- When copying and pasting collision boxes to other tiles of similar shapes,
remember to reset the collision boxes transformation under Node2D.
(The location of the parent object is at point (0,0) for all seperate actors aka. Tiles.) 
5.Once tiles are created Save as TileMapName.tres
6.In level create TileMap Node as a child of 2DNode
7.Place Tiles (Have Fun!)

-----------------------------------------------------------------------------------------------
Camera2D:
-Allows us to create a camera that follows the player character.
-Settings of interest include(Current - follows player, Zoom - Camera Zoom, Drag Margin - Camera 
Scroll Delay, and Smoothing - Feature that allows for more accurate following of player).


------------------------------------------------------------------------------------------------
Collision Layers:
-Found in project settings and in 2D objects like Players and TileMaps.
-Collision Layers: What Layers we Exist On
-Can be used as a tagging system
-What you can interact with
-Inherited Properties
