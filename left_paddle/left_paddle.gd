extends CharacterBody2D

@export var speed : int = 400

func _ready() -> void:
	pass

func _process(_delta):
	var direction : int = 0
	if Input.is_action_pressed("move_down"):
		direction += 1
	if Input.is_action_pressed("move_up"):
		direction -= 1
		
	velocity.y = direction * speed
	move_and_slide()
