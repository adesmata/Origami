@tool
extends HBoxContainer
@export var text :String:
	set(v):
		button.text=v
	get:
		return button.text
@onready var arrow: Label = %Arrow
@onready var button: Button = %Button
func _process(_delta: float) -> void:
	if button.has_focus():
		arrow .text=">" 
	else:arrow.text=" "
