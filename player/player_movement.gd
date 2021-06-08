extends KinematicBody2D

var velocity = Vector2.ZERO

export(float, 200, 400) var speed = 300
export(float, 0, 1) var smoothing = 0.25

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	inputs(delta)
	velocity = move_and_slide(velocity)

func inputs(delta):
	var bounds = get_tree().root.size
	
	var xmove = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var ymove = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	velocity = lerp(velocity, Vector2(xmove, ymove)*speed, smoothing)
	
	position.x = clamp(position.x, 0, bounds.x)
	position.y = clamp(position.y, 0, bounds.y)
