extends CharacterBody2D

@export var speed : int = 5

func _ready() -> void:
	pass

func _physics_process(_delta):
	pass
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	position = velocity * speed
	position.x += 60
