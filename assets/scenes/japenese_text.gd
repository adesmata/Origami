extends TextureRect

@export var float_speed: float = 1.0
@export var float_amplitude: float = 10.0
@export var rotate_speed: float = 0.3
@export var rotate_amplitude: float = 0.5

var base_position: Vector2
var time_passed: float = 0.0

func _ready():
	base_position = position

func _process(delta):
	time_passed += delta

	position.y = base_position.y + sin(time_passed * float_speed) * float_amplitude

	rotation_degrees = sin(time_passed * rotate_speed) * rotate_amplitude
