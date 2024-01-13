extends CharacterBody2D

@export var jump_force: float
@export var move_speed: float
@export var gravity: float

func _physics_process(delta):
	velocity.y += gravity
	
	var dir = btn.d("forward") - btn.d("backward")
	velocity.x = dir * move_speed
	
	if btn.p("jump") and is_on_floor():
		velocity.y = -jump_force
	
	move_and_slide()
