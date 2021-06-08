extends StaticBody2D

export(float, 0, 50)var speed = 10

func _physics_process(delta):
	position -= transform.y*speed

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
