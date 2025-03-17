@tool
extends HBoxContainer

@onready var arrow: Label = %Arrow
@onready var button: Button = %Button

@export var text : String:
	set(v):
		if button:
			button.text = v
	get:
		return button.text if button else ""
		
func _process(_delta: float) -> void:
	if button.has_focus():
		arrow.text = ">" 
	else:
		arrow.text = " "
