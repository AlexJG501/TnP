extends CharacterBody2D
@onready var animated_sprite = $AnimatedSprite2D

@export var speed = 100  # speed in pixels/sec

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	
	if Input.is_action_just_released("down"):
		animated_sprite.play("Idle_D")
	elif Input.is_action_just_released("left"):
		animated_sprite.play("Idle_L")
	elif Input.is_action_just_released("right"):
		animated_sprite.play("Idle_R")
	elif Input.is_action_just_released("up"):
		animated_sprite.play("Idle_U")
	
	if Input.is_action_pressed("down"):
		animated_sprite.play("Walk_D")
	elif Input.is_action_pressed("left"):
		animated_sprite.play("Walk_L")
	elif Input.is_action_pressed("right"):
		animated_sprite.play("Walk_R")
	elif Input.is_action_pressed("up"):
		animated_sprite.play("Walk_U")

	move_and_slide()
