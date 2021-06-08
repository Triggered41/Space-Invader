extends Node2D

export(PackedScene) var projectile:PackedScene 

func _physics_process(delta):
	if Input.is_action_just_released("ui_select"):
		var proj = projectile.instance() as StaticBody2D
		get_tree().root.add_child(proj)
		proj.global_position = global_position

