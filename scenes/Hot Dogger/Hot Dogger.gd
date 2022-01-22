extends Area2D

onready var flames = $Flames

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var speed = 200

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		$Flames.visible = true
	if Input.is_action_just_released("fire"):
		$Flames.visible = false
	if Input.is_action_pressed("up"):
		global_position.y -= speed * delta
	if Input.is_action_pressed("down"):
		global_position.y += speed * delta
	if Input.is_action_pressed("left"):
		global_position.x -= speed * delta
	if Input.is_action_pressed("right"):
		global_position.x += speed * delta
	global_position.y = clamp(global_position.y, 0, 530)
	global_position.x = clamp(global_position.x, 0, 970)
