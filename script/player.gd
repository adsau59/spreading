extends CharacterBody2D
class_name Player

signal healthChanged

@export var jump_force: float
@export var move_speed: float
@export var gravity: float

@export var playerMaxHealth = 100
@onready var playerCurrentHealth: int = playerMaxHealth

func _ready():
	healthChanged.emit()

func _physics_process(delta):
	velocity.y += gravity
	
	var dir = btn.d("forward") - btn.d("backward")
	velocity.x = dir * move_speed
	
	if btn.p("jump") and is_on_floor():
		velocity.y = -jump_force
	
	move_and_slide()

func hurtByEnemy():
	playerCurrentHealth -= 10
	if playerCurrentHealth <= 0:
		playerCurrentHealth = playerMaxHealth
	healthChanged.emit()
