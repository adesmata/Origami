@tool
extends HBoxContainer

@onready var arrow: Label = %Arrow
@onready var button: Button = %Button

@export var text: String:
	set(v):
		if button:
			button.text = v
	get:
		return button.text if button else ""

@export var fade_duration: float = 0.5 

func _ready() -> void:
	button.mouse_entered.connect(_on_button_mouse_entered)
	button.mouse_exited.connect(_on_button_mouse_exited)
	
	arrow.modulate.a = 0.0
	arrow.text = ">"  
	arrow.custom_minimum_size.x = arrow.size.x  

func _on_button_mouse_entered() -> void:
	arrow_modulate_fade(1.0)

func _on_button_mouse_exited() -> void:
	arrow_modulate_fade(0.0)

func arrow_modulate_fade(target_alpha: float) -> void:
	var tween = create_tween()
	tween.tween_property(arrow, "modulate:a", target_alpha, fade_duration)
