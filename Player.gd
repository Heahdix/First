extends KinematicBody2D

var speed = 10
var jump_force = 100
var gravity = 500

var vel = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("player.left"):
		vel.x -= speed
	elif Input.is_action_pressed("player_right"):
		vel.x += speed
	move_and_slide(vel, Vector2.UP)
