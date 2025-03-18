extends Node3D

var esc_held_time = 0.0
const HOLD_DURATION = 2.0 
const MENU_SCENE = "res://assets/scenes/menu.tscn"  

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		esc_held_time += delta
		if esc_held_time >= HOLD_DURATION:
			get_tree().change_scene_to_file("res://assets/scenes/menu.tscn")  # Переход в меню
	else:
		esc_held_time = 0.0  # Сброс таймера, если клавиша отпущена
