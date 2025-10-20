extends CharacterBody2D

var speed = 300

func get_dir():
	var dir = Vector2.ZERO
	if Input.is_action_pressed("ui_accept"):
		dir.x -= 10
		velocity = dir * speed

func _physics_process(delta):
	get_dir()
	move_and_collide(velocity * delta)
